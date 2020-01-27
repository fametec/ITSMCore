# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# --
# $origin: otrs - 109951608f444dd90bfe4956ad63c49112a4d0d6 - scripts/test/Selenium/Output/Preferences/Agent/CustomService.t
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

use strict;
use warnings;
use utf8;

use vars (qw($Self));

# get selenium object
my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        # get helper object
        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        # enable the services
        $Helper->ConfigSettingChange(
            Valid => 1,
            Key   => 'Ticket::Service',
            Value => '1',
        );

        # don't keep children services
        $Helper->ConfigSettingChange(
            Valid => 1,
            Key   => 'Ticket::Service::KeepChildren',
            Value => '0',
        );

        # create test user and login
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => [ 'admin', 'users' ],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        # get test user ID
        my $TestUserID = $Kernel::OM->Get('Kernel::System::User')->UserLookup(
            UserLogin => $TestUserLogin,
        );

        # get service object
        my $ServiceObject = $Kernel::OM->Get('Kernel::System::Service');

        # create two test services
        my @ServiceIDs;
        my @ServiceNames;
        for my $Service (qw(Parent Child)) {
            my $ServiceName = $Service . 'Service' . $Helper->GetRandomID();
            my $ServiceID   = $ServiceObject->ServiceAdd(
                Name    => $ServiceName,
                ValidID => 2,                 # invalid
                Comment => 'Selenium Test',
# ---
# ITSMCore
# ---
                TypeID      => 1,
                Criticality => '3 normal',
# ---
                UserID  => 1,
            );
            $Self->True(
                $ServiceID,
                "Service ID $ServiceID is created",
            );
            push @ServiceIDs,   $ServiceID;
            push @ServiceNames, $ServiceName;
        }

        # update second service to be child of first one and enable it
        my $Success = $ServiceObject->ServiceUpdate(
            ServiceID => $ServiceIDs[1],
            Name      => $ServiceNames[1],
            ParentID  => $ServiceIDs[0],
            ValidID   => 1,
# ---
# ITSMCore
# ---
            TypeID      => 1,
            Criticality => '3 normal',
# ---
            UserID    => 1,
        );
        $Self->True(
            $Success,
            "Service ID $ServiceIDs[1] is now child service"
        );

        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');

        # go to agent preferences
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentPreferences");

        # verify child service is not shown
        $Self->Is(
            $Selenium->execute_script(
                "return \$('#ServiceID option[value=\"$ServiceIDs[1]\"]').length;"
            ),
            0,
            'Child service is not shown',
        );

        # turn on keep children setting
        $Helper->ConfigSettingChange(
            Valid => 1,
            Key   => 'Ticket::Service::KeepChildren',
            Value => '1',
        );

        # refresh the page
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentPreferences");

        # verify child service is shown (bug#11816)
        $Self->Is(
            $Selenium->execute_script(
                "return \$('#ServiceID option[value=\"$ServiceIDs[1]\"]').length;"
            ),
            1,
            'Child service is shown',
        );

        # add child service to 'My Services' preference
        $Selenium->InputFieldValueSet(
            Element => '#ServiceID',
            Value   => $ServiceIDs[1],
        );
        $Selenium->find_element( "#ServiceIDUpdate", 'css' )->VerifiedClick();

        # check for update preference message on screen
        my $UpdateMessage = "Preferences updated successfully!";
        $Self->True(
            index( $Selenium->get_page_source(), $UpdateMessage ) > -1,
            'Agent preference custom service - updated'
        );

        # get DB object
        my $DBObject = $Kernel::OM->Get('Kernel::System::DB');

        # delete personal services connection
        $Success = $DBObject->Do(
            SQL => "DELETE FROM personal_services WHERE service_id = $ServiceIDs[1]",
        );
        $Self->True(
            $Success,
            "Delete personal service connection",
        );

        # delete created test services
        for my $Index ( 0 .. 1 ) {
            $Success = $DBObject->Do(
                SQL => "DELETE FROM service WHERE id = $ServiceIDs[$Index]",
            );
            $Self->True(
                $Success,
                "Delete service - $ServiceIDs[$Index]",
            );
        }

        # make sure the cache is correct
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp(
            Type => 'Service',
        );
    },
);

1;
