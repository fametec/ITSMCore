// --
// Copyright (C) 2001-2019 OTRS AG, https://otrs.com/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (GPL). If you
// did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
// --

"use strict";

var ITSM = ITSM || {};
ITSM.Agent = ITSM.Agent || {};

/**
 * @namespace
 * @exports TargetNS as Core.ITSM.TicketZoom
 * @description
 *      This namespace contains the special module functions for ITSM.
 */
ITSM.Agent.Zoom = (function (TargetNS) {

    /**
     * @function
     * @return nothing
     *      This function initializes the special module functions
     */
    TargetNS.Init = function (ITSMTableHeight) {

        Core.UI.Resizable.Init($('#ITSMTableBody'), ITSMTableHeight, function (event, ui, Height, Width) {

            // remember new height for next reload
            window.clearTimeout(TargetNS.ResizeTimeOutScroller);
            TargetNS.ResizeTimeOutScroller = window.setTimeout(function () {
                Core.Agent.PreferencesUpdate('UserConfigItemZoomTableHeight', Height);
            }, 1000);
        });
    };

    return TargetNS;
}(ITSM.Agent.Zoom || {}));
