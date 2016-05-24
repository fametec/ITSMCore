# --
# Copyright (C) 2001-2016 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::zh_CN_ITSMCore;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAITSMCore
    $Self->{Translation}->{'Alternative to'} = '替代';
    $Self->{Translation}->{'Availability'} = '可用性';
    $Self->{Translation}->{'Back End'} = '后端';
    $Self->{Translation}->{'Connected to'} = '连接到';
    $Self->{Translation}->{'Current State'} = '当前状态';
    $Self->{Translation}->{'Demonstration'} = '演示';
    $Self->{Translation}->{'Depends on'} = '依赖';
    $Self->{Translation}->{'End User Service'} = '最终用户服务';
    $Self->{Translation}->{'Errors'} = '错误';
    $Self->{Translation}->{'Front End'} = '前端';
    $Self->{Translation}->{'IT Management'} = 'IT管理';
    $Self->{Translation}->{'IT Operational'} = 'IT运营';
    $Self->{Translation}->{'Impact'} = '影响';
    $Self->{Translation}->{'Incident State'} = '故障状态';
    $Self->{Translation}->{'Includes'} = '包括';
    $Self->{Translation}->{'Other'} = '其它';
    $Self->{Translation}->{'Part of'} = '属于';
    $Self->{Translation}->{'Project'} = '项目';
    $Self->{Translation}->{'Recovery Time'} = '恢复时间';
    $Self->{Translation}->{'Relevant to'} = '关联';
    $Self->{Translation}->{'Reporting'} = '报告';
    $Self->{Translation}->{'Required for'} = '被...需要';
    $Self->{Translation}->{'Resolution Rate'} = '解决率';
    $Self->{Translation}->{'Response Time'} = '响应时间';
    $Self->{Translation}->{'SLA Overview'} = 'SLA概览';
    $Self->{Translation}->{'Service Overview'} = '服务概览';
    $Self->{Translation}->{'Service-Area'} = '服务区';
    $Self->{Translation}->{'Training'} = '培训';
    $Self->{Translation}->{'Transactions'} = '交易';
    $Self->{Translation}->{'Underpinning Contract'} = '支持合同';
    $Self->{Translation}->{'allocation'} = '分配';

    # Template: AdminITSMCIPAllocate
    $Self->{Translation}->{'Criticality <-> Impact <-> Priority'} = '紧急度 <-> 影响 <-> 优先级';
    $Self->{Translation}->{'Manage the priority result of combinating Criticality <-> Impact.'} =
        '"紧急度 <-> 影响"之间的组合决定优先级';
    $Self->{Translation}->{'Priority allocation'} = '优先级分配';

    # Template: AdminSLA
    $Self->{Translation}->{'Minimum Time Between Incidents'} = '故障间最短时间';

    # Template: AdminService
    $Self->{Translation}->{'Criticality'} = '紧急度';

    # Template: AgentITSMSLAZoom
    $Self->{Translation}->{'SLA Information'} = 'SLA信息';
    $Self->{Translation}->{'Last changed'} = '上次修改于';
    $Self->{Translation}->{'Last changed by'} = '上次修改人';
    $Self->{Translation}->{'Associated Services'} = '关联的服务';

    # Template: AgentITSMServiceZoom
    $Self->{Translation}->{'Service Information'} = '服务信息';
    $Self->{Translation}->{'Current incident state'} = '当前故障状态';
    $Self->{Translation}->{'Associated SLAs'} = '关联的SLA';

    # Perl Module: Kernel/Modules/AgentITSMServicePrint.pm
    $Self->{Translation}->{'Current Incident State'} = '当前故障状态';

}

1;
