ALTER TABLE `zt_action` ADD INDEX `action` (`objectID`, `product`, `project`, `action`, `date`);
ALTER TABLE `zt_branch` ADD INDEX `product` (`product`);
ALTER TABLE `zt_bug` ADD INDEX `bug` (`product`,`module`,`project`,`assignedTo`);
ALTER TABLE `zt_build` ADD INDEX `build` (`product`, `project`);
ALTER TABLE `zt_case` ADD INDEX `case` (`product`, `module`, `story`);
ALTER TABLE `zt_cron` ADD INDEX `lastTime` (`lastTime`);
ALTER TABLE `zt_dept` ADD INDEX `dept` (`parent`, `path`);
ALTER TABLE `zt_doc` ADD INDEX `doc` (`product`, `project`);
ALTER TABLE `zt_extension` ADD INDEX `extension` (`name`, `installedTime`), DROP INDEX `name`, DROP INDEX `addedTime`;
ALTER TABLE `zt_file` ADD INDEX `file` (`objectType`, `objectID`), DROP INDEX `objectType`, DROP INDEX `objectID`;
ALTER TABLE `zt_mailqueue` ADD INDEX `sendTime` (`sendTime`);
ALTER TABLE `zt_module` ADD INDEX `module` (`root`, `type`, `path`), DROP INDEX `root`, DROP INDEX `type`;
ALTER TABLE `zt_product` ADD INDEX `order` (`order`); 
ALTER TABLE `zt_productplan` ADD INDEX `plan` (`product`, `end`);
ALTER TABLE `zt_project` ADD INDEX `project` (`parent`, `begin`, `end`, `status`, `order`), DROP INDEX `project`;
ALTER TABLE `zt_release` ADD INDEX `build` (`build`);
ALTER TABLE `zt_story` ADD INDEX `story` (`product`, `module`, `status`, `assignedTo`), DROP INDEX `status`, DROP INDEX `product`;
ALTER TABLE `zt_storystage` ADD INDEX `story` (`story`);
ALTER TABLE `zt_task` ADD INDEX `task` (`project`, `module`, `story`, `assignedTo`), DROP INDEX `project`, DROP INDEX `type`, DROP INDEX `status`;
ALTER TABLE `zt_testresult` ADD INDEX `testresult` (`case`, `version`, `run`), DROP INDEX `run`, DROP INDEX `case`;
ALTER TABLE `zt_testtask` ADD INDEX `build` (`build`);
ALTER TABLE `zt_todo` ADD INDEX `todo` (`account`, `date`), DROP INDEX `user`;
ALTER TABLE `zt_user` ADD INDEX `user` (`dept`, `email`, `commiter`), DROP INDEX `dept`;
ALTER TABLE `zt_usercontact` ADD INDEX `account` (`account`);
ALTER TABLE `zt_userquery` ADD INDEX `query` (`account`, `module`), DROP INDEX `account`, DROP INDEX `module`;
ALTER TABLE `zt_testtask` ADD `mailto` varchar(255) COLLATE 'utf8_general_ci' NOT NULL DEFAULT '' AFTER `end`;
