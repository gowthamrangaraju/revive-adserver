<?php

/*
+---------------------------------------------------------------------------+
| Revive Adserver                                                           |
| http://www.revive-adserver.com                                            |
|                                                                           |
| Copyright: See the COPYRIGHT.txt file.                                    |
| License: GPLv2 or later, see the LICENSE.txt file.                        |
+---------------------------------------------------------------------------+
*/

require_once 'testPlugin-common.php';

phpAds_PageHeader("test-plugin-0", '', '../../');

$oTpl = new OA_Plugin_Template('testPlugin.html', 'testPlugin');

$message = 'Test Plugin';
$oTpl->assign('message', $message);
$oTpl->display();

$dispatcher = OA_Admin_Plugins_EventDispatcher::singleton();
$context = new OA_Admin_Plugins_EventContext();
$context->pageId = 'test-plugin-0';
$context->templates = [];

$templates = $dispatcher->onAfterContent($context);

//process results
foreach ($templates as $oPluginTemplate) {
    if (is_a($oPluginTemplate, 'Smarty')) {
        $oPluginTemplate->display();
    }
}

phpAds_PageFooter();
