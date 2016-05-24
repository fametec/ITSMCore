# --
# Copyright (C) 2001-2016 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::ms_ITSMCore;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAITSMCore
    $Self->{Translation}->{'Alternative to'} = 'Alternatif kepada';
    $Self->{Translation}->{'Availability'} = 'Verfügbarkeit';
    $Self->{Translation}->{'Back End'} = 'Backend';
    $Self->{Translation}->{'Connected to'} = 'Dihungkan kepada';
    $Self->{Translation}->{'Current State'} = 'Status sedia ada';
    $Self->{Translation}->{'Demonstration'} = 'Demostrasi';
    $Self->{Translation}->{'Depends on'} = 'Bergantung kepada';
    $Self->{Translation}->{'End User Service'} = 'Pengguna Akhir Servis';
    $Self->{Translation}->{'Errors'} = 'Kesilapan';
    $Self->{Translation}->{'Front End'} = 'Frontend';
    $Self->{Translation}->{'IT Management'} = 'Pengurusan IT';
    $Self->{Translation}->{'IT Operational'} = 'Operasi IT';
    $Self->{Translation}->{'Impact'} = 'Kesan';
    $Self->{Translation}->{'Incident State'} = 'insiden keadaan';
    $Self->{Translation}->{'Includes'} = 'Termasuk';
    $Self->{Translation}->{'Other'} = 'Selain';
    $Self->{Translation}->{'Part of'} = 'Sebahagian daripada';
    $Self->{Translation}->{'Project'} = 'Projek';
    $Self->{Translation}->{'Recovery Time'} = 'Masa Sembuhan';
    $Self->{Translation}->{'Relevant to'} = 'Berkaitan kepada';
    $Self->{Translation}->{'Reporting'} = 'Melaporkan';
    $Self->{Translation}->{'Required for'} = 'Diperlukan untuk';
    $Self->{Translation}->{'Resolution Rate'} = 'kadar Resolusi';
    $Self->{Translation}->{'Response Time'} = 'Masa Tindak balas';
    $Self->{Translation}->{'SLA Overview'} = 'Lihat semula SLA';
    $Self->{Translation}->{'Service Overview'} = 'Lihat semula servis';
    $Self->{Translation}->{'Service-Area'} = 'Kawasan-Servis';
    $Self->{Translation}->{'Training'} = 'Latihan';
    $Self->{Translation}->{'Transactions'} = 'Transaksi';
    $Self->{Translation}->{'Underpinning Contract'} = 'Underpinning Contract';
    $Self->{Translation}->{'allocation'} = 'Menempatkan semula';

    # Template: AdminITSMCIPAllocate
    $Self->{Translation}->{'Criticality <-> Impact <-> Priority'} = 'Kritikal <-> Kesan <-> Keutamaan';
    $Self->{Translation}->{'Manage the priority result of combinating Criticality <-> Impact.'} =
        'Menguruskan hasil keutamaan kritikal gabungan <-> Kesan.';
    $Self->{Translation}->{'Priority allocation'} = 'Berikan keutamaan';

    # Template: AdminSLA
    $Self->{Translation}->{'Minimum Time Between Incidents'} = 'Masa minima antara incident';

    # Template: AdminService
    $Self->{Translation}->{'Criticality'} = 'Kritikal';

    # Template: AgentITSMSLAZoom
    $Self->{Translation}->{'SLA Information'} = 'SLA-Informasi';
    $Self->{Translation}->{'Last changed'} = 'Kali terakhir diubah';
    $Self->{Translation}->{'Last changed by'} = 'Kali terakhir diubah semasa';
    $Self->{Translation}->{'Associated Services'} = 'Perkhidmatan Bersekutu';

    # Template: AgentITSMServiceZoom
    $Self->{Translation}->{'Service Information'} = 'Informasi Servis';
    $Self->{Translation}->{'Current incident state'} = 'Kejadian keadaan semasa';
    $Self->{Translation}->{'Associated SLAs'} = 'SLA Bersekutu';

    # Perl Module: Kernel/Modules/AgentITSMServicePrint.pm
    $Self->{Translation}->{'Current Incident State'} = 'Insiden status semasa';

    # SysConfig
    $Self->{Translation}->{'Frontend module registration for the AdminITSMCIPAllocate configuration in the admin area.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the AgentITSMSLA object in the agent interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the AgentITSMSLAPrint object in the agent interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the AgentITSMSLAZoom object in the agent interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the AgentITSMService object in the agent interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the AgentITSMServicePrint object in the agent interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the AgentITSMServiceZoom object in the agent interface.'} =
        '';
    $Self->{Translation}->{'Manage priority matrix.'} = '';
    $Self->{Translation}->{'Module to show back link in service menu.'} = '';
    $Self->{Translation}->{'Module to show back link in sla menu.'} = '';
    $Self->{Translation}->{'Module to show print link in service menu.'} = '';
    $Self->{Translation}->{'Module to show print link in sla menu.'} = '';
    $Self->{Translation}->{'Module to show the link link in service menu.'} = '';
    $Self->{Translation}->{'Parameters for the incident states in the preference view.'} = '';
    $Self->{Translation}->{'Set the type and direction of links to be used to calculate the incident state. The key is the name of the link type (as defined in LinkObject::Type), and the value is the direction of the IncidentLinkType that should be followed to calculate the incident state. For example if the IncidentLinkType is set to \'DependsOn\', and the Direction is \'Source\', only \'Depends on\' links will be followed (and not the opposite link \'Required for\') to calculate the incident state. You can add more link types ad directions as you like, e.g. \'Includes\' with the direction \'Target\'. All link types defined in the sysconfig options LinkObject::Type are possible and the direction can be \'Source\', \'Target\', or \'Both\'. IMPORTANT: AFTER YOU MAKE CHANGES TO THIS SYSCONFIG OPTION YOU NEED TO RUN THE SCRIPT bin/otrs.ITSMConfigItemIncidentStateRecalculate.pl SO THAT ALL INCIDENT STATES WILL BE RECALCULATED BASED ON THE NEW SETTINGS!'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMChange\' object can be linked with \'Ticket\' objects using the \'Normal\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'FAQ\' objects using the \'Normal\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'FAQ\' objects using the \'ParentChild\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'FAQ\' objects using the \'RelevantTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'Service\' objects using the \'AlternativeTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'Service\' objects using the \'DependsOn\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'Service\' objects using the \'RelevantTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'Ticket\' objects using the \'AlternativeTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'Ticket\' objects using the \'DependsOn\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with \'Ticket\' objects using the \'RelevantTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with other \'ITSMConfigItem\' objects using the \'AlternativeTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with other \'ITSMConfigItem\' objects using the \'ConnectedTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with other \'ITSMConfigItem\' objects using the \'DependsOn\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with other \'ITSMConfigItem\' objects using the \'Includes\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMConfigItem\' object can be linked with other \'ITSMConfigItem\' objects using the \'RelevantTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMWorkOrder\' object can be linked with \'ITSMConfigItem\' objects using the \'DependsOn\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMWorkOrder\' object can be linked with \'ITSMConfigItem\' objects using the \'Normal\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMWorkOrder\' object can be linked with \'Service\' objects using the \'DependsOn\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMWorkOrder\' object can be linked with \'Service\' objects using the \'Normal\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'ITSMWorkOrder\' object can be linked with \'Ticket\' objects using the \'Normal\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'Service\' object can be linked with \'FAQ\' objects using the \'Normal\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'Service\' object can be linked with \'FAQ\' objects using the \'ParentChild\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines that a \'Service\' object can be linked with \'FAQ\' objects using the \'RelevantTo\' link type.'} =
        '';
    $Self->{Translation}->{'This setting defines the link type \'AlternativeTo\'. If the source name and the target name contain the same value, the resulting link is a non-directional one. If the values are different, the resulting link is a directional link.'} =
        '';
    $Self->{Translation}->{'This setting defines the link type \'ConnectedTo\'. If the source name and the target name contain the same value, the resulting link is a non-directional one. If the values are different, the resulting link is a directional link.'} =
        '';
    $Self->{Translation}->{'This setting defines the link type \'DependsOn\'. If the source name and the target name contain the same value, the resulting link is a non-directional one. If the values are different, the resulting link is a directional link.'} =
        '';
    $Self->{Translation}->{'This setting defines the link type \'Includes\'. If the source name and the target name contain the same value, the resulting link is a non-directional one. If the values are different, the resulting link is a directional link.'} =
        '';
    $Self->{Translation}->{'This setting defines the link type \'RelevantTo\'. If the source name and the target name contain the same value, the resulting link is a non-directional one. If the values are different, the resulting link is a directional link.'} =
        '';
    $Self->{Translation}->{'Width of ITSM textareas.'} = '';

}

1;
