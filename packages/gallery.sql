-- MySQL dump 8.22
--
-- Host: localhost    Database: wy3
---------------------------------------------------------
-- Server version	3.23.54

--
-- Table structure for table 'ezapprove_items'
--

CREATE TABLE ezapprove_items (
  id int(11) NOT NULL auto_increment,
  workflow_process_id int(11) NOT NULL default '0',
  collaboration_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezapprove_items'
--



--
-- Table structure for table 'ezbasket'
--

CREATE TABLE ezbasket (
  id int(11) NOT NULL auto_increment,
  session_id varchar(255) NOT NULL default '',
  productcollection_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY ezbasket_session_id (session_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezbasket'
--



--
-- Table structure for table 'ezbinaryfile'
--

CREATE TABLE ezbinaryfile (
  contentobject_attribute_id int(11) NOT NULL default '0',
  version int(11) NOT NULL default '0',
  filename varchar(255) NOT NULL default '',
  original_filename varchar(255) NOT NULL default '',
  mime_type varchar(50) NOT NULL default '',
  PRIMARY KEY  (contentobject_attribute_id,version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezbinaryfile'
--



--
-- Table structure for table 'ezcollab_group'
--

CREATE TABLE ezcollab_group (
  id int(11) NOT NULL auto_increment,
  parent_group_id int(11) NOT NULL default '0',
  depth int(11) NOT NULL default '0',
  path_string varchar(255) NOT NULL default '',
  is_open int(11) NOT NULL default '1',
  user_id int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  priority int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY ezcollab_group_path (path_string),
  KEY ezcollab_group_depth (depth)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_group'
--



--
-- Table structure for table 'ezcollab_item'
--

CREATE TABLE ezcollab_item (
  id int(11) NOT NULL auto_increment,
  type_identifier varchar(40) NOT NULL default '',
  creator_id int(11) NOT NULL default '0',
  status int(11) NOT NULL default '1',
  data_text1 text NOT NULL,
  data_text2 text NOT NULL,
  data_text3 text NOT NULL,
  data_int1 int(11) NOT NULL default '0',
  data_int2 int(11) NOT NULL default '0',
  data_int3 int(11) NOT NULL default '0',
  data_float1 float NOT NULL default '0',
  data_float2 float NOT NULL default '0',
  data_float3 float NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_item'
--



--
-- Table structure for table 'ezcollab_item_group_link'
--

CREATE TABLE ezcollab_item_group_link (
  collaboration_id int(11) NOT NULL default '0',
  group_id int(11) NOT NULL default '0',
  user_id int(11) NOT NULL default '0',
  is_read int(11) NOT NULL default '0',
  is_active int(11) NOT NULL default '1',
  last_read int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (collaboration_id,group_id,user_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_item_group_link'
--



--
-- Table structure for table 'ezcollab_item_message_link'
--

CREATE TABLE ezcollab_item_message_link (
  id int(11) NOT NULL auto_increment,
  collaboration_id int(11) NOT NULL default '0',
  participant_id int(11) NOT NULL default '0',
  message_id int(11) NOT NULL default '0',
  message_type int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_item_message_link'
--



--
-- Table structure for table 'ezcollab_item_participant_link'
--

CREATE TABLE ezcollab_item_participant_link (
  collaboration_id int(11) NOT NULL default '0',
  participant_id int(11) NOT NULL default '0',
  participant_type int(11) NOT NULL default '1',
  participant_role int(11) NOT NULL default '1',
  is_read int(11) NOT NULL default '0',
  is_active int(11) NOT NULL default '1',
  last_read int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (collaboration_id,participant_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_item_participant_link'
--



--
-- Table structure for table 'ezcollab_item_status'
--

CREATE TABLE ezcollab_item_status (
  collaboration_id int(11) NOT NULL default '0',
  user_id int(11) NOT NULL default '0',
  is_read int(11) NOT NULL default '0',
  is_active int(11) NOT NULL default '1',
  last_read int(11) NOT NULL default '0',
  PRIMARY KEY  (collaboration_id,user_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_item_status'
--



--
-- Table structure for table 'ezcollab_notification_rule'
--

CREATE TABLE ezcollab_notification_rule (
  id int(11) NOT NULL auto_increment,
  user_id varchar(255) NOT NULL default '',
  collab_identifier varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_notification_rule'
--



--
-- Table structure for table 'ezcollab_profile'
--

CREATE TABLE ezcollab_profile (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  main_group int(11) NOT NULL default '0',
  data_text1 text NOT NULL,
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_profile'
--



--
-- Table structure for table 'ezcollab_simple_message'
--

CREATE TABLE ezcollab_simple_message (
  id int(11) NOT NULL auto_increment,
  message_type varchar(40) NOT NULL default '',
  creator_id int(11) NOT NULL default '0',
  data_text1 text NOT NULL,
  data_text2 text NOT NULL,
  data_text3 text NOT NULL,
  data_int1 int(11) NOT NULL default '0',
  data_int2 int(11) NOT NULL default '0',
  data_int3 int(11) NOT NULL default '0',
  data_float1 float NOT NULL default '0',
  data_float2 float NOT NULL default '0',
  data_float3 float NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcollab_simple_message'
--



--
-- Table structure for table 'ezcontent_translation'
--

CREATE TABLE ezcontent_translation (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  locale varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontent_translation'
--


INSERT INTO ezcontent_translation VALUES (1,'English (United Kingdom)','eng-GB');

--
-- Table structure for table 'ezcontentbrowsebookmark'
--

CREATE TABLE ezcontentbrowsebookmark (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  node_id int(11) NOT NULL default '0',
  name varchar(255) NOT NULL default '',
  PRIMARY KEY  (id),
  KEY ezcontentbrowsebookmark_user (user_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentbrowsebookmark'
--



--
-- Table structure for table 'ezcontentbrowserecent'
--

CREATE TABLE ezcontentbrowserecent (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  node_id int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  name varchar(255) NOT NULL default '',
  PRIMARY KEY  (id),
  KEY ezcontentbrowserecent_user (user_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentbrowserecent'
--


INSERT INTO ezcontentbrowserecent VALUES (1,14,44,1076578466,'Setup');
INSERT INTO ezcontentbrowserecent VALUES (2,14,267,1076578510,'Common ini settings');
INSERT INTO ezcontentbrowserecent VALUES (3,14,46,1076578589,'Setup links');

--
-- Table structure for table 'ezcontentclass'
--

CREATE TABLE ezcontentclass (
  id int(11) NOT NULL auto_increment,
  version int(11) NOT NULL default '0',
  name varchar(255) default NULL,
  identifier varchar(50) NOT NULL default '',
  contentobject_name varchar(255) default NULL,
  creator_id int(11) NOT NULL default '0',
  modifier_id int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id,version),
  KEY ezcontentclass_version (version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentclass'
--


INSERT INTO ezcontentclass VALUES (1,0,'Folder','folder','<name>',14,14,1024392098,1048494694);
INSERT INTO ezcontentclass VALUES (2,0,'Article','article','<title>',14,14,1024392098,1069757113);
INSERT INTO ezcontentclass VALUES (3,0,'User group','user_group','<name>',14,14,1024392098,1048494743);
INSERT INTO ezcontentclass VALUES (4,0,'User','user','<first_name> <last_name>',14,14,1024392098,1070976505);
INSERT INTO ezcontentclass VALUES (5,0,'Image','image','<name>',8,14,1031484992,1048494784);
INSERT INTO ezcontentclass VALUES (10,0,'Info page','info_page','<name>',14,14,1052385274,1052385353);
INSERT INTO ezcontentclass VALUES (12,0,'File','file','<name>',14,14,1052385472,1052385669);
INSERT INTO ezcontentclass VALUES (14,0,'Setup link','setup_link','<title>',14,14,1066383719,1066383885);
INSERT INTO ezcontentclass VALUES (15,0,'Template look','template_look','<title>',14,14,1066390045,1069414675);
INSERT INTO ezcontentclass VALUES (27,0,'Gallery','gallery','<name>',14,14,1068803512,1069086251);
INSERT INTO ezcontentclass VALUES (28,0,'Album','album','<name>',14,14,1068803560,1069150091);
INSERT INTO ezcontentclass VALUES (26,0,'Comment','comment','<subject>',14,14,1068716787,1069155431);
INSERT INTO ezcontentclass VALUES (29,0,'Common ini settings','common_ini_settings','<name>',14,14,1076578304,1076578426);

--
-- Table structure for table 'ezcontentclass_attribute'
--

CREATE TABLE ezcontentclass_attribute (
  id int(11) NOT NULL auto_increment,
  version int(11) NOT NULL default '0',
  contentclass_id int(11) NOT NULL default '0',
  identifier varchar(50) NOT NULL default '',
  name varchar(255) NOT NULL default '',
  data_type_string varchar(50) NOT NULL default '',
  is_searchable int(1) NOT NULL default '0',
  is_required int(1) NOT NULL default '0',
  placement int(11) NOT NULL default '0',
  data_int1 int(11) default NULL,
  data_int2 int(11) default NULL,
  data_int3 int(11) default NULL,
  data_int4 int(11) default NULL,
  data_float1 float default NULL,
  data_float2 float default NULL,
  data_float3 float default NULL,
  data_float4 float default NULL,
  data_text1 varchar(50) default NULL,
  data_text2 varchar(50) default NULL,
  data_text3 varchar(50) default NULL,
  data_text4 varchar(255) default NULL,
  data_text5 text,
  is_information_collector int(11) NOT NULL default '0',
  can_translate int(11) default '1',
  PRIMARY KEY  (id,version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentclass_attribute'
--


INSERT INTO ezcontentclass_attribute VALUES (119,0,1,'description','Description','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (116,0,5,'name','Name','ezstring',1,1,1,150,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (6,0,3,'name','Name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (7,0,3,'description','Description','ezstring',1,0,2,255,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (118,0,5,'image','Image','ezimage',0,0,3,2,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (4,0,1,'name','Name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'Folder','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (117,0,5,'caption','Caption','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (142,0,10,'image','Image','ezimage',0,0,3,1,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (141,0,10,'body','Body','ezxmltext',1,0,2,20,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (140,0,10,'name','Name','ezstring',1,1,1,100,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (146,0,12,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'New file','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (148,0,12,'file','File','ezbinaryfile',0,1,3,0,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (147,0,12,'description','Description','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (154,0,14,'description','Description','eztext',1,0,3,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (153,0,14,'icon','Icon','ezimage',0,0,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (152,0,14,'title','Title','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (155,0,14,'link','Link','ezstring',1,1,4,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (212,0,26,'comment','Comment','eztext',1,0,5,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (211,0,26,'url','Homepage URL','ezstring',1,0,4,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (221,0,28,'column','Column','ezinteger',1,1,3,0,0,4,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (222,0,28,'image','Image','ezimage',0,0,4,5,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (210,0,26,'email','Your E-mail','ezstring',1,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (123,0,2,'enable_comments','Enable comments','ezboolean',0,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (120,0,2,'intro','Intro','ezxmltext',1,1,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (121,0,2,'body','Body','ezxmltext',1,0,3,20,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (122,0,2,'thumbnail','Thumbnail','ezimage',0,0,4,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (1,0,2,'title','Title','ezstring',1,1,1,255,0,0,0,0,0,0,0,'New article','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (217,0,28,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (220,0,26,'subject','Subject','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (209,0,26,'name','Your name','ezstring',1,1,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (218,0,28,'description','Description','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (223,0,27,'column','Album columns','ezinteger',0,1,3,0,0,2,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (216,0,27,'description','Description','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (215,0,27,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (224,0,15,'footer','Footer','ezstring',1,0,8,0,0,0,0,0,0,0,0,'Copyright &copy;','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (180,0,15,'email','Email','ezinisetting',0,0,6,1,0,0,0,0,0,0,0,'site.ini','MailSettings','AdminEmail','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (196,0,15,'siteurl','Site URL','ezinisetting',0,0,7,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteURL','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (161,0,15,'id','id','ezstring',1,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (160,0,15,'sitestyle','Sitestyle','ezpackage',0,0,4,1,0,0,0,0,0,0,0,'sitestyle','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (159,0,15,'image','Image','ezimage',0,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (158,0,15,'meta_data','Meta data','ezinisetting',0,0,2,6,0,0,0,0,0,0,0,'site.ini','SiteSettings','MetaDataArray','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (157,0,15,'title','Title','ezinisetting',0,0,1,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteName','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (8,0,4,'first_name','First name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (9,0,4,'last_name','Last name','ezstring',1,1,2,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (12,0,4,'user_account','User account','ezuser',1,1,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (237,0,29,'imagelarge','Image Large Size','ezinisetting',0,0,13,6,0,0,0,0,0,0,0,'image.ini','large','Filters','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (236,0,29,'imagemedium','Image Medium Size','ezinisetting',0,0,12,6,0,0,0,0,0,0,0,'image.ini','medium','Filters','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (235,0,29,'imagesmall','Image Small Size','ezinisetting',0,0,11,6,0,0,0,0,0,0,0,'image.ini','small','Filters','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (234,0,29,'templatecompile','Template Compile','ezinisetting',0,0,10,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCompile','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (233,0,29,'templatecache','Template Cache','ezinisetting',0,0,9,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCache','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (232,0,29,'viewcaching','View Caching','ezinisetting',0,0,8,2,0,0,0,0,0,0,0,'site.ini','ContentSettings','ViewCaching','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (231,0,29,'debugredirection','Debug Redirection','ezinisetting',0,0,7,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugRedirection','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (230,0,29,'debugiplist','Debug IP List','ezinisetting',0,0,6,6,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugIPList','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (229,0,29,'debugbyip','Debug By IP','ezinisetting',0,0,5,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugByIP','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (228,0,29,'debugoutput','Debug Output','ezinisetting',0,0,4,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugOutput','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (227,0,29,'defaultpage','Default Page','ezinisetting',0,0,3,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','DefaultPage','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (225,0,29,'name','Name','ezstring',1,0,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (226,0,29,'indexpage','Index Page','ezinisetting',0,0,2,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','IndexPage','10;11','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);

--
-- Table structure for table 'ezcontentclass_classgroup'
--

CREATE TABLE ezcontentclass_classgroup (
  contentclass_id int(11) NOT NULL default '0',
  contentclass_version int(11) NOT NULL default '0',
  group_id int(11) NOT NULL default '0',
  group_name varchar(255) default NULL,
  PRIMARY KEY  (contentclass_id,contentclass_version,group_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentclass_classgroup'
--


INSERT INTO ezcontentclass_classgroup VALUES (1,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (2,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (4,0,2,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (5,0,3,'Media');
INSERT INTO ezcontentclass_classgroup VALUES (3,0,2,'');
INSERT INTO ezcontentclass_classgroup VALUES (6,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (7,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (8,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (9,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (10,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (11,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (12,0,3,'Media');
INSERT INTO ezcontentclass_classgroup VALUES (13,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (14,0,4,'Setup');
INSERT INTO ezcontentclass_classgroup VALUES (15,0,4,'Setup');
INSERT INTO ezcontentclass_classgroup VALUES (12,1,3,'Media');
INSERT INTO ezcontentclass_classgroup VALUES (16,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (17,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (21,1,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (20,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (21,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (23,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (26,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (24,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (1,1,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (27,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (28,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (29,0,4,'Setup');

--
-- Table structure for table 'ezcontentclassgroup'
--

CREATE TABLE ezcontentclassgroup (
  id int(11) NOT NULL auto_increment,
  name varchar(255) default NULL,
  creator_id int(11) NOT NULL default '0',
  modifier_id int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentclassgroup'
--


INSERT INTO ezcontentclassgroup VALUES (1,'Content',1,14,1031216928,1033922106);
INSERT INTO ezcontentclassgroup VALUES (2,'Users',1,14,1031216941,1033922113);
INSERT INTO ezcontentclassgroup VALUES (3,'Media',8,14,1032009743,1033922120);
INSERT INTO ezcontentclassgroup VALUES (4,'Setup',14,14,1066383702,1066383712);

--
-- Table structure for table 'ezcontentobject'
--

CREATE TABLE ezcontentobject (
  id int(11) NOT NULL auto_increment,
  owner_id int(11) NOT NULL default '0',
  section_id int(11) NOT NULL default '0',
  contentclass_id int(11) NOT NULL default '0',
  name varchar(255) default NULL,
  current_version int(11) default NULL,
  is_published int(11) default NULL,
  published int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  status int(11) default '0',
  remote_id varchar(100) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentobject'
--


INSERT INTO ezcontentobject VALUES (1,14,1,1,'Gallery',7,0,1033917596,1068803301,1,'');
INSERT INTO ezcontentobject VALUES (4,14,2,3,'Users',1,0,1033917596,1033917596,1,NULL);
INSERT INTO ezcontentobject VALUES (10,14,2,4,'Anonymous User',2,0,1033920665,1072180956,1,'');
INSERT INTO ezcontentobject VALUES (11,14,2,3,'Gallery editor',2,0,1033920746,1070976447,1,'');
INSERT INTO ezcontentobject VALUES (12,14,2,3,'Administrator users',1,0,1033920775,1033920775,1,NULL);
INSERT INTO ezcontentobject VALUES (13,14,2,3,'Editors',1,0,1033920794,1033920794,1,NULL);
INSERT INTO ezcontentobject VALUES (14,14,2,4,'Administrator User',5,0,1033920830,1068468219,1,'');
INSERT INTO ezcontentobject VALUES (41,14,3,1,'Media',1,0,1060695457,1060695457,1,'');
INSERT INTO ezcontentobject VALUES (42,14,11,1,'Setup',1,0,1066383068,1066383068,1,'');
INSERT INTO ezcontentobject VALUES (43,14,11,14,'Classes',11,0,1066384365,1069254603,1,'');
INSERT INTO ezcontentobject VALUES (44,14,11,1,'Setup links',1,0,1066384457,1066384457,1,'');
INSERT INTO ezcontentobject VALUES (45,14,11,14,'Look and feel',12,0,1066388816,1069254903,1,'');
INSERT INTO ezcontentobject VALUES (46,14,11,1,'Look and feel',2,0,1066389805,1066389902,1,'');
INSERT INTO ezcontentobject VALUES (47,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (122,14,1,5,'New Image',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (51,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (53,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (56,14,11,15,'My gallery',61,0,1066643397,1069842020,1,'');
INSERT INTO ezcontentobject VALUES (268,14,1,2,'Added new gallery',2,0,1068814752,1069757082,1,'');
INSERT INTO ezcontentobject VALUES (161,14,1,10,'About my gallery',3,0,1068047603,1069757035,1,'');
INSERT INTO ezcontentobject VALUES (129,14,1,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (127,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (83,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (84,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (85,14,5,1,'New Folder',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (88,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (91,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (96,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (126,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (103,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (104,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (105,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (106,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (267,14,1,1,'News',1,0,1068814364,1068814364,1,'');
INSERT INTO ezcontentobject VALUES (115,14,11,14,'Cache',6,0,1066991725,1069254540,1,'');
INSERT INTO ezcontentobject VALUES (116,14,11,14,'URL translator',5,0,1066992054,1069254931,1,'');
INSERT INTO ezcontentobject VALUES (117,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (143,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (144,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (145,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (187,14,1,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (189,14,1,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (320,14,1,28,'Flowers',3,0,1069317685,1069321701,1,'');
INSERT INTO ezcontentobject VALUES (321,14,1,5,'Blue flower',1,0,1069317728,1069317728,1,'');
INSERT INTO ezcontentobject VALUES (322,14,1,5,'Purple haze',1,0,1069317767,1069317767,1,'');
INSERT INTO ezcontentobject VALUES (323,14,1,5,'Yellow flower',1,0,1069317797,1069317797,1,'');
INSERT INTO ezcontentobject VALUES (324,14,1,28,'Landscape',2,0,1069317869,1069321720,1,'');
INSERT INTO ezcontentobject VALUES (325,14,1,5,'Pond reflection',1,0,1069317907,1069317907,1,'');
INSERT INTO ezcontentobject VALUES (326,14,1,5,'Ormevika skyline',1,0,1069317947,1069317947,1,'');
INSERT INTO ezcontentobject VALUES (327,14,1,5,'Foggy trees',1,0,1069317978,1069317978,1,'');
INSERT INTO ezcontentobject VALUES (328,14,1,5,'Water reflection',1,0,1069318020,1069318020,1,'');
INSERT INTO ezcontentobject VALUES (329,14,1,27,'Abstract',1,0,1069318331,1069318331,1,'');
INSERT INTO ezcontentobject VALUES (330,14,1,28,'Misc',2,0,1069318374,1069321636,1,'');
INSERT INTO ezcontentobject VALUES (331,14,1,5,'CVS branching?',1,0,1069318446,1069318446,1,'');
INSERT INTO ezcontentobject VALUES (332,14,1,5,'Gear wheel',1,0,1069318482,1069318482,1,'');
INSERT INTO ezcontentobject VALUES (333,14,1,5,'Green clover',1,0,1069318517,1069318517,1,'');
INSERT INTO ezcontentobject VALUES (334,14,1,5,'Mjaurits',1,0,1069318560,1069318560,1,'');
INSERT INTO ezcontentobject VALUES (335,14,1,5,'Speeding',1,0,1069318590,1069318590,1,'');
INSERT INTO ezcontentobject VALUES (299,14,1,5,'New Image',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (300,14,1,5,'New Image',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (319,14,1,27,'Nature',1,0,1069317649,1069317649,1,'');
INSERT INTO ezcontentobject VALUES (337,14,2,4,'Gallery Editor',1,0,1070976556,1070976556,1,'');
INSERT INTO ezcontentobject VALUES (338,14,2,3,'Anonymous Users',1,0,1072180934,1072180934,1,'');
INSERT INTO ezcontentobject VALUES (339,14,11,1,'Common ini settings',1,0,1076578466,1076578466,1,'');
INSERT INTO ezcontentobject VALUES (340,14,11,29,'Common ini settings',2,0,1076578510,1076578624,1,'');
INSERT INTO ezcontentobject VALUES (341,14,11,14,'Common ini settings',1,0,1076578588,1076578588,1,'');

--
-- Table structure for table 'ezcontentobject_attribute'
--

CREATE TABLE ezcontentobject_attribute (
  id int(11) NOT NULL auto_increment,
  language_code varchar(20) NOT NULL default '',
  version int(11) NOT NULL default '0',
  contentobject_id int(11) NOT NULL default '0',
  contentclassattribute_id int(11) NOT NULL default '0',
  data_text mediumtext,
  data_int int(11) default NULL,
  data_float float default NULL,
  attribute_original_id int(11) default '0',
  sort_key_int int(11) NOT NULL default '0',
  sort_key_string varchar(50) NOT NULL default '',
  data_type_string varchar(50) NOT NULL default '',
  PRIMARY KEY  (id,version),
  KEY ezcontentobject_attribute_contentobject_id (contentobject_id),
  KEY ezcontentobject_attribute_language_code (language_code),
  KEY sort_key_int (sort_key_int),
  KEY sort_key_string (sort_key_string),
  KEY ezcontentobject_attribute_co_id_ver_lang_code (contentobject_id,version,language_code)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentobject_attribute'
--


INSERT INTO ezcontentobject_attribute VALUES (7,'eng-GB',1,4,7,'Main group',NULL,NULL,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (8,'eng-GB',1,4,6,'Users',NULL,NULL,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (24,'eng-GB',1,12,6,'Administrator users',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (25,'eng-GB',1,12,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (26,'eng-GB',1,13,6,'Editors',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (27,'eng-GB',1,13,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (98,'eng-GB',1,41,4,'Media',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (99,'eng-GB',1,41,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (100,'eng-GB',1,42,4,'Setup',0,0,0,0,'setup','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (101,'eng-GB',1,42,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (103,'eng-GB',11,43,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"classes.png\"\n         suffix=\"png\"\n         basename=\"classes\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes.png\"\n         original_filename=\"classes.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069254602\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"classes_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069414615\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"classes_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069687923\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (102,'eng-GB',11,43,152,'Classes',0,0,0,0,'classes','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (106,'eng-GB',1,44,4,'Setup links',0,0,0,0,'setup links','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (107,'eng-GB',1,44,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (112,'eng-GB',2,46,4,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (113,'eng-GB',2,46,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',4,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',5,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (522,'eng-GB',3,161,140,'About my gallery',0,0,0,0,'about my gallery','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (523,'eng-GB',3,161,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet massa. Maecenas egestas, mauris sed adipiscing eleifend, nisl quam aliquam massa, in gravida diam wisi et nulla. Morbi odio. Proin massa est, dignissim eget, molestie a, tincidunt at, libero. Phasellus imperdiet, purus id iaculis volutpat, diam elit dapibus neque, ac blandit wisi metus eu turpis. Sed turpis eros, tristique in, tincidunt ut, facilisis sed, lorem. Aenean pharetra scelerisque tortor. Fusce in est. Pellentesque ullamcorper felis vel enim sagittis commodo. Sed commodo suscipit tellus.</paragraph>\n  <paragraph>Phasellus elementum, velit at vehicula accumsan, lacus nunc rhoncus lectus, et tempor magna mi vitae velit. Aliquam erat volutpat. In ut libero eget lorem vestibulum fermentum. Sed sed tellus ut diam nonummy fringilla. In hac habitasse platea dictumst. Duis diam. Aenean interdum. Sed scelerisque ornare dolor. Phasellus neque magna, ullamcorper id, tincidunt non, scelerisque ut, sapien. Nulla facilisi. Suspendisse vel wisi nec velit dapibus vestibulum. Mauris fringilla, mi a congue dapibus, lacus sem viverra quam, vel tristique lacus dolor consequat diam. Vestibulum et libero. Donec adipiscing sagittis diam. Nam bibendum dui porttitor lacus. Morbi dignissim. Integer tempor. Vestibulum est elit, cursus quis, laoreet vitae, interdum vel, diam</paragraph>\n  <paragraph>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet massa. Maecenas egestas, mauris sed adipiscing eleifend, nisl quam aliquam massa, in gravida diam wisi et nulla. Morbi odio. Proin massa est, dignissim eget, molestie a, tincidunt at, libero. Phasellus imperdiet, purus id iaculis volutpat, diam elit dapibus neque, ac blandit wisi metus eu turpis. Sed turpis eros, tristique in, tincidunt ut, facilisis sed, lorem. Aenean pharetra scelerisque tortor. Fusce in est. Pellentesque ullamcorper felis vel enim sagittis commodo. Sed commodo suscipit tellus.</paragraph>\n  <paragraph>\n    <line>Phasellus elementum, velit at vehicula accumsan, lacus nunc rhoncus lectus, et tempor magna mi vitae velit. Aliquam erat volutpat. In ut libero eget lorem vestibulum fermentum. Sed sed tellus ut diam nonummy fringilla. In hac habitasse platea dictumst. Duis diam. Aenean interdum. Sed scelerisque ornare dolor. Phasellus neque magna, ullamcorper id, tincidunt non, scelerisque ut, sapien. Nulla facilisi. Suspendisse vel wisi nec velit dapibus vestibulum. Mauris fringilla, mi a congue dapibus, lacus sem viverra quam, vel tristique lacus dolor consequat diam. Vestibulum et libero. Donec adipiscing sagittis diam. Nam bibendum dui porttitor lacus. Morbi dignissim. Integer tempor. Vestibulum est elit, cursus quis, laoreet vitae, interdum vel, diam</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',7,56,159,'',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',7,56,160,'left_menu',0,0,0,0,'left_menu','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',7,56,161,'intranet888',0,0,0,0,'intranet888','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',61,56,160,'gallery_blue',0,0,0,0,'gallery_blue','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',61,56,161,'gallery_package',0,0,0,0,'gallery_package','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (437,'eng-GB',61,56,180,'nospam@ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (671,'eng-GB',61,56,196,'ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1161,'eng-GB',61,56,224,'Copyright &copy; eZ systems as 1999-2004',0,0,0,0,'copyright &copy; ez systems as 1999-2004','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (150,'eng-GB',61,56,157,'My gallery',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1,'eng-GB',7,1,4,'Gallery',0,0,0,0,'gallery','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (2,'eng-GB',7,1,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (109,'eng-GB',12,45,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"look_and_feel.png\"\n         suffix=\"png\"\n         basename=\"look_and_feel\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel.png\"\n         original_filename=\"look_and_feel.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069254902\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"look_and_feel_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069414615\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"look_and_feel_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069687923\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (108,'eng-GB',12,45,152,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (28,'eng-GB',5,14,8,'Administrator',0,0,0,0,'administrator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (29,'eng-GB',5,14,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (30,'eng-GB',5,14,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (1169,'eng-GB',1,337,8,'Gallery',0,0,0,0,'gallery','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1170,'eng-GB',1,337,9,'Editor',0,0,0,0,'editor','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1171,'eng-GB',1,337,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (921,'eng-GB',1,267,4,'News',0,0,0,0,'news','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (922,'eng-GB',1,267,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Latest.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1112,'eng-GB',1,323,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Yellow flower</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1113,'eng-GB',1,323,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"yellow_flower.jpg\"\n         suffix=\"jpg\"\n         basename=\"yellow_flower\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower.jpg\"\n         original_filename=\"yellow_flower.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"A yellow flower\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317797\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"yellow_flower_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069317809\"\n         is_valid=\"1\" />\n  <alias name=\"small_v\"\n         filename=\"yellow_flower_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069317825\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"yellow_flower_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069318079\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"yellow_flower_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069318084\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1118,'eng-GB',1,325,116,'Pond reflection',0,0,0,0,'pond reflection','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1119,'eng-GB',1,325,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Reflection in a small pond.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1120,'eng-GB',1,325,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"pond_reflection.jpg\"\n         suffix=\"jpg\"\n         basename=\"pond_reflection\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection.jpg\"\n         original_filename=\"pond_reflection.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Pond reflection\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317907\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"pond_reflection_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069318078\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"pond_reflection_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069321901\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"pond_reflection_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069321912\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1121,'eng-GB',1,326,116,'Ormevika skyline',0,0,0,0,'ormevika skyline','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1122,'eng-GB',1,326,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Ormevika by night</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1123,'eng-GB',1,326,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"ormevika_skyline.jpg\"\n         suffix=\"jpg\"\n         basename=\"ormevika_skyline\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline.jpg\"\n         original_filename=\"skyline.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Nice nightshot from ormevika\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317947\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_v\"\n         filename=\"ormevika_skyline_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069318074\"\n         is_valid=\"1\" />\n  <alias name=\"small_h\"\n         filename=\"ormevika_skyline_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069318078\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"ormevika_skyline_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069321895\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"ormevika_skyline_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069321901\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1124,'eng-GB',1,327,116,'Foggy trees',0,0,0,0,'foggy trees','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1125,'eng-GB',1,327,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Foggy trees</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1126,'eng-GB',1,327,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"foggy_trees.jpg\"\n         suffix=\"jpg\"\n         basename=\"foggy_trees\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees.jpg\"\n         original_filename=\"trees.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Foggy trees\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317978\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_v\"\n         filename=\"foggy_trees_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069318074\"\n         is_valid=\"1\" />\n  <alias name=\"small_h\"\n         filename=\"foggy_trees_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069318078\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"foggy_trees_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069318286\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"foggy_trees_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069321894\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1127,'eng-GB',1,328,116,'Water reflection',0,0,0,0,'water reflection','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1128,'eng-GB',1,328,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Reflection from a lake in Kongsberg</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1129,'eng-GB',1,328,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"water_reflection.jpg\"\n         suffix=\"jpg\"\n         basename=\"water_reflection\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection.jpg\"\n         original_filename=\"water.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Water reflection\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069318019\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"water_reflection_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069318073\"\n         is_valid=\"1\" />\n  <alias name=\"small_v\"\n         filename=\"water_reflection_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069318074\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"water_reflection_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069318085\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"water_reflection_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069318285\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (151,'eng-GB',61,56,158,'author=eZ systems package team\ncopyright=eZ systems\ndescription=Content Management System\nkeywords=cms',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',61,56,159,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"my_gallery.gif\"\n         suffix=\"gif\"\n         basename=\"my_gallery\"\n         dirpath=\"var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB\"\n         url=\"var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery.gif\"\n         original_filename=\"gallery.gif\"\n         mime_type=\"original\"\n         width=\"165\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069842020\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"my_gallery_small_h.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB\"\n         url=\"var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery_small_h.gif\"\n         mime_type=\"image/gif\"\n         width=\"447\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069842022\"\n         is_valid=\"1\" />\n  <alias name=\"logo\"\n         filename=\"my_gallery_logo.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB\"\n         url=\"var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery_logo.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-1220513676\"\n         timestamp=\"1069842044\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1130,'eng-GB',1,329,215,'Abstract',0,0,0,0,'abstract','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1131,'eng-GB',1,329,216,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Abstract photography</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1132,'eng-GB',1,329,223,'',2,0,0,2,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (1137,'eng-GB',1,331,116,'CVS branching?',0,0,0,0,'cvs branching?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1138,'eng-GB',1,331,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Visual representation of a CVS branch.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1139,'eng-GB',1,331,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"cvs_branching.jpg\"\n         suffix=\"jpg\"\n         basename=\"cvs_branching\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching.jpg\"\n         original_filename=\"branch.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"CVS branch\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069318446\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"cvs_branching_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069842041\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"cvs_branching_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069322030\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"cvs_branching_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069322302\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1140,'eng-GB',1,332,116,'Gear wheel',0,0,0,0,'gear wheel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1141,'eng-GB',1,332,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Gear wheel statue from Skien</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1142,'eng-GB',1,332,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"gear_wheel.jpg\"\n         suffix=\"jpg\"\n         basename=\"gear_wheel\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel.jpg\"\n         original_filename=\"gear_wheel.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Gear wheel\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069318481\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"gear_wheel_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069426469\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"gear_wheel_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069318980\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"gear_wheel_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069322029\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1143,'eng-GB',1,333,116,'Green clover',0,0,0,0,'green clover','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1144,'eng-GB',1,333,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Actually it&apos;s called gaukesyre</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1145,'eng-GB',1,333,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"green_clover.jpg\"\n         suffix=\"jpg\"\n         basename=\"green_clover\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover.jpg\"\n         original_filename=\"green_clover.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Gren clover\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069318517\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_v\"\n         filename=\"green_clover_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069426472\"\n         is_valid=\"1\" />\n  <alias name=\"small_h\"\n         filename=\"green_clover_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069842043\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"green_clover_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069318965\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"green_clover_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069318979\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1146,'eng-GB',1,334,116,'Mjaurits',0,0,0,0,'mjaurits','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1147,'eng-GB',1,334,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Mjaurits the cat.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1148,'eng-GB',1,334,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"mjaurits.jpg\"\n         suffix=\"jpg\"\n         basename=\"mjaurits\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits.jpg\"\n         original_filename=\"cat.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"A closeup of the cat Mjaurits\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069318560\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_v\"\n         filename=\"mjaurits_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069426471\"\n         is_valid=\"1\" />\n  <alias name=\"small_h\"\n         filename=\"mjaurits_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069842043\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"mjaurits_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069427992\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"mjaurits_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069318965\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1149,'eng-GB',1,335,116,'Speeding',0,0,0,0,'speeding','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1150,'eng-GB',1,335,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>All withing legal limits, of course.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1151,'eng-GB',1,335,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"speeding.jpg\"\n         suffix=\"jpg\"\n         basename=\"speeding\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding.jpg\"\n         original_filename=\"speed.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Speed\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069318589\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_v\"\n         filename=\"speeding_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069426471\"\n         is_valid=\"1\" />\n  <alias name=\"small_h\"\n         filename=\"speeding_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069842042\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"speeding_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069427991\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"speeding_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069318965\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1133,'eng-GB',2,330,217,'Misc',0,0,0,0,'misc','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1134,'eng-GB',2,330,218,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1135,'eng-GB',2,330,221,'',3,0,0,3,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (1136,'eng-GB',2,330,222,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"misc.\"\n         suffix=\"\"\n         basename=\"misc\"\n         dirpath=\"var/gallery/storage/images/abstract/misc/1136-2-eng-GB\"\n         url=\"var/gallery/storage/images/abstract/misc/1136-2-eng-GB/misc.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069318368\">\n  <original attribute_id=\"1136\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1101,'eng-GB',3,320,217,'Flowers',0,0,0,0,'flowers','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1102,'eng-GB',3,320,218,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>Pictures of various flowers.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1103,'eng-GB',3,320,221,'',3,0,0,3,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (1104,'eng-GB',3,320,222,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"flowers.\"\n         suffix=\"\"\n         basename=\"flowers\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/1104-3-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/1104-3-eng-GB/flowers.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317669\">\n  <original attribute_id=\"1104\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1114,'eng-GB',2,324,217,'Landscape',0,0,0,0,'landscape','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1115,'eng-GB',2,324,218,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>Landscape photography.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1116,'eng-GB',2,324,221,'',3,0,0,3,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (1117,'eng-GB',2,324,222,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"landscape.\"\n         suffix=\"\"\n         basename=\"landscape\"\n         dirpath=\"var/gallery/storage/images/nature/landscape/1117-2-eng-GB\"\n         url=\"var/gallery/storage/images/nature/landscape/1117-2-eng-GB/landscape.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317845\">\n  <original attribute_id=\"1117\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (923,'eng-GB',2,268,1,'Added new gallery',0,0,0,0,'added new gallery','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (924,'eng-GB',2,268,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet massa. Maecenas egestas, mauris sed adipiscing eleifend, nisl quam aliquam massa, in gravida diam wisi et nulla. Morbi odio. Proin massa est, dignissim eget, molestie a, tincidunt at, libero. Phasellus imperdiet, purus id iaculis volutpat, diam elit dapibus neque, ac blandit wisi metus eu turpis. Sed turpis eros, tristique in, tincidunt ut, facilisis sed, lorem. Aenean pharetra scelerisque tortor. Fusce in est. Pellentesque ullamcorper felis vel enim sagittis commodo. Sed commodo suscipit tellus. </paragraph>\n  <paragraph>Phasellus elementum, velit at vehicula accumsan, lacus nunc rhoncus lectus, et tempor magna mi vitae velit. Aliquam erat volutpat. In ut libero eget lorem vestibulum fermentum. Sed sed tellus ut diam nonummy fringilla. In hac habitasse platea dictumst. Duis diam. Aenean interdum. Sed scelerisque ornare dolor. Phasellus neque magna, ullamcorper id, tincidunt non, scelerisque ut, sapien. Nulla facilisi. Suspendisse vel wisi nec velit dapibus vestibulum. Mauris fringilla, mi a congue dapibus, lacus sem viverra quam, vel tristique lacus dolor consequat diam. Vestibulum et libero. Donec adipiscing sagittis diam. Nam bibendum dui porttitor lacus. Morbi dignissim. Integer tempor. Vestibulum est elit, cursus quis, laoreet vitae, interdum vel, diam </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (925,'eng-GB',2,268,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>dfghLorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet massa. Maecenas egestas, mauris sed adipiscing eleifend, nisl quam aliquam massa, in gravida diam wisi et nulla. Morbi odio. Proin massa est, dignissim eget, molestie a, tincidunt at, libero. Phasellus imperdiet, purus id iaculis volutpat, diam elit dapibus neque, ac blandit wisi metus eu turpis. Sed turpis eros, tristique in, tincidunt ut, facilisis sed, lorem. Aenean pharetra scelerisque tortor. Fusce in est. Pellentesque ullamcorper felis vel enim sagittis commodo. Sed commodo suscipit tellus. </paragraph>\n  <paragraph>\n    <line>Phasellus elementum, velit at vehicula accumsan, lacus nunc rhoncus lectus, et tempor magna mi vitae velit. Aliquam erat volutpat. In ut libero eget lorem vestibulum fermentum. Sed sed tellus ut diam nonummy fringilla. In hac habitasse platea dictumst. Duis diam. Aenean interdum. Sed scelerisque ornare dolor. Phasellus neque magna, ullamcorper id, tincidunt non, scelerisque ut, sapien. Nulla facilisi. Suspendisse vel wisi nec velit dapibus vestibulum. Mauris fringilla, mi a congue dapibus, lacus sem viverra quam, vel tristique lacus dolor consequat diam. Vestibulum et libero. Donec adipiscing sagittis diam. Nam bibendum dui porttitor lacus. Morbi dignissim. Integer tempor. Vestibulum est elit, cursus quis, laoreet vitae, interdum vel, diam </line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (926,'eng-GB',2,268,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"added_new_gallery.jpg\"\n         suffix=\"jpg\"\n         basename=\"added_new_gallery\"\n         dirpath=\"var/gallery/storage/images/news/added_new_gallery/926-2-eng-GB\"\n         url=\"var/gallery/storage/images/news/added_new_gallery/926-2-eng-GB/added_new_gallery.jpg\"\n         original_filename=\"dscn1631.jpg\"\n         mime_type=\"original\"\n         width=\"1024\"\n         height=\"768\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"926\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (927,'eng-GB',2,268,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1109,'eng-GB',1,322,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>A purple one, actually two.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1108,'eng-GB',1,322,116,'Purple haze',0,0,0,0,'purple haze','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1098,'eng-GB',1,319,215,'Nature',0,0,0,0,'nature','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1099,'eng-GB',1,319,216,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Nature images</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1100,'eng-GB',1,319,223,'',2,0,0,2,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (1105,'eng-GB',1,321,116,'Blue flower',0,0,0,0,'blue flower','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1106,'eng-GB',1,321,117,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>A small nice blue flower.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1107,'eng-GB',1,321,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"blue_flower.jpg\"\n         suffix=\"jpg\"\n         basename=\"blue_flower\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower.jpg\"\n         original_filename=\"blue_flower.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Blue flower\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317728\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"blue_flower_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069842042\"\n         is_valid=\"1\" />\n  <alias name=\"small_v\"\n         filename=\"blue_flower_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069317826\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"blue_flower_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069320924\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"blue_flower_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069326352\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (329,'eng-GB',5,116,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (330,'eng-GB',5,116,155,'content/urltranslator/',0,0,0,0,'content/urltranslator/','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (524,'eng-GB',3,161,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"about_my_gallery.\"\n         suffix=\"\"\n         basename=\"about_my_gallery\"\n         dirpath=\"var/gallery/storage/images/about_my_gallery/524-3-eng-GB\"\n         url=\"var/gallery/storage/images/about_my_gallery/524-3-eng-GB/about_my_gallery.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"524\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (327,'eng-GB',5,116,152,'URL translator',0,0,0,0,'url translator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (328,'eng-GB',5,116,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"url_translator.png\"\n         suffix=\"png\"\n         basename=\"url_translator\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator.png\"\n         original_filename=\"url_translator.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069254930\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"url_translator_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069414616\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"url_translator_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069687924\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (110,'eng-GB',12,45,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (111,'eng-GB',12,45,155,'content/edit/56',0,0,0,0,'content/edit/56','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (104,'eng-GB',11,43,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (105,'eng-GB',11,43,155,'class/grouplist',0,0,0,0,'class/grouplist','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (325,'eng-GB',6,115,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (326,'eng-GB',6,115,155,'setup/cache',0,0,0,0,'setup/cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (323,'eng-GB',6,115,152,'Cache',0,0,0,0,'cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (324,'eng-GB',6,115,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"cache.png\"\n         suffix=\"png\"\n         basename=\"cache\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache.png\"\n         original_filename=\"cache.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069254539\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"cache_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069414616\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"cache_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB\"\n         url=\"var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069687923\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1111,'eng-GB',1,323,116,'Yellow flower',0,0,0,0,'yellow flower','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1110,'eng-GB',1,322,118,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"purple_haze.jpg\"\n         suffix=\"jpg\"\n         basename=\"purple_haze\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze.jpg\"\n         original_filename=\"purple_haze.jpg\"\n         mime_type=\"original\"\n         width=\"400\"\n         height=\"300\"\n         alternative_text=\"Purple haze\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069317767\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"purple_haze_small_h.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_small_h.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"173\"\n         height=\"130\"\n         alias_key=\"-1426914878\"\n         timestamp=\"1069317809\"\n         is_valid=\"1\" />\n  <alias name=\"small_v\"\n         filename=\"purple_haze_small_v.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_small_v.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"150\"\n         height=\"113\"\n         alias_key=\"78134807\"\n         timestamp=\"1069317826\"\n         is_valid=\"1\" />\n  <alias name=\"navigator\"\n         filename=\"purple_haze_navigator.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_navigator.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"133\"\n         height=\"100\"\n         alias_key=\"347197093\"\n         timestamp=\"1069318084\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"purple_haze_large.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB\"\n         url=\"var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_large.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"400\"\n         height=\"300\"\n         alias_key=\"-1750183455\"\n         timestamp=\"1069320923\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (22,'eng-GB',2,11,6,'Gallery editor',0,0,0,0,'gallery editor','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (23,'eng-GB',2,11,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1172,'eng-GB',1,338,6,'Anonymous Users',0,0,0,0,'anonymous users','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1173,'eng-GB',1,338,7,'User group for the anonymous user',0,0,0,0,'user group for the anonymous user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (19,'eng-GB',2,10,8,'Anonymous',0,0,0,0,'anonymous','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (20,'eng-GB',2,10,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (21,'eng-GB',2,10,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (1174,'eng-GB',1,339,4,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1175,'eng-GB',1,339,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1176,'eng-GB',1,340,225,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1177,'eng-GB',1,340,226,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1178,'eng-GB',1,340,227,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1179,'eng-GB',1,340,228,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1180,'eng-GB',1,340,229,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1181,'eng-GB',1,340,230,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1182,'eng-GB',1,340,231,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1183,'eng-GB',1,340,232,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1184,'eng-GB',1,340,233,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1185,'eng-GB',1,340,234,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1186,'eng-GB',1,340,235,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1187,'eng-GB',1,340,236,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1188,'eng-GB',1,340,237,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1189,'eng-GB',1,341,152,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1190,'eng-GB',1,341,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"common_ini_settings1.png\"\n         suffix=\"png\"\n         basename=\"common_ini_settings1\"\n         dirpath=\"var/gallery/storage/images-versioned/1190/1-eng-GB\"\n         url=\"var/gallery/storage/images-versioned/1190/1-eng-GB/common_ini_settings1.png\"\n         original_filename=\"exec.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1076578588\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"small_h\"\n         filename=\"common_ini_settings1_small_h.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images-versioned/1190/1-eng-GB\"\n         url=\"var/gallery/storage/images-versioned/1190/1-eng-GB/common_ini_settings1_small_h.png\"\n         mime_type=\"image/png\"\n         width=\"130\"\n         height=\"130\"\n         alias_key=\"-1476615834\"\n         timestamp=\"1076578590\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"common_ini_settings1_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/gallery/storage/images-versioned/1190/1-eng-GB\"\n         url=\"var/gallery/storage/images-versioned/1190/1-eng-GB/common_ini_settings1_large.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"1391235260\"\n         timestamp=\"1076578603\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1191,'eng-GB',1,341,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (1192,'eng-GB',1,341,155,'content/edit/340',0,0,0,0,'content/edit/340','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1176,'eng-GB',2,340,225,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1177,'eng-GB',2,340,226,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1178,'eng-GB',2,340,227,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1179,'eng-GB',2,340,228,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1180,'eng-GB',2,340,229,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1181,'eng-GB',2,340,230,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1182,'eng-GB',2,340,231,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1183,'eng-GB',2,340,232,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1184,'eng-GB',2,340,233,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1185,'eng-GB',2,340,234,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1186,'eng-GB',2,340,235,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1187,'eng-GB',2,340,236,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1188,'eng-GB',2,340,237,'',0,0,0,0,'','ezinisetting');

--
-- Table structure for table 'ezcontentobject_link'
--

CREATE TABLE ezcontentobject_link (
  id int(11) NOT NULL auto_increment,
  from_contentobject_id int(11) NOT NULL default '0',
  from_contentobject_version int(11) NOT NULL default '0',
  to_contentobject_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentobject_link'
--



--
-- Table structure for table 'ezcontentobject_name'
--

CREATE TABLE ezcontentobject_name (
  contentobject_id int(11) NOT NULL default '0',
  name varchar(255) default NULL,
  content_version int(11) NOT NULL default '0',
  content_translation varchar(20) NOT NULL default '',
  real_translation varchar(20) default NULL,
  PRIMARY KEY  (contentobject_id,content_version,content_translation)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentobject_name'
--


INSERT INTO ezcontentobject_name VALUES (1,'Root folder',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (4,'Users',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (10,'Anonymous User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (11,'Guest accounts',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (12,'Administrator users',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (13,'Editors',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (268,'Latest sdfgsdgf',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (41,'Media',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (42,'Setup',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (44,'Setup links',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Setup Objects',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (46,'Fonts and colors',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (46,'Look and feel',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (47,'New Template look',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (126,'New Article',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',37,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (267,'News',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (51,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',8,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (53,'New Template look',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',8,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',55,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (320,'Flowers',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',36,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About this forum',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranetyy',30,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',25,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',24,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (127,'New Article',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',22,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',23,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',35,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (122,'New Image',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',8,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',38,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (83,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (84,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',11,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (85,'New Folder',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (88,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',33,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranetyy',31,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',32,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',12,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',13,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (91,'New Template look',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',18,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',58,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',57,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',39,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (96,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (320,'Flowers',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',54,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',34,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',20,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (103,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (104,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (105,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (106,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Corporate',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',59,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Setup Objects',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Setup Objects',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Setup Objects',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (117,'New Article',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',19,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',21,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',26,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranetyy',27,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranetyy',28,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (129,'New Article',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranetyy',29,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',41,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',42,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',40,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',45,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (268,'Added new gallery',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (143,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (144,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (145,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',44,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (187,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (189,'test2 test2',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',46,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',60,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (328,'Water reflection',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',61,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Blog',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About me',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',11,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',12,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',43,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',47,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',48,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',49,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Gallery',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',53,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (334,'Mjaurits',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (335,'Speeding',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (330,'Misc',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (324,'Landscape',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',50,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',51,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',11,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (329,'Abstract',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (330,'Misc',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (331,'CVS branching?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (332,'Gear wheel',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (333,'Green clover',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (319,'Nature',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (320,'Flowers',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (321,'Blue flower',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (322,'Purple haze',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (323,'Yellow flower',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (324,'Landscape',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (325,'Pond reflection',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (326,'Ormevika skyline',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About my gallery',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',56,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (299,'afunction_1280',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (300,'nin',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'My gallery',52,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (327,'Foggy trees',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (11,'Gallery editor',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (337,'Gallery Editor',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (338,'Anonymous Users',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (10,'Anonymous User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (339,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (340,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (341,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (340,'Common ini settings',2,'eng-GB','eng-GB');

--
-- Table structure for table 'ezcontentobject_tree'
--

CREATE TABLE ezcontentobject_tree (
  node_id int(11) NOT NULL auto_increment,
  parent_node_id int(11) NOT NULL default '0',
  contentobject_id int(11) default NULL,
  contentobject_version int(11) default NULL,
  contentobject_is_published int(11) default NULL,
  depth int(11) NOT NULL default '0',
  path_string varchar(255) NOT NULL default '',
  sort_field int(11) default '1',
  sort_order int(1) default '1',
  priority int(11) NOT NULL default '0',
  path_identification_string text,
  main_node_id int(11) default NULL,
  modified_subnode int(11) NOT NULL default '0',
  PRIMARY KEY  (node_id),
  KEY ezcontentobject_tree_path (path_string),
  KEY ezcontentobject_tree_p_node_id (parent_node_id),
  KEY ezcontentobject_tree_co_id (contentobject_id),
  KEY ezcontentobject_tree_depth (depth),
  KEY ezcontentobject_tree_mo_su (modified_subnode)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentobject_tree'
--


INSERT INTO ezcontentobject_tree VALUES (1,1,0,1,1,0,'/1/',1,1,0,NULL,1,1076578625);
INSERT INTO ezcontentobject_tree VALUES (2,1,1,7,1,1,'/1/2/',9,1,0,'',2,1069757082);
INSERT INTO ezcontentobject_tree VALUES (5,1,4,1,0,1,'/1/5/',1,1,0,'users',5,1072180956);
INSERT INTO ezcontentobject_tree VALUES (11,266,10,2,1,3,'/1/5/266/11/',9,1,0,'users/anonymous_users/anonymous_user',11,1072180956);
INSERT INTO ezcontentobject_tree VALUES (12,5,11,2,1,2,'/1/5/12/',9,1,0,'users/gallery_editor',12,1070976556);
INSERT INTO ezcontentobject_tree VALUES (13,5,12,1,1,2,'/1/5/13/',1,1,0,'users/administrator_users',13,1068468219);
INSERT INTO ezcontentobject_tree VALUES (14,5,13,1,1,2,'/1/5/14/',1,1,0,'users/editors',14,1033920794);
INSERT INTO ezcontentobject_tree VALUES (15,13,14,5,1,3,'/1/5/13/15/',9,1,0,'users/administrator_users/administrator_user',15,1068468219);
INSERT INTO ezcontentobject_tree VALUES (43,1,41,1,1,1,'/1/43/',9,1,0,'media',43,1060695457);
INSERT INTO ezcontentobject_tree VALUES (44,1,42,1,1,1,'/1/44/',9,1,0,'setup',44,1076578625);
INSERT INTO ezcontentobject_tree VALUES (45,46,43,11,1,3,'/1/44/46/45/',9,1,0,'setup/setup_links/classes',45,1069254603);
INSERT INTO ezcontentobject_tree VALUES (46,44,44,1,1,2,'/1/44/46/',9,1,0,'setup/setup_links',46,1076578589);
INSERT INTO ezcontentobject_tree VALUES (47,46,45,12,1,3,'/1/44/46/47/',9,1,0,'setup/setup_links/look_and_feel',47,1069254903);
INSERT INTO ezcontentobject_tree VALUES (48,44,46,2,1,2,'/1/44/48/',9,1,0,'setup/look_and_feel',48,1069842020);
INSERT INTO ezcontentobject_tree VALUES (54,48,56,61,1,3,'/1/44/48/54/',9,1,0,'setup/look_and_feel/my_gallery',54,1069842020);
INSERT INTO ezcontentobject_tree VALUES (95,46,115,6,1,3,'/1/44/46/95/',9,1,0,'setup/setup_links/cache',95,1069254540);
INSERT INTO ezcontentobject_tree VALUES (96,46,116,5,1,3,'/1/44/46/96/',9,1,0,'setup/setup_links/url_translator',96,1069254931);
INSERT INTO ezcontentobject_tree VALUES (127,2,161,3,1,2,'/1/2/127/',9,1,0,'about_my_gallery',127,1069757035);
INSERT INTO ezcontentobject_tree VALUES (199,2,267,1,1,2,'/1/2/199/',9,1,0,'news',199,1069757082);
INSERT INTO ezcontentobject_tree VALUES (200,199,268,2,1,3,'/1/2/199/200/',9,1,0,'news/added_new_gallery',200,1069757082);
INSERT INTO ezcontentobject_tree VALUES (248,2,319,1,1,2,'/1/2/248/',9,1,0,'nature',248,1069321720);
INSERT INTO ezcontentobject_tree VALUES (249,248,320,3,1,3,'/1/2/248/249/',9,1,0,'nature/flowers',249,1069321701);
INSERT INTO ezcontentobject_tree VALUES (250,249,321,1,1,4,'/1/2/248/249/250/',9,1,0,'nature/flowers/blue_flower',250,1069317728);
INSERT INTO ezcontentobject_tree VALUES (251,249,322,1,1,4,'/1/2/248/249/251/',9,1,0,'nature/flowers/purple_haze',251,1069317767);
INSERT INTO ezcontentobject_tree VALUES (252,249,323,1,1,4,'/1/2/248/249/252/',9,1,0,'nature/flowers/yellow_flower',252,1069317797);
INSERT INTO ezcontentobject_tree VALUES (253,248,324,2,1,3,'/1/2/248/253/',9,1,0,'nature/landscape',253,1069321720);
INSERT INTO ezcontentobject_tree VALUES (254,253,325,1,1,4,'/1/2/248/253/254/',9,1,0,'nature/landscape/pond_reflection',254,1069317907);
INSERT INTO ezcontentobject_tree VALUES (255,253,326,1,1,4,'/1/2/248/253/255/',9,1,0,'nature/landscape/ormevika_skyline',255,1069317947);
INSERT INTO ezcontentobject_tree VALUES (256,253,327,1,1,4,'/1/2/248/253/256/',9,1,0,'nature/landscape/foggy_trees',256,1069317978);
INSERT INTO ezcontentobject_tree VALUES (257,253,328,1,1,4,'/1/2/248/253/257/',9,1,0,'nature/landscape/water_reflection',257,1069318020);
INSERT INTO ezcontentobject_tree VALUES (258,2,329,1,1,2,'/1/2/258/',9,1,0,'abstract',258,1069321636);
INSERT INTO ezcontentobject_tree VALUES (259,258,330,2,1,3,'/1/2/258/259/',9,1,0,'abstract/misc',259,1069321636);
INSERT INTO ezcontentobject_tree VALUES (260,259,331,1,1,4,'/1/2/258/259/260/',9,1,0,'abstract/misc/cvs_branching',260,1069318446);
INSERT INTO ezcontentobject_tree VALUES (261,259,332,1,1,4,'/1/2/258/259/261/',9,1,0,'abstract/misc/gear_wheel',261,1069318482);
INSERT INTO ezcontentobject_tree VALUES (262,259,333,1,1,4,'/1/2/258/259/262/',9,1,0,'abstract/misc/green_clover',262,1069318517);
INSERT INTO ezcontentobject_tree VALUES (263,259,334,1,1,4,'/1/2/258/259/263/',9,1,0,'abstract/misc/mjaurits',263,1069318560);
INSERT INTO ezcontentobject_tree VALUES (264,259,335,1,1,4,'/1/2/258/259/264/',9,1,0,'abstract/misc/speeding',264,1069318590);
INSERT INTO ezcontentobject_tree VALUES (265,12,337,1,1,3,'/1/5/12/265/',9,1,0,'users/gallery_editor/gallery_editor',265,1070976556);
INSERT INTO ezcontentobject_tree VALUES (266,5,338,1,1,2,'/1/5/266/',9,1,0,'users/anonymous_users',266,1072180956);
INSERT INTO ezcontentobject_tree VALUES (267,44,339,1,1,2,'/1/44/267/',9,1,0,'setup/common_ini_settings',267,1076578625);
INSERT INTO ezcontentobject_tree VALUES (268,267,340,2,1,3,'/1/44/267/268/',9,1,0,'setup/common_ini_settings/common_ini_settings',268,1076578625);
INSERT INTO ezcontentobject_tree VALUES (269,46,341,1,1,3,'/1/44/46/269/',9,1,0,'setup/setup_links/common_ini_settings',269,1076578589);

--
-- Table structure for table 'ezcontentobject_version'
--

CREATE TABLE ezcontentobject_version (
  id int(11) NOT NULL auto_increment,
  contentobject_id int(11) default NULL,
  creator_id int(11) NOT NULL default '0',
  version int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  status int(11) NOT NULL default '0',
  workflow_event_pos int(11) NOT NULL default '0',
  user_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezcontentobject_version'
--


INSERT INTO ezcontentobject_version VALUES (4,4,14,1,0,0,1,1,0);
INSERT INTO ezcontentobject_version VALUES (440,12,14,1,1033920760,1033920775,1,0,0);
INSERT INTO ezcontentobject_version VALUES (441,13,14,1,1033920786,1033920794,1,0,0);
INSERT INTO ezcontentobject_version VALUES (472,41,14,1,1060695450,1060695457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (473,42,14,1,1066383039,1066383068,1,0,0);
INSERT INTO ezcontentobject_version VALUES (950,43,14,11,1069254550,1069254602,1,0,0);
INSERT INTO ezcontentobject_version VALUES (475,44,14,1,1066384403,1066384457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (482,46,14,2,1066389882,1066389902,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1005,56,14,61,1069841702,1069842020,1,0,0);
INSERT INTO ezcontentobject_version VALUES (984,326,14,1,1069317915,1069317947,1,0,0);
INSERT INTO ezcontentobject_version VALUES (990,332,14,1,1069318454,1069318481,1,0,0);
INSERT INTO ezcontentobject_version VALUES (853,1,14,7,1068803287,1068803301,1,1,0);
INSERT INTO ezcontentobject_version VALUES (951,45,14,12,1069254878,1069254902,1,0,0);
INSERT INTO ezcontentobject_version VALUES (875,267,14,1,1068814351,1068814364,1,0,0);
INSERT INTO ezcontentobject_version VALUES (949,115,14,6,1069254471,1069254539,1,0,0);
INSERT INTO ezcontentobject_version VALUES (993,335,14,1,1069318568,1069318589,1,0,0);
INSERT INTO ezcontentobject_version VALUES (986,328,14,1,1069317987,1069318019,1,0,0);
INSERT INTO ezcontentobject_version VALUES (796,14,14,5,1068468183,1068468218,1,0,0);
INSERT INTO ezcontentobject_version VALUES (997,324,14,2,1069321711,1069321719,1,0,0);
INSERT INTO ezcontentobject_version VALUES (996,320,14,3,1069321690,1069321700,1,0,0);
INSERT INTO ezcontentobject_version VALUES (980,322,14,1,1069317740,1069317767,1,0,0);
INSERT INTO ezcontentobject_version VALUES (981,323,14,1,1069317776,1069317797,1,0,0);
INSERT INTO ezcontentobject_version VALUES (983,325,14,1,1069317882,1069317906,1,0,0);
INSERT INTO ezcontentobject_version VALUES (985,327,14,1,1069317955,1069317978,1,0,0);
INSERT INTO ezcontentobject_version VALUES (987,329,14,1,1069318314,1069318331,1,0,0);
INSERT INTO ezcontentobject_version VALUES (989,331,14,1,1069318390,1069318446,1,0,0);
INSERT INTO ezcontentobject_version VALUES (992,334,14,1,1069318526,1069318560,1,0,0);
INSERT INTO ezcontentobject_version VALUES (991,333,14,1,1069318491,1069318517,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1001,161,14,3,1069757022,1069757035,1,0,0);
INSERT INTO ezcontentobject_version VALUES (952,116,14,5,1069254913,1069254930,1,0,0);
INSERT INTO ezcontentobject_version VALUES (994,330,14,2,1069321615,1069321635,1,0,0);
INSERT INTO ezcontentobject_version VALUES (979,321,14,1,1069317697,1069317728,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1002,268,14,2,1069757046,1069757082,1,0,0);
INSERT INTO ezcontentobject_version VALUES (977,319,14,1,1069317638,1069317649,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1006,11,14,2,1070976433,1070976447,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1008,337,14,1,1070976511,1070976556,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1009,338,14,1,1072180925,1072180933,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1010,10,14,2,1072180941,1072180956,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1011,339,14,1,1076578450,1076578466,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1012,340,14,1,1076578483,1076578509,3,0,0);
INSERT INTO ezcontentobject_version VALUES (1013,341,14,1,1076578548,1076578588,1,0,0);
INSERT INTO ezcontentobject_version VALUES (1014,340,14,2,1076578609,1076578624,1,0,0);

--
-- Table structure for table 'ezdiscountrule'
--

CREATE TABLE ezdiscountrule (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezdiscountrule'
--



--
-- Table structure for table 'ezdiscountsubrule'
--

CREATE TABLE ezdiscountsubrule (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  discountrule_id int(11) NOT NULL default '0',
  discount_percent float default NULL,
  limitation char(1) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezdiscountsubrule'
--



--
-- Table structure for table 'ezdiscountsubrule_value'
--

CREATE TABLE ezdiscountsubrule_value (
  discountsubrule_id int(11) NOT NULL default '0',
  value int(11) NOT NULL default '0',
  issection int(1) NOT NULL default '0',
  PRIMARY KEY  (discountsubrule_id,value,issection)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezdiscountsubrule_value'
--



--
-- Table structure for table 'ezenumobjectvalue'
--

CREATE TABLE ezenumobjectvalue (
  contentobject_attribute_id int(11) NOT NULL default '0',
  contentobject_attribute_version int(11) NOT NULL default '0',
  enumid int(11) NOT NULL default '0',
  enumelement varchar(255) NOT NULL default '',
  enumvalue varchar(255) NOT NULL default '',
  PRIMARY KEY  (contentobject_attribute_id,contentobject_attribute_version,enumid),
  KEY ezenumobjectvalue_co_attr_id_co_attr_ver (contentobject_attribute_id,contentobject_attribute_version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezenumobjectvalue'
--



--
-- Table structure for table 'ezenumvalue'
--

CREATE TABLE ezenumvalue (
  id int(11) NOT NULL auto_increment,
  contentclass_attribute_id int(11) NOT NULL default '0',
  contentclass_attribute_version int(11) NOT NULL default '0',
  enumelement varchar(255) NOT NULL default '',
  enumvalue varchar(255) NOT NULL default '',
  placement int(11) NOT NULL default '0',
  PRIMARY KEY  (id,contentclass_attribute_id,contentclass_attribute_version),
  KEY ezenumvalue_co_cl_attr_id_co_class_att_ver (contentclass_attribute_id,contentclass_attribute_version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezenumvalue'
--



--
-- Table structure for table 'ezforgot_password'
--

CREATE TABLE ezforgot_password (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  hash_key varchar(32) NOT NULL default '',
  time int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezforgot_password'
--



--
-- Table structure for table 'ezgeneral_digest_user_settings'
--

CREATE TABLE ezgeneral_digest_user_settings (
  id int(11) NOT NULL auto_increment,
  address varchar(255) NOT NULL default '',
  receive_digest int(11) NOT NULL default '0',
  digest_type int(11) NOT NULL default '0',
  day varchar(255) NOT NULL default '',
  time varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezgeneral_digest_user_settings'
--



--
-- Table structure for table 'ezimage'
--

CREATE TABLE ezimage (
  contentobject_attribute_id int(11) NOT NULL default '0',
  version int(11) NOT NULL default '0',
  filename varchar(255) NOT NULL default '',
  original_filename varchar(255) NOT NULL default '',
  mime_type varchar(50) NOT NULL default '',
  alternative_text varchar(255) NOT NULL default '',
  PRIMARY KEY  (contentobject_attribute_id,version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezimage'
--


INSERT INTO ezimage VALUES (103,4,'phpWJgae7.png','kaddressbook.png','image/png','');
INSERT INTO ezimage VALUES (103,5,'php7ZhvcB.png','chardevice.png','image/png','');
INSERT INTO ezimage VALUES (109,1,'phpvzmRGW.png','folder_txt.png','image/png','');
INSERT INTO ezimage VALUES (120,11,'phpG6qloJ.gif','ezpublish_logo_blue.gif','image/gif','');
INSERT INTO ezimage VALUES (152,15,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (120,13,'phpG6qloJ.gif','ezpublish_logo_blue.gif','image/gif','');
INSERT INTO ezimage VALUES (152,12,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,13,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,11,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,16,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,7,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,18,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,9,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,10,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,14,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (152,17,'phpZWf2sh.gif','phpCfM6Z4_600x600_68578.gif','image/gif','');
INSERT INTO ezimage VALUES (268,1,'php8lV61b.png','phphWMyJs.png','image/png','');
INSERT INTO ezimage VALUES (268,2,'php8lV61b.png','phphWMyJs.png','image/png','');
INSERT INTO ezimage VALUES (287,1,'phpjqUhJn.jpg','017_8_1small.jpg','image/jpeg','');
INSERT INTO ezimage VALUES (292,2,'phpCKfj8I.png','phpCG9Rrg_600x600_97870.png','image/png','');
INSERT INTO ezimage VALUES (293,2,'php2e1GsG.png','bj.png','image/png','');
INSERT INTO ezimage VALUES (293,3,'php2e1GsG.png','bj.png','image/png','');
INSERT INTO ezimage VALUES (103,6,'phpXz5esv.jpg','TN_a5.JPG','image/jpeg','');
INSERT INTO ezimage VALUES (109,2,'phppIJtoa.jpg','maidinmanhattantop.jpg','image/jpeg','');
INSERT INTO ezimage VALUES (103,7,'phpG0YSsD.png','gnome-settings.png','image/png','');
INSERT INTO ezimage VALUES (109,3,'phpAhcEu9.png','gnome-favorites.png','image/png','');
INSERT INTO ezimage VALUES (324,1,'php4sHmOe.png','gnome-ccperiph.png','image/png','');
INSERT INTO ezimage VALUES (109,4,'phpbVfzkm.png','gnome-devel.png','image/png','');
INSERT INTO ezimage VALUES (328,1,'php7a7vQE.png','gnome-globe.png','image/png','');
INSERT INTO ezimage VALUES (109,5,'phpvs7kFg.png','gnome-color-browser.png','image/png','');
INSERT INTO ezimage VALUES (400,2,'phprwazbD.jpg','vbanner.jpg','image/jpeg','');

--
-- Table structure for table 'ezimagefile'
--

CREATE TABLE ezimagefile (
  id int(11) NOT NULL auto_increment,
  contentobject_attribute_id int(11) NOT NULL default '0',
  filepath text NOT NULL,
  PRIMARY KEY  (id),
  KEY ezimagefile_coid (contentobject_attribute_id),
  KEY ezimagefile_file (filepath(200))
) TYPE=MyISAM;

--
-- Dumping data for table 'ezimagefile'
--


INSERT INTO ezimagefile VALUES (1,1104,'var/gallery/storage/images/nature/flowers/1104-1-eng-GB/flowers.');
INSERT INTO ezimagefile VALUES (3,1107,'var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower.jpg');
INSERT INTO ezimagefile VALUES (5,1110,'var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze.jpg');
INSERT INTO ezimagefile VALUES (7,1113,'var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower.jpg');
INSERT INTO ezimagefile VALUES (8,1107,'var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_small_h.jpg');
INSERT INTO ezimagefile VALUES (9,1113,'var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_small_h.jpg');
INSERT INTO ezimagefile VALUES (10,1110,'var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_small_h.jpg');
INSERT INTO ezimagefile VALUES (11,1113,'var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_small_v.jpg');
INSERT INTO ezimagefile VALUES (12,1110,'var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_small_v.jpg');
INSERT INTO ezimagefile VALUES (13,1107,'var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_small_v.jpg');
INSERT INTO ezimagefile VALUES (14,1117,'var/gallery/storage/images/nature/landscape/1117-1-eng-GB/landscape.');
INSERT INTO ezimagefile VALUES (16,1120,'var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection.jpg');
INSERT INTO ezimagefile VALUES (18,1123,'var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline.jpg');
INSERT INTO ezimagefile VALUES (20,1126,'var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees.jpg');
INSERT INTO ezimagefile VALUES (22,1129,'var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection.jpg');
INSERT INTO ezimagefile VALUES (23,1129,'var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_small_h.jpg');
INSERT INTO ezimagefile VALUES (24,1129,'var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_small_v.jpg');
INSERT INTO ezimagefile VALUES (25,1126,'var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_small_v.jpg');
INSERT INTO ezimagefile VALUES (26,1123,'var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_small_v.jpg');
INSERT INTO ezimagefile VALUES (27,1126,'var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_small_h.jpg');
INSERT INTO ezimagefile VALUES (28,1123,'var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_small_h.jpg');
INSERT INTO ezimagefile VALUES (29,1120,'var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection_small_h.jpg');
INSERT INTO ezimagefile VALUES (30,1113,'var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_navigator.jpg');
INSERT INTO ezimagefile VALUES (31,1113,'var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower_large.jpg');
INSERT INTO ezimagefile VALUES (32,1110,'var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_navigator.jpg');
INSERT INTO ezimagefile VALUES (33,1129,'var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_navigator.jpg');
INSERT INTO ezimagefile VALUES (34,1129,'var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection_large.jpg');
INSERT INTO ezimagefile VALUES (35,1126,'var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_navigator.jpg');
INSERT INTO ezimagefile VALUES (36,1136,'var/gallery/storage/images/abstract/misc/1136-1-eng-GB/misc.');
INSERT INTO ezimagefile VALUES (38,1139,'var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching.jpg');
INSERT INTO ezimagefile VALUES (40,1142,'var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel.jpg');
INSERT INTO ezimagefile VALUES (42,1145,'var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover.jpg');
INSERT INTO ezimagefile VALUES (44,1148,'var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits.jpg');
INSERT INTO ezimagefile VALUES (46,1151,'var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding.jpg');
INSERT INTO ezimagefile VALUES (47,1151,'var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_small_v.jpg');
INSERT INTO ezimagefile VALUES (48,1148,'var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_small_v.jpg');
INSERT INTO ezimagefile VALUES (49,1145,'var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_small_v.jpg');
INSERT INTO ezimagefile VALUES (50,1139,'var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching_small_h.jpg');
INSERT INTO ezimagefile VALUES (51,1151,'var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_small_h.jpg');
INSERT INTO ezimagefile VALUES (52,1148,'var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_small_h.jpg');
INSERT INTO ezimagefile VALUES (53,1145,'var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_small_h.jpg');
INSERT INTO ezimagefile VALUES (54,1151,'var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_large.jpg');
INSERT INTO ezimagefile VALUES (55,1148,'var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_navigator.jpg');
INSERT INTO ezimagefile VALUES (56,1142,'var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel_small_h.jpg');
INSERT INTO ezimagefile VALUES (57,1148,'var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits_large.jpg');
INSERT INTO ezimagefile VALUES (58,1151,'var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding_navigator.jpg');
INSERT INTO ezimagefile VALUES (59,1145,'var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_navigator.jpg');
INSERT INTO ezimagefile VALUES (60,1145,'var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover_large.jpg');
INSERT INTO ezimagefile VALUES (61,1142,'var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel_navigator.jpg');
INSERT INTO ezimagefile VALUES (62,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-54-eng-GB/my_gallery_logo.png');
INSERT INTO ezimagefile VALUES (63,1110,'var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze_large.jpg');
INSERT INTO ezimagefile VALUES (64,1107,'var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_navigator.jpg');
INSERT INTO ezimagefile VALUES (65,1136,'var/gallery/storage/images/abstract/misc/1136-2-eng-GB/misc.');
INSERT INTO ezimagefile VALUES (66,1104,'var/gallery/storage/images/nature/flowers/1104-2-eng-GB/flowers.');
INSERT INTO ezimagefile VALUES (67,1104,'var/gallery/storage/images/nature/flowers/1104-3-eng-GB/flowers.');
INSERT INTO ezimagefile VALUES (68,1117,'var/gallery/storage/images/nature/landscape/1117-2-eng-GB/landscape.');
INSERT INTO ezimagefile VALUES (69,1126,'var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees_large.jpg');
INSERT INTO ezimagefile VALUES (70,1123,'var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_navigator.jpg');
INSERT INTO ezimagefile VALUES (71,1123,'var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline_large.jpg');
INSERT INTO ezimagefile VALUES (72,1120,'var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection_navigator.jpg');
INSERT INTO ezimagefile VALUES (73,1120,'var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection_large.jpg');
INSERT INTO ezimagefile VALUES (74,1142,'var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel_large.jpg');
INSERT INTO ezimagefile VALUES (75,1139,'var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching_navigator.jpg');
INSERT INTO ezimagefile VALUES (76,1139,'var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching_large.jpg');
INSERT INTO ezimagefile VALUES (78,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-55-eng-GB/my_gallery.gif');
INSERT INTO ezimagefile VALUES (79,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-55-eng-GB/my_gallery_reference.gif');
INSERT INTO ezimagefile VALUES (80,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-55-eng-GB/my_gallery_medium.gif');
INSERT INTO ezimagefile VALUES (81,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-55-eng-GB/my_gallery_logo.gif');
INSERT INTO ezimagefile VALUES (82,1107,'var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower_large.jpg');
INSERT INTO ezimagefile VALUES (84,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-56-eng-GB/my_gallery.gif');
INSERT INTO ezimagefile VALUES (85,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-56-eng-GB/my_gallery_reference.gif');
INSERT INTO ezimagefile VALUES (86,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-56-eng-GB/my_gallery_medium.gif');
INSERT INTO ezimagefile VALUES (87,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-56-eng-GB/my_gallery_logo.gif');
INSERT INTO ezimagefile VALUES (88,103,'var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_reference.png');
INSERT INTO ezimagefile VALUES (89,103,'var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_large.png');
INSERT INTO ezimagefile VALUES (90,109,'var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel_reference.png');
INSERT INTO ezimagefile VALUES (91,109,'var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel_large.png');
INSERT INTO ezimagefile VALUES (92,324,'var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache_reference.png');
INSERT INTO ezimagefile VALUES (93,324,'var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache_large.png');
INSERT INTO ezimagefile VALUES (94,328,'var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator_reference.png');
INSERT INTO ezimagefile VALUES (95,328,'var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator_large.png');
INSERT INTO ezimagefile VALUES (96,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-57-eng-GB/my_gallery.gif');
INSERT INTO ezimagefile VALUES (97,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-57-eng-GB/my_gallery_reference.gif');
INSERT INTO ezimagefile VALUES (98,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-57-eng-GB/my_gallery_medium.gif');
INSERT INTO ezimagefile VALUES (99,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-57-eng-GB/my_gallery_logo.gif');
INSERT INTO ezimagefile VALUES (100,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-58-eng-GB/my_gallery.gif');
INSERT INTO ezimagefile VALUES (101,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-58-eng-GB/my_gallery_reference.gif');
INSERT INTO ezimagefile VALUES (102,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-58-eng-GB/my_gallery_medium.gif');
INSERT INTO ezimagefile VALUES (103,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-58-eng-GB/my_gallery_logo.gif');
INSERT INTO ezimagefile VALUES (104,524,'var/gallery/storage/images/about_my_gallery/524-3-eng-GB/about_my_gallery.');
INSERT INTO ezimagefile VALUES (105,926,'var/gallery/storage/images/news/added_new_gallery/926-2-eng-GB/added_new_gallery.jpg');
INSERT INTO ezimagefile VALUES (106,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-58-eng-GB/my_gallery_small_h.gif');
INSERT INTO ezimagefile VALUES (108,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-59-eng-GB/my_gallery.gif');
INSERT INTO ezimagefile VALUES (109,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-59-eng-GB/my_gallery_small_h.gif');
INSERT INTO ezimagefile VALUES (111,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-60-eng-GB/my_gallery.gif');
INSERT INTO ezimagefile VALUES (112,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-60-eng-GB/my_gallery_small_h.gif');
INSERT INTO ezimagefile VALUES (114,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery.gif');
INSERT INTO ezimagefile VALUES (115,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery_small_h.gif');
INSERT INTO ezimagefile VALUES (116,152,'var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery_logo.gif');
INSERT INTO ezimagefile VALUES (117,109,'var/storage/original/image/phpAhcEu9.png');
INSERT INTO ezimagefile VALUES (118,103,'var/storage/original/image/phpWJgae7.png');
INSERT INTO ezimagefile VALUES (119,109,'var/storage/original/image/phpbVfzkm.png');
INSERT INTO ezimagefile VALUES (120,103,'var/storage/original/image/php7ZhvcB.png');
INSERT INTO ezimagefile VALUES (121,103,'var/storage/original/image/phpXz5esv.jpg');
INSERT INTO ezimagefile VALUES (122,1190,'var/gallery/storage/images-versioned/1190/1-eng-GB/common_ini_settings1.png');
INSERT INTO ezimagefile VALUES (123,1190,'var/gallery/storage/images/setup/setup_links/common_ini_settings/1190-1-eng-GB/common_ini_settings.png');
INSERT INTO ezimagefile VALUES (124,1190,'var/gallery/storage/images-versioned/1190/1-eng-GB/common_ini_settings1_small_h.png');
INSERT INTO ezimagefile VALUES (125,1190,'var/gallery/storage/images-versioned/1190/1-eng-GB/common_ini_settings1_large.png');

--
-- Table structure for table 'ezimagevariation'
--

CREATE TABLE ezimagevariation (
  contentobject_attribute_id int(11) NOT NULL default '0',
  version int(11) NOT NULL default '0',
  filename varchar(255) NOT NULL default '',
  additional_path varchar(255) default NULL,
  requested_width int(11) NOT NULL default '0',
  requested_height int(11) NOT NULL default '0',
  width int(11) NOT NULL default '0',
  height int(11) NOT NULL default '0',
  PRIMARY KEY  (contentobject_attribute_id,version,requested_width,requested_height)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezimagevariation'
--


INSERT INTO ezimagevariation VALUES (103,4,'phpWJgae7_100x100_103.png','p/h/p',100,100,48,48);
INSERT INTO ezimagevariation VALUES (103,4,'phpWJgae7_600x600_103.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (103,5,'php7ZhvcB_100x100_103.png','p/h/p',100,100,48,48);
INSERT INTO ezimagevariation VALUES (109,1,'phpvzmRGW_100x100_109.png','p/h/p',100,100,48,48);
INSERT INTO ezimagevariation VALUES (103,5,'php7ZhvcB_600x600_103.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (109,1,'phpvzmRGW_600x600_109.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (293,2,'php2e1GsG_600x600_293.png','p/h/p',600,600,186,93);
INSERT INTO ezimagevariation VALUES (120,11,'phpG6qloJ_100x100_120.gif.png','p/h/p',100,100,100,16);
INSERT INTO ezimagevariation VALUES (292,2,'phpCKfj8I_600x600_292.png','p/h/p',600,600,186,93);
INSERT INTO ezimagevariation VALUES (152,13,'phpZWf2sh_100x100_152.gif.png','p/h/p',100,100,100,35);
INSERT INTO ezimagevariation VALUES (293,2,'php2e1GsG_100x100_293.png','p/h/p',100,100,100,50);
INSERT INTO ezimagevariation VALUES (120,11,'phpG6qloJ_600x600_120.gif.png','p/h/p',600,600,129,21);
INSERT INTO ezimagevariation VALUES (152,12,'phpZWf2sh_100x100_152.gif.png','p/h/p',100,100,100,35);
INSERT INTO ezimagevariation VALUES (152,11,'phpZWf2sh_100x100_152.gif.png','p/h/p',100,100,100,35);
INSERT INTO ezimagevariation VALUES (292,2,'phpCKfj8I_100x100_292.png','p/h/p',100,100,100,50);
INSERT INTO ezimagevariation VALUES (287,1,'phpjqUhJn_100x100_287.jpg','p/h/p',100,100,73,100);
INSERT INTO ezimagevariation VALUES (268,2,'php8lV61b_100x100_268.png','p/h/p',100,100,100,93);
INSERT INTO ezimagevariation VALUES (268,1,'php8lV61b_150x150_268.png','p/h/p',150,150,144,134);
INSERT INTO ezimagevariation VALUES (152,16,'phpZWf2sh_100x100_152.gif.png','p/h/p',100,100,100,35);
INSERT INTO ezimagevariation VALUES (152,7,'phpZWf2sh_100x100_152.gif.png','p/h/p',100,100,100,35);
INSERT INTO ezimagevariation VALUES (268,1,'php8lV61b_100x100_268.png','p/h/p',100,100,100,93);
INSERT INTO ezimagevariation VALUES (152,9,'phpZWf2sh_100x100_152.gif.png','p/h/p',100,100,100,35);
INSERT INTO ezimagevariation VALUES (152,10,'phpZWf2sh_100x100_152.gif.png','p/h/p',100,100,100,35);
INSERT INTO ezimagevariation VALUES (293,2,'php2e1GsG_150x150_293.png','p/h/p',150,150,150,75);
INSERT INTO ezimagevariation VALUES (292,2,'phpCKfj8I_150x150_292.png','p/h/p',150,150,150,75);
INSERT INTO ezimagevariation VALUES (293,3,'php2e1GsG_100x100_293.png','p/h/p',100,100,100,50);
INSERT INTO ezimagevariation VALUES (103,6,'phpXz5esv_600x600_103.jpg','p/h/p',600,600,377,600);
INSERT INTO ezimagevariation VALUES (109,2,'phppIJtoa_600x600_109.jpg','p/h/p',600,600,116,61);
INSERT INTO ezimagevariation VALUES (103,7,'phpG0YSsD_600x600_103.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (109,3,'phpAhcEu9_600x600_109.png','p/h/p',600,600,48,52);
INSERT INTO ezimagevariation VALUES (324,1,'php4sHmOe_600x600_324.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (109,4,'phpbVfzkm_600x600_109.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (328,1,'php7a7vQE_600x600_328.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (109,5,'phpvs7kFg_600x600_109.png','p/h/p',600,600,48,48);
INSERT INTO ezimagevariation VALUES (268,2,'php8lV61b_150x150_268.png','p/h/p',150,150,144,134);
INSERT INTO ezimagevariation VALUES (103,7,'phpG0YSsD_150x150_103.png','p/h/p',150,150,48,48);
INSERT INTO ezimagevariation VALUES (109,5,'phpvs7kFg_150x150_109.png','p/h/p',150,150,48,48);
INSERT INTO ezimagevariation VALUES (324,1,'php4sHmOe_150x150_324.png','p/h/p',150,150,48,48);
INSERT INTO ezimagevariation VALUES (328,1,'php7a7vQE_150x150_328.png','p/h/p',150,150,48,48);
INSERT INTO ezimagevariation VALUES (400,2,'phprwazbD_100x100_400.jpg','p/h/p',100,100,100,33);
INSERT INTO ezimagevariation VALUES (400,2,'phprwazbD_600x600_400.jpg','p/h/p',600,600,450,150);

--
-- Table structure for table 'ezinfocollection'
--

CREATE TABLE ezinfocollection (
  id int(11) NOT NULL auto_increment,
  contentobject_id int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  user_identifier varchar(34) default NULL,
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezinfocollection'
--



--
-- Table structure for table 'ezinfocollection_attribute'
--

CREATE TABLE ezinfocollection_attribute (
  id int(11) NOT NULL auto_increment,
  informationcollection_id int(11) NOT NULL default '0',
  data_text text,
  data_int int(11) default NULL,
  data_float float default NULL,
  contentclass_attribute_id int(11) NOT NULL default '0',
  contentobject_attribute_id int(11) default NULL,
  contentobject_id int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezinfocollection_attribute'
--



--
-- Table structure for table 'ezkeyword'
--

CREATE TABLE ezkeyword (
  id int(11) NOT NULL auto_increment,
  keyword varchar(255) default NULL,
  class_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezkeyword'
--



--
-- Table structure for table 'ezkeyword_attribute_link'
--

CREATE TABLE ezkeyword_attribute_link (
  id int(11) NOT NULL auto_increment,
  keyword_id int(11) NOT NULL default '0',
  objectattribute_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezkeyword_attribute_link'
--



--
-- Table structure for table 'ezmedia'
--

CREATE TABLE ezmedia (
  contentobject_attribute_id int(11) NOT NULL default '0',
  version int(11) NOT NULL default '0',
  filename varchar(255) NOT NULL default '',
  original_filename varchar(255) NOT NULL default '',
  mime_type varchar(50) NOT NULL default '',
  width int(11) default NULL,
  height int(11) default NULL,
  has_controller int(1) default NULL,
  is_autoplay int(1) default NULL,
  pluginspage varchar(255) default NULL,
  quality varchar(50) default NULL,
  controls varchar(50) default NULL,
  is_loop int(1) default NULL,
  PRIMARY KEY  (contentobject_attribute_id,version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezmedia'
--



--
-- Table structure for table 'ezmessage'
--

CREATE TABLE ezmessage (
  id int(11) NOT NULL auto_increment,
  send_method varchar(50) NOT NULL default '',
  send_weekday varchar(50) NOT NULL default '',
  send_time varchar(50) NOT NULL default '',
  destination_address varchar(50) NOT NULL default '',
  title varchar(255) NOT NULL default '',
  body text,
  is_sent int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezmessage'
--



--
-- Table structure for table 'ezmodule_run'
--

CREATE TABLE ezmodule_run (
  id int(11) NOT NULL auto_increment,
  workflow_process_id int(11) default NULL,
  module_name varchar(255) default NULL,
  function_name varchar(255) default NULL,
  module_data text,
  PRIMARY KEY  (id),
  UNIQUE KEY ezmodule_run_workflow_process_id_s (workflow_process_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezmodule_run'
--



--
-- Table structure for table 'eznode_assignment'
--

CREATE TABLE eznode_assignment (
  id int(11) NOT NULL auto_increment,
  contentobject_id int(11) default NULL,
  contentobject_version int(11) default NULL,
  parent_node int(11) default NULL,
  sort_field int(11) default '1',
  sort_order int(1) default '1',
  is_main int(11) NOT NULL default '0',
  from_node_id int(11) default '0',
  remote_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'eznode_assignment'
--


INSERT INTO eznode_assignment VALUES (4,8,2,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (144,4,1,1,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (691,332,1,259,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (148,9,1,2,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (151,12,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (152,13,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (575,267,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (182,41,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (183,42,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (651,43,11,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (185,44,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (193,46,2,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (706,56,61,48,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (681,322,1,249,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (553,1,7,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (652,45,12,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (694,335,1,259,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (650,115,6,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (685,326,1,253,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (687,328,1,253,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (500,14,5,13,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (680,321,1,249,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (698,324,2,248,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (697,320,3,248,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (684,325,1,253,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (686,327,1,253,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (688,329,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (693,334,1,259,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (690,331,1,259,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (692,333,1,259,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (702,161,3,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (653,116,5,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (695,330,2,258,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (703,268,2,199,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (682,323,1,249,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (678,319,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (707,11,2,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (709,337,1,12,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (710,338,1,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (712,10,2,266,9,1,1,5,0);
INSERT INTO eznode_assignment VALUES (713,339,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (714,340,1,267,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (715,341,1,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (716,340,2,267,9,1,1,0,0);

--
-- Table structure for table 'eznotificationcollection'
--

CREATE TABLE eznotificationcollection (
  id int(11) NOT NULL auto_increment,
  event_id int(11) NOT NULL default '0',
  handler varchar(255) NOT NULL default '',
  transport varchar(255) NOT NULL default '',
  data_subject text NOT NULL,
  data_text text NOT NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'eznotificationcollection'
--



--
-- Table structure for table 'eznotificationcollection_item'
--

CREATE TABLE eznotificationcollection_item (
  id int(11) NOT NULL auto_increment,
  collection_id int(11) NOT NULL default '0',
  event_id int(11) NOT NULL default '0',
  address varchar(255) NOT NULL default '',
  send_date int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'eznotificationcollection_item'
--



--
-- Table structure for table 'eznotificationevent'
--

CREATE TABLE eznotificationevent (
  id int(11) NOT NULL auto_increment,
  status int(11) NOT NULL default '0',
  event_type_string varchar(255) NOT NULL default '',
  data_int1 int(11) NOT NULL default '0',
  data_int2 int(11) NOT NULL default '0',
  data_int3 int(11) NOT NULL default '0',
  data_int4 int(11) NOT NULL default '0',
  data_text1 text NOT NULL,
  data_text2 text NOT NULL,
  data_text3 text NOT NULL,
  data_text4 text NOT NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'eznotificationevent'
--


INSERT INTO eznotificationevent VALUES (1,0,'ezpublish',339,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (2,0,'ezpublish',340,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (3,0,'ezpublish',341,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (4,0,'ezpublish',340,2,0,0,'','','','');

--
-- Table structure for table 'ezoperation_memento'
--

CREATE TABLE ezoperation_memento (
  id int(11) NOT NULL auto_increment,
  memento_key varchar(32) NOT NULL default '',
  memento_data text NOT NULL,
  main int(11) NOT NULL default '0',
  main_key varchar(32) NOT NULL default '',
  PRIMARY KEY  (id,memento_key),
  KEY ezoperation_memento_memento_key_main (memento_key,main)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezoperation_memento'
--



--
-- Table structure for table 'ezorder'
--

CREATE TABLE ezorder (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  productcollection_id int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  is_temporary int(11) NOT NULL default '1',
  order_nr int(11) NOT NULL default '0',
  data_text_2 text,
  data_text_1 text,
  account_identifier varchar(100) NOT NULL default 'default',
  ignore_vat int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezorder'
--



--
-- Table structure for table 'ezorder_item'
--

CREATE TABLE ezorder_item (
  id int(11) NOT NULL auto_increment,
  order_id int(11) NOT NULL default '0',
  description varchar(255) default NULL,
  price float default NULL,
  vat_value int(11) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY ezorder_item_order_id (order_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezorder_item'
--



--
-- Table structure for table 'ezpdf_export'
--

CREATE TABLE ezpdf_export (
  id int(11) NOT NULL auto_increment,
  title varchar(255) default NULL,
  show_frontpage int(11) default NULL,
  intro_text text,
  sub_text text,
  source_node_id int(11) default NULL,
  export_structure varchar(255) default NULL,
  export_classes varchar(255) default NULL,
  site_access varchar(255) default NULL,
  pdf_filename varchar(255) default NULL,
  modifier_id int(11) default NULL,
  modified int(11) default NULL,
  created int(11) default NULL,
  creator_id int(11) default NULL,
  status int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezpdf_export'
--



--
-- Table structure for table 'ezpolicy'
--

CREATE TABLE ezpolicy (
  id int(11) NOT NULL auto_increment,
  role_id int(11) default NULL,
  function_name varchar(255) default NULL,
  module_name varchar(255) default NULL,
  limitation char(1) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezpolicy'
--


INSERT INTO ezpolicy VALUES (308,2,'*','*','*');
INSERT INTO ezpolicy VALUES (396,1,'login','user','*');
INSERT INTO ezpolicy VALUES (392,8,'read','content','');
INSERT INTO ezpolicy VALUES (393,8,'create','content','');
INSERT INTO ezpolicy VALUES (394,8,'edit','content','');
INSERT INTO ezpolicy VALUES (395,8,'create','content','');
INSERT INTO ezpolicy VALUES (397,1,'read','content','');
INSERT INTO ezpolicy VALUES (398,1,'create','content','');
INSERT INTO ezpolicy VALUES (399,1,'edit','content','');

--
-- Table structure for table 'ezpolicy_limitation'
--

CREATE TABLE ezpolicy_limitation (
  id int(11) NOT NULL auto_increment,
  policy_id int(11) default NULL,
  identifier varchar(255) NOT NULL default '',
  role_id int(11) default NULL,
  function_name varchar(255) default NULL,
  module_name varchar(255) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezpolicy_limitation'
--


INSERT INTO ezpolicy_limitation VALUES (310,392,'Class',0,'read','content');
INSERT INTO ezpolicy_limitation VALUES (311,393,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (312,393,'ParentClass',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (313,394,'Owner',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (314,395,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (315,395,'ParentClass',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (316,397,'Class',0,'read','content');
INSERT INTO ezpolicy_limitation VALUES (317,398,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (318,399,'Class',0,'edit','content');

--
-- Table structure for table 'ezpolicy_limitation_value'
--

CREATE TABLE ezpolicy_limitation_value (
  id int(11) NOT NULL auto_increment,
  limitation_id int(11) default NULL,
  value varchar(255) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezpolicy_limitation_value'
--


INSERT INTO ezpolicy_limitation_value VALUES (644,310,'1');
INSERT INTO ezpolicy_limitation_value VALUES (645,310,'2');
INSERT INTO ezpolicy_limitation_value VALUES (646,310,'5');
INSERT INTO ezpolicy_limitation_value VALUES (647,310,'10');
INSERT INTO ezpolicy_limitation_value VALUES (648,310,'26');
INSERT INTO ezpolicy_limitation_value VALUES (649,310,'27');
INSERT INTO ezpolicy_limitation_value VALUES (650,310,'28');
INSERT INTO ezpolicy_limitation_value VALUES (651,311,'27');
INSERT INTO ezpolicy_limitation_value VALUES (652,312,'28');
INSERT INTO ezpolicy_limitation_value VALUES (653,313,'1');
INSERT INTO ezpolicy_limitation_value VALUES (654,314,'5');
INSERT INTO ezpolicy_limitation_value VALUES (655,315,'27');
INSERT INTO ezpolicy_limitation_value VALUES (656,316,'1');
INSERT INTO ezpolicy_limitation_value VALUES (657,316,'10');
INSERT INTO ezpolicy_limitation_value VALUES (658,316,'12');
INSERT INTO ezpolicy_limitation_value VALUES (659,316,'2');
INSERT INTO ezpolicy_limitation_value VALUES (660,316,'26');
INSERT INTO ezpolicy_limitation_value VALUES (661,316,'27');
INSERT INTO ezpolicy_limitation_value VALUES (662,316,'28');
INSERT INTO ezpolicy_limitation_value VALUES (663,316,'5');
INSERT INTO ezpolicy_limitation_value VALUES (664,317,'26');
INSERT INTO ezpolicy_limitation_value VALUES (665,318,'26');

--
-- Table structure for table 'ezpreferences'
--

CREATE TABLE ezpreferences (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  name varchar(100) default NULL,
  value varchar(100) default NULL,
  PRIMARY KEY  (id),
  KEY ezpreferences_name (name)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezpreferences'
--


INSERT INTO ezpreferences VALUES (1,14,'advanced_menu','on');

--
-- Table structure for table 'ezproductcollection'
--

CREATE TABLE ezproductcollection (
  id int(11) NOT NULL auto_increment,
  created int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezproductcollection'
--



--
-- Table structure for table 'ezproductcollection_item'
--

CREATE TABLE ezproductcollection_item (
  id int(11) NOT NULL auto_increment,
  productcollection_id int(11) NOT NULL default '0',
  contentobject_id int(11) NOT NULL default '0',
  item_count int(11) NOT NULL default '0',
  price double default NULL,
  is_vat_inc int(11) default NULL,
  vat_value float default NULL,
  discount float default NULL,
  PRIMARY KEY  (id),
  KEY ezproductcollection_item_productcollection_id (productcollection_id),
  KEY ezproductcollection_item_contentobject_id (productcollection_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezproductcollection_item'
--



--
-- Table structure for table 'ezproductcollection_item_opt'
--

CREATE TABLE ezproductcollection_item_opt (
  id int(11) NOT NULL auto_increment,
  item_id int(11) NOT NULL default '0',
  option_item_id int(11) NOT NULL default '0',
  name varchar(255) NOT NULL default '',
  value varchar(255) NOT NULL default '',
  price float NOT NULL default '0',
  object_attribute_id int(11) default NULL,
  PRIMARY KEY  (id),
  KEY ezproductcollection_item_opt_item_id (item_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezproductcollection_item_opt'
--



--
-- Table structure for table 'ezrole'
--

CREATE TABLE ezrole (
  id int(11) NOT NULL auto_increment,
  version int(11) default '0',
  name varchar(255) NOT NULL default '',
  value char(1) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezrole'
--


INSERT INTO ezrole VALUES (1,0,'Anonymous','');
INSERT INTO ezrole VALUES (2,0,'Administrator','*');
INSERT INTO ezrole VALUES (8,0,'Gallery editor',NULL);

--
-- Table structure for table 'ezrss_export'
--

CREATE TABLE ezrss_export (
  id int(11) NOT NULL auto_increment,
  title varchar(255) default NULL,
  modifier_id int(11) default NULL,
  modified int(11) default NULL,
  url varchar(255) default NULL,
  description text,
  image_id int(11) default NULL,
  active int(11) default NULL,
  access_url varchar(255) default NULL,
  created int(11) default NULL,
  creator_id int(11) default NULL,
  status int(11) default NULL,
  site_access varchar(255) default NULL,
  rss_version varchar(255) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezrss_export'
--



--
-- Table structure for table 'ezrss_export_item'
--

CREATE TABLE ezrss_export_item (
  id int(11) NOT NULL auto_increment,
  rssexport_id int(11) default NULL,
  source_node_id int(11) default NULL,
  class_id int(11) default NULL,
  title varchar(255) default NULL,
  description varchar(255) default NULL,
  PRIMARY KEY  (id),
  KEY ezrss_export_rsseid (rssexport_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezrss_export_item'
--



--
-- Table structure for table 'ezrss_import'
--

CREATE TABLE ezrss_import (
  id int(11) NOT NULL auto_increment,
  name varchar(255) default NULL,
  url text,
  destination_node_id int(11) default NULL,
  class_id int(11) default NULL,
  class_title varchar(255) default NULL,
  class_url varchar(255) default NULL,
  class_description varchar(255) default NULL,
  active int(11) default NULL,
  creator_id int(11) default NULL,
  created int(11) default NULL,
  modifier_id int(11) default NULL,
  modified int(11) default NULL,
  status int(11) default NULL,
  object_owner_id int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezrss_import'
--



--
-- Table structure for table 'ezsearch_object_word_link'
--

CREATE TABLE ezsearch_object_word_link (
  id int(11) NOT NULL auto_increment,
  contentobject_id int(11) NOT NULL default '0',
  word_id int(11) NOT NULL default '0',
  frequency float NOT NULL default '0',
  placement int(11) NOT NULL default '0',
  prev_word_id int(11) NOT NULL default '0',
  next_word_id int(11) NOT NULL default '0',
  contentclass_id int(11) NOT NULL default '0',
  published int(11) NOT NULL default '0',
  section_id int(11) NOT NULL default '0',
  contentclass_attribute_id int(11) NOT NULL default '0',
  identifier varchar(255) NOT NULL default '',
  integer_value int(11) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY ezsearch_object_word_link_object (contentobject_id),
  KEY ezsearch_object_word_link_word (word_id),
  KEY ezsearch_object_word_link_frequency (frequency),
  KEY ezsearch_object_word_link_identifier (identifier),
  KEY ezsearch_object_word_link_integer_value (integer_value)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsearch_object_word_link'
--


INSERT INTO ezsearch_object_word_link VALUES (7353,161,825,0,0,0,826,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7354,161,826,0,1,825,827,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7355,161,827,0,2,826,825,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7356,161,825,0,3,827,826,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7357,161,826,0,4,825,827,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7358,161,827,0,5,826,828,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7359,161,828,0,6,827,829,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7360,161,829,0,7,828,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7361,161,830,0,8,829,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7362,161,831,0,9,830,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7363,161,832,0,10,831,833,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7364,161,833,0,11,832,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7365,161,834,0,12,833,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7366,161,835,0,13,834,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7367,161,836,0,14,835,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7368,161,831,0,15,836,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7369,161,832,0,16,831,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7370,161,837,0,17,832,838,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7371,161,838,0,18,837,839,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7372,161,839,0,19,838,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7373,161,840,0,20,839,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7374,161,841,0,21,840,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7375,161,834,0,22,841,842,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7376,161,842,0,23,834,843,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7377,161,843,0,24,842,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7378,161,844,0,25,843,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7379,161,845,0,26,844,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7380,161,837,0,27,845,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7381,161,836,0,28,837,846,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7382,161,846,0,29,836,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7383,161,847,0,30,846,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7384,161,848,0,31,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7385,161,849,0,32,848,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7386,161,850,0,33,849,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7387,161,851,0,34,850,852,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7388,161,852,0,35,851,853,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7389,161,853,0,36,852,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7390,161,837,0,37,853,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7391,161,854,0,38,837,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7392,161,855,0,39,854,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7393,161,856,0,40,855,857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7394,161,857,0,41,856,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7395,161,858,0,42,857,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7396,161,859,0,43,858,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7397,161,860,0,44,859,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7398,161,861,0,45,860,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7399,161,862,0,46,861,863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7400,161,863,0,47,862,864,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7401,161,864,0,48,863,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7402,161,865,0,49,864,866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7403,161,866,0,50,865,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7404,161,867,0,51,866,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7405,161,847,0,52,867,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7406,161,835,0,53,847,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7407,161,868,0,54,835,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7408,161,869,0,55,868,870,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7409,161,870,0,56,869,871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7410,161,871,0,57,870,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7411,161,848,0,58,871,872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7412,161,872,0,59,848,873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7413,161,873,0,60,872,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7414,161,874,0,61,873,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7415,161,841,0,62,874,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7416,161,874,0,63,841,875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7417,161,875,0,64,874,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7418,161,876,0,65,875,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7419,161,836,0,66,876,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7420,161,859,0,67,836,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7421,161,877,0,68,859,878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7422,161,878,0,69,877,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7423,161,841,0,70,878,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7424,161,828,0,71,841,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7425,161,879,0,72,828,880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7426,161,880,0,73,879,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7427,161,881,0,74,880,882,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7428,161,882,0,75,881,883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7429,161,883,0,76,882,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7430,161,836,0,77,883,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7431,161,854,0,78,836,884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7432,161,884,0,79,854,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7433,161,885,0,80,884,886,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7434,161,886,0,81,885,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7435,161,887,0,82,886,888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7436,161,888,0,83,887,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7437,161,889,0,84,888,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7438,161,890,0,85,889,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7439,161,841,0,86,890,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7440,161,890,0,87,841,891,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7441,161,891,0,88,890,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7442,161,892,0,89,891,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7443,161,862,0,90,892,893,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7444,161,893,0,91,862,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7445,161,894,0,92,893,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7446,161,860,0,93,894,895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7447,161,895,0,94,860,896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7448,161,896,0,95,895,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7449,161,897,0,96,896,898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7450,161,898,0,97,897,899,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7451,161,899,0,98,898,900,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7452,161,900,0,99,899,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7453,161,849,0,100,900,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7454,161,901,0,101,849,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7455,161,902,0,102,901,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7456,161,903,0,103,902,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7457,161,904,0,104,903,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7458,161,894,0,105,904,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7459,161,845,0,106,894,905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7460,161,905,0,107,845,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7461,161,867,0,108,905,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7462,161,836,0,109,867,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7463,161,877,0,110,836,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7464,161,861,0,111,877,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7465,161,856,0,112,861,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7466,161,828,0,113,856,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7467,161,906,0,114,828,907,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7468,161,907,0,115,906,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7469,161,841,0,116,907,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7470,161,841,0,117,841,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7471,161,892,0,118,841,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7472,161,877,0,119,892,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7473,161,847,0,120,877,908,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7474,161,908,0,121,847,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7475,161,909,0,122,908,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7476,161,836,0,123,909,910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7477,161,910,0,124,836,911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7478,161,911,0,125,910,912,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7479,161,912,0,126,911,913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7480,161,913,0,127,912,914,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7481,161,914,0,128,913,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7482,161,847,0,129,914,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7483,161,879,0,130,847,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7484,161,915,0,131,879,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7485,161,841,0,132,915,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7486,161,881,0,133,841,916,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7487,161,916,0,134,881,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7488,161,830,0,135,916,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7489,161,862,0,136,830,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7490,161,869,0,137,862,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7491,161,902,0,138,869,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7492,161,885,0,139,902,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7493,161,865,0,140,885,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7494,161,859,0,141,865,917,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7495,161,917,0,142,859,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7496,161,881,0,143,917,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7497,161,877,0,144,881,918,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7498,161,918,0,145,877,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7499,161,850,0,146,918,919,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7500,161,919,0,147,850,920,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7501,161,920,0,148,919,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7502,161,887,0,149,920,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7503,161,848,0,150,887,921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7504,161,921,0,151,848,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7505,161,894,0,152,921,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7506,161,868,0,153,894,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7507,161,906,0,154,868,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7508,161,840,0,155,906,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7509,161,909,0,156,840,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7510,161,903,0,157,909,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7511,161,858,0,158,903,922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7512,161,922,0,159,858,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7513,161,868,0,160,922,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7514,161,897,0,161,868,923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7515,161,923,0,162,897,924,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7516,161,924,0,163,923,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7517,161,844,0,164,924,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7518,161,887,0,165,844,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7519,161,876,0,166,887,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7520,161,897,0,167,876,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7521,161,830,0,168,897,925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7522,161,925,0,169,830,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7523,161,847,0,170,925,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7524,161,906,0,171,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7525,161,849,0,172,906,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7526,161,861,0,173,849,926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7527,161,926,0,174,861,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7528,161,834,0,175,926,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7529,161,889,0,176,834,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7530,161,847,0,177,889,927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7531,161,927,0,178,847,928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7532,161,928,0,179,927,929,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7533,161,929,0,180,928,930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7534,161,930,0,181,929,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7535,161,897,0,182,930,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7536,161,851,0,183,897,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7537,161,855,0,184,851,931,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7538,161,931,0,185,855,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7539,161,901,0,186,931,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7540,161,906,0,187,901,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7541,161,854,0,188,906,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7542,161,835,0,189,854,932,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7543,161,932,0,190,835,933,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7544,161,933,0,191,932,934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7545,161,934,0,192,933,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7546,161,904,0,193,934,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7547,161,915,0,194,904,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7548,161,887,0,195,915,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7549,161,847,0,196,887,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7550,161,828,0,197,847,829,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7551,161,829,0,198,828,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7552,161,830,0,199,829,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7553,161,831,0,200,830,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7554,161,832,0,201,831,833,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7555,161,833,0,202,832,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7556,161,834,0,203,833,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7557,161,835,0,204,834,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7558,161,836,0,205,835,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7559,161,831,0,206,836,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7560,161,832,0,207,831,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7561,161,837,0,208,832,838,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7562,161,838,0,209,837,839,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7563,161,839,0,210,838,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7564,161,840,0,211,839,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7565,161,841,0,212,840,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7566,161,834,0,213,841,842,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7567,161,842,0,214,834,843,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7568,161,843,0,215,842,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7569,161,844,0,216,843,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7570,161,845,0,217,844,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7571,161,837,0,218,845,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7572,161,836,0,219,837,846,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7573,161,846,0,220,836,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7574,161,847,0,221,846,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7575,161,848,0,222,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7576,161,849,0,223,848,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7577,161,850,0,224,849,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7578,161,851,0,225,850,852,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7579,161,852,0,226,851,853,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7580,161,853,0,227,852,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7581,161,837,0,228,853,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7582,161,854,0,229,837,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7583,161,855,0,230,854,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7584,161,856,0,231,855,857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7585,161,857,0,232,856,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7586,161,858,0,233,857,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7587,161,859,0,234,858,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7588,161,860,0,235,859,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7589,161,861,0,236,860,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7590,161,862,0,237,861,863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7591,161,863,0,238,862,864,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7592,161,864,0,239,863,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7593,161,865,0,240,864,866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7594,161,866,0,241,865,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7595,161,867,0,242,866,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7596,161,847,0,243,867,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7597,161,835,0,244,847,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7598,161,868,0,245,835,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7599,161,869,0,246,868,870,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7600,161,870,0,247,869,871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7601,161,871,0,248,870,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7602,161,848,0,249,871,872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7603,161,872,0,250,848,873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7604,161,873,0,251,872,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7605,161,874,0,252,873,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7606,161,841,0,253,874,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7607,161,874,0,254,841,875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7608,161,875,0,255,874,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7609,161,876,0,256,875,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7610,161,836,0,257,876,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7611,161,859,0,258,836,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7612,161,877,0,259,859,878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7613,161,878,0,260,877,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7614,161,841,0,261,878,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7615,161,828,0,262,841,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7616,161,879,0,263,828,880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7617,161,880,0,264,879,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7618,161,881,0,265,880,882,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7619,161,882,0,266,881,883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7620,161,883,0,267,882,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7621,161,836,0,268,883,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7622,161,854,0,269,836,884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7623,161,884,0,270,854,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7624,161,885,0,271,884,886,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7625,161,886,0,272,885,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7626,161,887,0,273,886,888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7627,161,888,0,274,887,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7628,161,889,0,275,888,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7629,161,890,0,276,889,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7630,161,841,0,277,890,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7631,161,890,0,278,841,891,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7632,161,891,0,279,890,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7633,161,892,0,280,891,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7634,161,862,0,281,892,893,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7635,161,893,0,282,862,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7636,161,894,0,283,893,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7637,161,860,0,284,894,895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7638,161,895,0,285,860,896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7639,161,896,0,286,895,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7640,161,897,0,287,896,898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7641,161,898,0,288,897,899,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7642,161,899,0,289,898,900,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7643,161,900,0,290,899,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7644,161,849,0,291,900,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7645,161,901,0,292,849,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7646,161,902,0,293,901,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7647,161,903,0,294,902,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7648,161,904,0,295,903,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7649,161,894,0,296,904,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7650,161,845,0,297,894,905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7651,161,905,0,298,845,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7652,161,867,0,299,905,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7653,161,836,0,300,867,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7654,161,877,0,301,836,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7655,161,861,0,302,877,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7656,161,856,0,303,861,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7657,161,828,0,304,856,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7658,161,906,0,305,828,907,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7659,161,907,0,306,906,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7660,161,841,0,307,907,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7661,161,841,0,308,841,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7662,161,892,0,309,841,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7663,161,877,0,310,892,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7664,161,847,0,311,877,908,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7665,161,908,0,312,847,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7666,161,909,0,313,908,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7667,161,836,0,314,909,910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7668,161,910,0,315,836,911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7669,161,911,0,316,910,912,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7670,161,912,0,317,911,913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7671,161,913,0,318,912,914,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7672,161,914,0,319,913,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7673,161,847,0,320,914,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7674,161,879,0,321,847,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7675,161,915,0,322,879,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7676,161,841,0,323,915,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7677,161,881,0,324,841,916,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7678,161,916,0,325,881,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7679,161,830,0,326,916,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7680,161,862,0,327,830,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7681,161,869,0,328,862,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7682,161,902,0,329,869,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7683,161,885,0,330,902,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7684,161,865,0,331,885,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7685,161,859,0,332,865,917,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7686,161,917,0,333,859,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7687,161,881,0,334,917,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7688,161,877,0,335,881,918,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7689,161,918,0,336,877,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7690,161,850,0,337,918,919,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7691,161,919,0,338,850,920,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7692,161,920,0,339,919,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7693,161,887,0,340,920,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7694,161,848,0,341,887,921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7695,161,921,0,342,848,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7696,161,894,0,343,921,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7697,161,868,0,344,894,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7698,161,906,0,345,868,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7699,161,840,0,346,906,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7700,161,909,0,347,840,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7701,161,903,0,348,909,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7702,161,858,0,349,903,922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7703,161,922,0,350,858,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7704,161,868,0,351,922,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7705,161,897,0,352,868,923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7706,161,923,0,353,897,924,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7707,161,924,0,354,923,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7708,161,844,0,355,924,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7709,161,887,0,356,844,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7710,161,876,0,357,887,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7711,161,897,0,358,876,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7712,161,830,0,359,897,925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7713,161,925,0,360,830,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7714,161,847,0,361,925,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7715,161,906,0,362,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7716,161,849,0,363,906,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7717,161,861,0,364,849,926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7718,161,926,0,365,861,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7719,161,834,0,366,926,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7720,161,889,0,367,834,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7721,161,847,0,368,889,927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7722,161,927,0,369,847,928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7723,161,928,0,370,927,929,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7724,161,929,0,371,928,930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7725,161,930,0,372,929,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7726,161,897,0,373,930,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7727,161,851,0,374,897,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7728,161,855,0,375,851,931,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7729,161,931,0,376,855,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7730,161,901,0,377,931,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7731,161,906,0,378,901,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7732,161,854,0,379,906,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7733,161,835,0,380,854,932,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7734,161,932,0,381,835,933,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7735,161,933,0,382,932,934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7736,161,934,0,383,933,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7737,161,904,0,384,934,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7738,161,915,0,385,904,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7739,161,887,0,386,915,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7740,161,847,0,387,887,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7741,161,828,0,388,847,829,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7742,161,829,0,389,828,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7743,161,830,0,390,829,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7744,161,831,0,391,830,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7745,161,832,0,392,831,833,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7746,161,833,0,393,832,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7747,161,834,0,394,833,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7748,161,835,0,395,834,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7749,161,836,0,396,835,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7750,161,831,0,397,836,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7751,161,832,0,398,831,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7752,161,837,0,399,832,838,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7753,161,838,0,400,837,839,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7754,161,839,0,401,838,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7755,161,840,0,402,839,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7756,161,841,0,403,840,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7757,161,834,0,404,841,842,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7758,161,842,0,405,834,843,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7759,161,843,0,406,842,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7760,161,844,0,407,843,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7761,161,845,0,408,844,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7762,161,837,0,409,845,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7763,161,836,0,410,837,846,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7764,161,846,0,411,836,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7765,161,847,0,412,846,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7766,161,848,0,413,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7767,161,849,0,414,848,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7768,161,850,0,415,849,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7769,161,851,0,416,850,852,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7770,161,852,0,417,851,853,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7771,161,853,0,418,852,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7772,161,837,0,419,853,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7773,161,854,0,420,837,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7774,161,855,0,421,854,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7775,161,856,0,422,855,857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7776,161,857,0,423,856,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7777,161,858,0,424,857,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7778,161,859,0,425,858,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7779,161,860,0,426,859,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7780,161,861,0,427,860,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7781,161,862,0,428,861,863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7782,161,863,0,429,862,864,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7783,161,864,0,430,863,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7784,161,865,0,431,864,866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7785,161,866,0,432,865,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7786,161,867,0,433,866,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7787,161,847,0,434,867,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7788,161,835,0,435,847,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7789,161,868,0,436,835,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7790,161,869,0,437,868,870,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7791,161,870,0,438,869,871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7792,161,871,0,439,870,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7793,161,848,0,440,871,872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7794,161,872,0,441,848,873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7795,161,873,0,442,872,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7796,161,874,0,443,873,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7797,161,841,0,444,874,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7798,161,874,0,445,841,875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7799,161,875,0,446,874,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7800,161,876,0,447,875,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7801,161,836,0,448,876,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7802,161,859,0,449,836,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7803,161,877,0,450,859,878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7804,161,878,0,451,877,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7805,161,841,0,452,878,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7806,161,828,0,453,841,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7807,161,879,0,454,828,880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7808,161,880,0,455,879,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7809,161,881,0,456,880,882,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7810,161,882,0,457,881,883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7811,161,883,0,458,882,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7812,161,836,0,459,883,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7813,161,854,0,460,836,884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7814,161,884,0,461,854,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7815,161,885,0,462,884,886,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7816,161,886,0,463,885,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7817,161,887,0,464,886,888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7818,161,888,0,465,887,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7819,161,889,0,466,888,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7820,161,890,0,467,889,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7821,161,841,0,468,890,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7822,161,890,0,469,841,891,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7823,161,891,0,470,890,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7824,161,892,0,471,891,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7825,161,862,0,472,892,893,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7826,161,893,0,473,862,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7827,161,894,0,474,893,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7828,161,860,0,475,894,895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7829,161,895,0,476,860,896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7830,161,896,0,477,895,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7831,161,897,0,478,896,898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7832,161,898,0,479,897,899,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7833,161,899,0,480,898,900,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7834,161,900,0,481,899,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7835,161,849,0,482,900,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7836,161,901,0,483,849,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7837,161,902,0,484,901,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7838,161,903,0,485,902,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7839,161,904,0,486,903,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7840,161,894,0,487,904,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7841,161,845,0,488,894,905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7842,161,905,0,489,845,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7843,161,867,0,490,905,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7844,161,836,0,491,867,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7845,161,877,0,492,836,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7846,161,861,0,493,877,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7847,161,856,0,494,861,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7848,161,828,0,495,856,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7849,161,906,0,496,828,907,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7850,161,907,0,497,906,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7851,161,841,0,498,907,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7852,161,841,0,499,841,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7853,161,892,0,500,841,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7854,161,877,0,501,892,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7855,161,847,0,502,877,908,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7856,161,908,0,503,847,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7857,161,909,0,504,908,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7858,161,836,0,505,909,910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7859,161,910,0,506,836,911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7860,161,911,0,507,910,912,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7861,161,912,0,508,911,913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7862,161,913,0,509,912,914,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7863,161,914,0,510,913,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7864,161,847,0,511,914,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7865,161,879,0,512,847,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7866,161,915,0,513,879,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7867,161,841,0,514,915,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7868,161,881,0,515,841,916,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7869,161,916,0,516,881,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7870,161,830,0,517,916,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7871,161,862,0,518,830,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7872,161,869,0,519,862,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7873,161,902,0,520,869,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7874,161,885,0,521,902,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7875,161,865,0,522,885,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7876,161,859,0,523,865,917,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7877,161,917,0,524,859,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7878,161,881,0,525,917,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7879,161,877,0,526,881,918,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7880,161,918,0,527,877,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7881,161,850,0,528,918,919,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7882,161,919,0,529,850,920,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7883,161,920,0,530,919,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7884,161,887,0,531,920,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7885,161,848,0,532,887,921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7886,161,921,0,533,848,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7887,161,894,0,534,921,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7888,161,868,0,535,894,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7889,161,906,0,536,868,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7890,161,840,0,537,906,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7891,161,909,0,538,840,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7892,161,903,0,539,909,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7893,161,858,0,540,903,922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7894,161,922,0,541,858,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7895,161,868,0,542,922,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7896,161,897,0,543,868,923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7897,161,923,0,544,897,924,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7898,161,924,0,545,923,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7899,161,844,0,546,924,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7900,161,887,0,547,844,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7901,161,876,0,548,887,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7902,161,897,0,549,876,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7903,161,830,0,550,897,925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7904,161,925,0,551,830,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7905,161,847,0,552,925,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7906,161,906,0,553,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7907,161,849,0,554,906,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7908,161,861,0,555,849,926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7909,161,926,0,556,861,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7910,161,834,0,557,926,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7911,161,889,0,558,834,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7912,161,847,0,559,889,927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7913,161,927,0,560,847,928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7914,161,928,0,561,927,929,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7915,161,929,0,562,928,930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7916,161,930,0,563,929,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7917,161,897,0,564,930,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7918,161,851,0,565,897,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7919,161,855,0,566,851,931,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7920,161,931,0,567,855,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7921,161,901,0,568,931,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7922,161,906,0,569,901,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7923,161,854,0,570,906,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7924,161,835,0,571,854,932,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7925,161,932,0,572,835,933,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7926,161,933,0,573,932,934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7927,161,934,0,574,933,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7928,161,904,0,575,934,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7929,161,915,0,576,904,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7930,161,887,0,577,915,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7931,161,847,0,578,887,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7932,161,828,0,579,847,829,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7933,161,829,0,580,828,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7934,161,830,0,581,829,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7935,161,831,0,582,830,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7936,161,832,0,583,831,833,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7937,161,833,0,584,832,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7938,161,834,0,585,833,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7939,161,835,0,586,834,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7940,161,836,0,587,835,831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7941,161,831,0,588,836,832,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7942,161,832,0,589,831,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7943,161,837,0,590,832,838,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7944,161,838,0,591,837,839,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7945,161,839,0,592,838,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7946,161,840,0,593,839,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7947,161,841,0,594,840,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7948,161,834,0,595,841,842,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7949,161,842,0,596,834,843,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7950,161,843,0,597,842,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7951,161,844,0,598,843,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7952,161,845,0,599,844,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7953,161,837,0,600,845,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7954,161,836,0,601,837,846,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7955,161,846,0,602,836,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7956,161,847,0,603,846,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7957,161,848,0,604,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7958,161,849,0,605,848,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7959,161,850,0,606,849,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7960,161,851,0,607,850,852,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7961,161,852,0,608,851,853,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7962,161,853,0,609,852,837,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7963,161,837,0,610,853,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7964,161,854,0,611,837,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7965,161,855,0,612,854,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7966,161,856,0,613,855,857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7967,161,857,0,614,856,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7968,161,858,0,615,857,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7969,161,859,0,616,858,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7970,161,860,0,617,859,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7971,161,861,0,618,860,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7972,161,862,0,619,861,863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7973,161,863,0,620,862,864,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7974,161,864,0,621,863,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7975,161,865,0,622,864,866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7976,161,866,0,623,865,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7977,161,867,0,624,866,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7978,161,847,0,625,867,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7979,161,835,0,626,847,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7980,161,868,0,627,835,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7981,161,869,0,628,868,870,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7982,161,870,0,629,869,871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7983,161,871,0,630,870,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7984,161,848,0,631,871,872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7985,161,872,0,632,848,873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7986,161,873,0,633,872,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7987,161,874,0,634,873,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7988,161,841,0,635,874,874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7989,161,874,0,636,841,875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7990,161,875,0,637,874,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7991,161,876,0,638,875,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7992,161,836,0,639,876,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7993,161,859,0,640,836,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7994,161,877,0,641,859,878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7995,161,878,0,642,877,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7996,161,841,0,643,878,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7997,161,828,0,644,841,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7998,161,879,0,645,828,880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (7999,161,880,0,646,879,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8000,161,881,0,647,880,882,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8001,161,882,0,648,881,883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8002,161,883,0,649,882,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8003,161,836,0,650,883,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8004,161,854,0,651,836,884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8005,161,884,0,652,854,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8006,161,885,0,653,884,886,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8007,161,886,0,654,885,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8008,161,887,0,655,886,888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8009,161,888,0,656,887,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8010,161,889,0,657,888,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8011,161,890,0,658,889,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8012,161,841,0,659,890,890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8013,161,890,0,660,841,891,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8014,161,891,0,661,890,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8015,161,892,0,662,891,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8016,161,862,0,663,892,893,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8017,161,893,0,664,862,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8018,161,894,0,665,893,860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8019,161,860,0,666,894,895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8020,161,895,0,667,860,896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8021,161,896,0,668,895,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8022,161,897,0,669,896,898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8023,161,898,0,670,897,899,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8024,161,899,0,671,898,900,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8025,161,900,0,672,899,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8026,161,849,0,673,900,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8027,161,901,0,674,849,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8028,161,902,0,675,901,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8029,161,903,0,676,902,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8030,161,904,0,677,903,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8031,161,894,0,678,904,845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8032,161,845,0,679,894,905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8033,161,905,0,680,845,867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8034,161,867,0,681,905,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8035,161,836,0,682,867,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8036,161,877,0,683,836,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8037,161,861,0,684,877,856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8038,161,856,0,685,861,828,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8039,161,828,0,686,856,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8040,161,906,0,687,828,907,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8041,161,907,0,688,906,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8042,161,841,0,689,907,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8043,161,841,0,690,841,892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8044,161,892,0,691,841,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8045,161,877,0,692,892,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8046,161,847,0,693,877,908,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8047,161,908,0,694,847,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8048,161,909,0,695,908,836,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8049,161,836,0,696,909,910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8050,161,910,0,697,836,911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8051,161,911,0,698,910,912,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8052,161,912,0,699,911,913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8053,161,913,0,700,912,914,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8054,161,914,0,701,913,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8055,161,847,0,702,914,879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8056,161,879,0,703,847,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8057,161,915,0,704,879,841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8058,161,841,0,705,915,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8059,161,881,0,706,841,916,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8060,161,916,0,707,881,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8061,161,830,0,708,916,862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8062,161,862,0,709,830,869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8063,161,869,0,710,862,902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8064,161,902,0,711,869,885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8065,161,885,0,712,902,865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8066,161,865,0,713,885,859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8067,161,859,0,714,865,917,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8068,161,917,0,715,859,881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8069,161,881,0,716,917,877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8070,161,877,0,717,881,918,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8071,161,918,0,718,877,850,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8072,161,850,0,719,918,919,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8073,161,919,0,720,850,920,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8074,161,920,0,721,919,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8075,161,887,0,722,920,848,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8076,161,848,0,723,887,921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8077,161,921,0,724,848,894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8078,161,894,0,725,921,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8079,161,868,0,726,894,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8080,161,906,0,727,868,840,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8081,161,840,0,728,906,909,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8082,161,909,0,729,840,903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8083,161,903,0,730,909,858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8084,161,858,0,731,903,922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8085,161,922,0,732,858,868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8086,161,868,0,733,922,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8087,161,897,0,734,868,923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8088,161,923,0,735,897,924,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8089,161,924,0,736,923,844,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8090,161,844,0,737,924,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8091,161,887,0,738,844,876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8092,161,876,0,739,887,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8093,161,897,0,740,876,830,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8094,161,830,0,741,897,925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8095,161,925,0,742,830,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8096,161,847,0,743,925,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8097,161,906,0,744,847,849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8098,161,849,0,745,906,861,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8099,161,861,0,746,849,926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8100,161,926,0,747,861,834,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8101,161,834,0,748,926,889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8102,161,889,0,749,834,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8103,161,847,0,750,889,927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8104,161,927,0,751,847,928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8105,161,928,0,752,927,929,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8106,161,929,0,753,928,930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8107,161,930,0,754,929,897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8108,161,897,0,755,930,851,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8109,161,851,0,756,897,855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8110,161,855,0,757,851,931,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8111,161,931,0,758,855,901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8112,161,901,0,759,931,906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8113,161,906,0,760,901,854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8114,161,854,0,761,906,835,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8115,161,835,0,762,854,932,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8116,161,932,0,763,835,933,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8117,161,933,0,764,932,934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8118,161,934,0,765,933,904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8119,161,904,0,766,934,915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8120,161,915,0,767,904,887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8121,161,887,0,768,915,847,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8122,161,847,0,769,887,0,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8123,267,935,0,0,0,935,1,1068814364,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8124,267,935,0,1,935,936,1,1068814364,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8125,267,936,0,2,935,936,1,1068814364,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8126,267,936,0,3,936,0,1,1068814364,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8127,268,937,0,0,0,938,2,1068814752,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8128,268,938,0,1,937,827,2,1068814752,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8129,268,827,0,2,938,937,2,1068814752,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8130,268,937,0,3,827,938,2,1068814752,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8131,268,938,0,4,937,827,2,1068814752,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8132,268,827,0,5,938,828,2,1068814752,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8133,268,828,0,6,827,829,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8134,268,829,0,7,828,830,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8135,268,830,0,8,829,831,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8136,268,831,0,9,830,832,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8137,268,832,0,10,831,833,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8138,268,833,0,11,832,834,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8139,268,834,0,12,833,835,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8140,268,835,0,13,834,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8141,268,836,0,14,835,831,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8142,268,831,0,15,836,832,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8143,268,832,0,16,831,837,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8144,268,837,0,17,832,838,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8145,268,838,0,18,837,839,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8146,268,839,0,19,838,840,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8147,268,840,0,20,839,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8148,268,841,0,21,840,834,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8149,268,834,0,22,841,842,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8150,268,842,0,23,834,843,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8151,268,843,0,24,842,844,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8152,268,844,0,25,843,845,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8153,268,845,0,26,844,837,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8154,268,837,0,27,845,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8155,268,836,0,28,837,846,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8156,268,846,0,29,836,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8157,268,847,0,30,846,848,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8158,268,848,0,31,847,849,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8159,268,849,0,32,848,850,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8160,268,850,0,33,849,851,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8161,268,851,0,34,850,852,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8162,268,852,0,35,851,853,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8163,268,853,0,36,852,837,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8164,268,837,0,37,853,854,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8165,268,854,0,38,837,855,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8166,268,855,0,39,854,856,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8167,268,856,0,40,855,857,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8168,268,857,0,41,856,858,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8169,268,858,0,42,857,859,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8170,268,859,0,43,858,860,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8171,268,860,0,44,859,861,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8172,268,861,0,45,860,862,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8173,268,862,0,46,861,863,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8174,268,863,0,47,862,864,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8175,268,864,0,48,863,865,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8176,268,865,0,49,864,866,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8177,268,866,0,50,865,867,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8178,268,867,0,51,866,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8179,268,847,0,52,867,835,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8180,268,835,0,53,847,868,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8181,268,868,0,54,835,869,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8182,268,869,0,55,868,870,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8183,268,870,0,56,869,871,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8184,268,871,0,57,870,848,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8185,268,848,0,58,871,872,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8186,268,872,0,59,848,873,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8187,268,873,0,60,872,874,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8188,268,874,0,61,873,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8189,268,841,0,62,874,874,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8190,268,874,0,63,841,875,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8191,268,875,0,64,874,876,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8192,268,876,0,65,875,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8193,268,836,0,66,876,859,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8194,268,859,0,67,836,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8195,268,877,0,68,859,878,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8196,268,878,0,69,877,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8197,268,841,0,70,878,828,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8198,268,828,0,71,841,879,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8199,268,879,0,72,828,880,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8200,268,880,0,73,879,881,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8201,268,881,0,74,880,882,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8202,268,882,0,75,881,883,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8203,268,883,0,76,882,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8204,268,836,0,77,883,854,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8205,268,854,0,78,836,884,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8206,268,884,0,79,854,885,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8207,268,885,0,80,884,886,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8208,268,886,0,81,885,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8209,268,887,0,82,886,888,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8210,268,888,0,83,887,889,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8211,268,889,0,84,888,890,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8212,268,890,0,85,889,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8213,268,841,0,86,890,890,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8214,268,890,0,87,841,891,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8215,268,891,0,88,890,892,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8216,268,892,0,89,891,862,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8217,268,862,0,90,892,893,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8218,268,893,0,91,862,894,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8219,268,894,0,92,893,860,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8220,268,860,0,93,894,895,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8221,268,895,0,94,860,896,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8222,268,896,0,95,895,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8223,268,897,0,96,896,898,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8224,268,898,0,97,897,899,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8225,268,899,0,98,898,900,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8226,268,900,0,99,899,849,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8227,268,849,0,100,900,901,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8228,268,901,0,101,849,902,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8229,268,902,0,102,901,903,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8230,268,903,0,103,902,904,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8231,268,904,0,104,903,894,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8232,268,894,0,105,904,845,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8233,268,845,0,106,894,905,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8234,268,905,0,107,845,867,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8235,268,867,0,108,905,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8236,268,836,0,109,867,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8237,268,877,0,110,836,861,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8238,268,861,0,111,877,856,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8239,268,856,0,112,861,828,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8240,268,828,0,113,856,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8241,268,906,0,114,828,907,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8242,268,907,0,115,906,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8243,268,841,0,116,907,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8244,268,841,0,117,841,892,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8245,268,892,0,118,841,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8246,268,877,0,119,892,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8247,268,847,0,120,877,908,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8248,268,908,0,121,847,909,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8249,268,909,0,122,908,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8250,268,836,0,123,909,910,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8251,268,910,0,124,836,911,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8252,268,911,0,125,910,912,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8253,268,912,0,126,911,913,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8254,268,913,0,127,912,914,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8255,268,914,0,128,913,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8256,268,847,0,129,914,879,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8257,268,879,0,130,847,915,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8258,268,915,0,131,879,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8259,268,841,0,132,915,881,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8260,268,881,0,133,841,916,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8261,268,916,0,134,881,830,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8262,268,830,0,135,916,862,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8263,268,862,0,136,830,869,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8264,268,869,0,137,862,902,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8265,268,902,0,138,869,885,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8266,268,885,0,139,902,865,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8267,268,865,0,140,885,859,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8268,268,859,0,141,865,917,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8269,268,917,0,142,859,881,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8270,268,881,0,143,917,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8271,268,877,0,144,881,918,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8272,268,918,0,145,877,850,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8273,268,850,0,146,918,919,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8274,268,919,0,147,850,920,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8275,268,920,0,148,919,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8276,268,887,0,149,920,848,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8277,268,848,0,150,887,921,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8278,268,921,0,151,848,894,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8279,268,894,0,152,921,868,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8280,268,868,0,153,894,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8281,268,906,0,154,868,840,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8282,268,840,0,155,906,909,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8283,268,909,0,156,840,903,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8284,268,903,0,157,909,858,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8285,268,858,0,158,903,922,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8286,268,922,0,159,858,868,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8287,268,868,0,160,922,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8288,268,897,0,161,868,923,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8289,268,923,0,162,897,924,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8290,268,924,0,163,923,844,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8291,268,844,0,164,924,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8292,268,887,0,165,844,876,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8293,268,876,0,166,887,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8294,268,897,0,167,876,830,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8295,268,830,0,168,897,925,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8296,268,925,0,169,830,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8297,268,847,0,170,925,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8298,268,906,0,171,847,849,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8299,268,849,0,172,906,861,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8300,268,861,0,173,849,926,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8301,268,926,0,174,861,834,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8302,268,834,0,175,926,889,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8303,268,889,0,176,834,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8304,268,847,0,177,889,927,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8305,268,927,0,178,847,928,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8306,268,928,0,179,927,929,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8307,268,929,0,180,928,930,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8308,268,930,0,181,929,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8309,268,897,0,182,930,851,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8310,268,851,0,183,897,855,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8311,268,855,0,184,851,931,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8312,268,931,0,185,855,901,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8313,268,901,0,186,931,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8314,268,906,0,187,901,854,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8315,268,854,0,188,906,835,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8316,268,835,0,189,854,932,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8317,268,932,0,190,835,933,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8318,268,933,0,191,932,934,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8319,268,934,0,192,933,904,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8320,268,904,0,193,934,915,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8321,268,915,0,194,904,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8322,268,887,0,195,915,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8323,268,847,0,196,887,828,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8324,268,828,0,197,847,829,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8325,268,829,0,198,828,830,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8326,268,830,0,199,829,831,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8327,268,831,0,200,830,832,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8328,268,832,0,201,831,833,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8329,268,833,0,202,832,834,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8330,268,834,0,203,833,835,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8331,268,835,0,204,834,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8332,268,836,0,205,835,831,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8333,268,831,0,206,836,832,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8334,268,832,0,207,831,837,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8335,268,837,0,208,832,838,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8336,268,838,0,209,837,839,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8337,268,839,0,210,838,840,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8338,268,840,0,211,839,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8339,268,841,0,212,840,834,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8340,268,834,0,213,841,842,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8341,268,842,0,214,834,843,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8342,268,843,0,215,842,844,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8343,268,844,0,216,843,845,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8344,268,845,0,217,844,837,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8345,268,837,0,218,845,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8346,268,836,0,219,837,846,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8347,268,846,0,220,836,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8348,268,847,0,221,846,848,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8349,268,848,0,222,847,849,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8350,268,849,0,223,848,850,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8351,268,850,0,224,849,851,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8352,268,851,0,225,850,852,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8353,268,852,0,226,851,853,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8354,268,853,0,227,852,837,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8355,268,837,0,228,853,854,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8356,268,854,0,229,837,855,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8357,268,855,0,230,854,856,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8358,268,856,0,231,855,857,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8359,268,857,0,232,856,858,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8360,268,858,0,233,857,859,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8361,268,859,0,234,858,860,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8362,268,860,0,235,859,861,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8363,268,861,0,236,860,862,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8364,268,862,0,237,861,863,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8365,268,863,0,238,862,864,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8366,268,864,0,239,863,865,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8367,268,865,0,240,864,866,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8368,268,866,0,241,865,867,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8369,268,867,0,242,866,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8370,268,847,0,243,867,835,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8371,268,835,0,244,847,868,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8372,268,868,0,245,835,869,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8373,268,869,0,246,868,870,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8374,268,870,0,247,869,871,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8375,268,871,0,248,870,848,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8376,268,848,0,249,871,872,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8377,268,872,0,250,848,873,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8378,268,873,0,251,872,874,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8379,268,874,0,252,873,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8380,268,841,0,253,874,874,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8381,268,874,0,254,841,875,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8382,268,875,0,255,874,876,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8383,268,876,0,256,875,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8384,268,836,0,257,876,859,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8385,268,859,0,258,836,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8386,268,877,0,259,859,878,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8387,268,878,0,260,877,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8388,268,841,0,261,878,828,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8389,268,828,0,262,841,879,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8390,268,879,0,263,828,880,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8391,268,880,0,264,879,881,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8392,268,881,0,265,880,882,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8393,268,882,0,266,881,883,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8394,268,883,0,267,882,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8395,268,836,0,268,883,854,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8396,268,854,0,269,836,884,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8397,268,884,0,270,854,885,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8398,268,885,0,271,884,886,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8399,268,886,0,272,885,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8400,268,887,0,273,886,888,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8401,268,888,0,274,887,889,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8402,268,889,0,275,888,890,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8403,268,890,0,276,889,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8404,268,841,0,277,890,890,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8405,268,890,0,278,841,891,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8406,268,891,0,279,890,892,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8407,268,892,0,280,891,862,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8408,268,862,0,281,892,893,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8409,268,893,0,282,862,894,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8410,268,894,0,283,893,860,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8411,268,860,0,284,894,895,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8412,268,895,0,285,860,896,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8413,268,896,0,286,895,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8414,268,897,0,287,896,898,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8415,268,898,0,288,897,899,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8416,268,899,0,289,898,900,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8417,268,900,0,290,899,849,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8418,268,849,0,291,900,901,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8419,268,901,0,292,849,902,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8420,268,902,0,293,901,903,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8421,268,903,0,294,902,904,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8422,268,904,0,295,903,894,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8423,268,894,0,296,904,845,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8424,268,845,0,297,894,905,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8425,268,905,0,298,845,867,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8426,268,867,0,299,905,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8427,268,836,0,300,867,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8428,268,877,0,301,836,861,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8429,268,861,0,302,877,856,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8430,268,856,0,303,861,828,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8431,268,828,0,304,856,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8432,268,906,0,305,828,907,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8433,268,907,0,306,906,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8434,268,841,0,307,907,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8435,268,841,0,308,841,892,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8436,268,892,0,309,841,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8437,268,877,0,310,892,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8438,268,847,0,311,877,908,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8439,268,908,0,312,847,909,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8440,268,909,0,313,908,836,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8441,268,836,0,314,909,910,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8442,268,910,0,315,836,911,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8443,268,911,0,316,910,912,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8444,268,912,0,317,911,913,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8445,268,913,0,318,912,914,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8446,268,914,0,319,913,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8447,268,847,0,320,914,879,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8448,268,879,0,321,847,915,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8449,268,915,0,322,879,841,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8450,268,841,0,323,915,881,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8451,268,881,0,324,841,916,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8452,268,916,0,325,881,830,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8453,268,830,0,326,916,862,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8454,268,862,0,327,830,869,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8455,268,869,0,328,862,902,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8456,268,902,0,329,869,885,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8457,268,885,0,330,902,865,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8458,268,865,0,331,885,859,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8459,268,859,0,332,865,917,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8460,268,917,0,333,859,881,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8461,268,881,0,334,917,877,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8462,268,877,0,335,881,918,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8463,268,918,0,336,877,850,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8464,268,850,0,337,918,919,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8465,268,919,0,338,850,920,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8466,268,920,0,339,919,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8467,268,887,0,340,920,848,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8468,268,848,0,341,887,921,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8469,268,921,0,342,848,894,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8470,268,894,0,343,921,868,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8471,268,868,0,344,894,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8472,268,906,0,345,868,840,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8473,268,840,0,346,906,909,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8474,268,909,0,347,840,903,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8475,268,903,0,348,909,858,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8476,268,858,0,349,903,922,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8477,268,922,0,350,858,868,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8478,268,868,0,351,922,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8479,268,897,0,352,868,923,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8480,268,923,0,353,897,924,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8481,268,924,0,354,923,844,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8482,268,844,0,355,924,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8483,268,887,0,356,844,876,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8484,268,876,0,357,887,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8485,268,897,0,358,876,830,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8486,268,830,0,359,897,925,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8487,268,925,0,360,830,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8488,268,847,0,361,925,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8489,268,906,0,362,847,849,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8490,268,849,0,363,906,861,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8491,268,861,0,364,849,926,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8492,268,926,0,365,861,834,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8493,268,834,0,366,926,889,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8494,268,889,0,367,834,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8495,268,847,0,368,889,927,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8496,268,927,0,369,847,928,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8497,268,928,0,370,927,929,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8498,268,929,0,371,928,930,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8499,268,930,0,372,929,897,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8500,268,897,0,373,930,851,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8501,268,851,0,374,897,855,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8502,268,855,0,375,851,931,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8503,268,931,0,376,855,901,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8504,268,901,0,377,931,906,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8505,268,906,0,378,901,854,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8506,268,854,0,379,906,835,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8507,268,835,0,380,854,932,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8508,268,932,0,381,835,933,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8509,268,933,0,382,932,934,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8510,268,934,0,383,933,904,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8511,268,904,0,384,934,915,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8512,268,915,0,385,904,887,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8513,268,887,0,386,915,847,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8514,268,847,0,387,887,939,2,1068814752,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8515,268,939,0,388,847,829,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8516,268,829,0,389,939,830,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8517,268,830,0,390,829,831,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8518,268,831,0,391,830,832,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8519,268,832,0,392,831,833,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8520,268,833,0,393,832,834,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8521,268,834,0,394,833,835,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8522,268,835,0,395,834,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8523,268,836,0,396,835,831,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8524,268,831,0,397,836,832,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8525,268,832,0,398,831,837,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8526,268,837,0,399,832,838,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8527,268,838,0,400,837,839,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8528,268,839,0,401,838,840,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8529,268,840,0,402,839,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8530,268,841,0,403,840,834,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8531,268,834,0,404,841,842,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8532,268,842,0,405,834,843,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8533,268,843,0,406,842,844,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8534,268,844,0,407,843,845,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8535,268,845,0,408,844,837,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8536,268,837,0,409,845,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8537,268,836,0,410,837,846,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8538,268,846,0,411,836,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8539,268,847,0,412,846,848,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8540,268,848,0,413,847,849,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8541,268,849,0,414,848,850,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8542,268,850,0,415,849,851,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8543,268,851,0,416,850,852,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8544,268,852,0,417,851,853,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8545,268,853,0,418,852,837,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8546,268,837,0,419,853,854,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8547,268,854,0,420,837,855,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8548,268,855,0,421,854,856,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8549,268,856,0,422,855,857,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8550,268,857,0,423,856,858,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8551,268,858,0,424,857,859,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8552,268,859,0,425,858,860,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8553,268,860,0,426,859,861,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8554,268,861,0,427,860,862,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8555,268,862,0,428,861,863,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8556,268,863,0,429,862,864,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8557,268,864,0,430,863,865,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8558,268,865,0,431,864,866,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8559,268,866,0,432,865,867,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8560,268,867,0,433,866,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8561,268,847,0,434,867,835,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8562,268,835,0,435,847,868,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8563,268,868,0,436,835,869,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8564,268,869,0,437,868,870,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8565,268,870,0,438,869,871,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8566,268,871,0,439,870,848,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8567,268,848,0,440,871,872,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8568,268,872,0,441,848,873,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8569,268,873,0,442,872,874,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8570,268,874,0,443,873,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8571,268,841,0,444,874,874,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8572,268,874,0,445,841,875,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8573,268,875,0,446,874,876,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8574,268,876,0,447,875,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8575,268,836,0,448,876,859,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8576,268,859,0,449,836,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8577,268,877,0,450,859,878,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8578,268,878,0,451,877,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8579,268,841,0,452,878,828,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8580,268,828,0,453,841,879,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8581,268,879,0,454,828,880,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8582,268,880,0,455,879,881,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8583,268,881,0,456,880,882,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8584,268,882,0,457,881,883,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8585,268,883,0,458,882,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8586,268,836,0,459,883,854,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8587,268,854,0,460,836,884,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8588,268,884,0,461,854,885,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8589,268,885,0,462,884,886,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8590,268,886,0,463,885,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8591,268,887,0,464,886,888,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8592,268,888,0,465,887,889,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8593,268,889,0,466,888,890,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8594,268,890,0,467,889,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8595,268,841,0,468,890,890,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8596,268,890,0,469,841,891,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8597,268,891,0,470,890,892,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8598,268,892,0,471,891,862,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8599,268,862,0,472,892,893,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8600,268,893,0,473,862,894,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8601,268,894,0,474,893,860,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8602,268,860,0,475,894,895,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8603,268,895,0,476,860,896,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8604,268,896,0,477,895,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8605,268,897,0,478,896,898,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8606,268,898,0,479,897,899,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8607,268,899,0,480,898,900,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8608,268,900,0,481,899,849,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8609,268,849,0,482,900,901,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8610,268,901,0,483,849,902,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8611,268,902,0,484,901,903,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8612,268,903,0,485,902,904,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8613,268,904,0,486,903,894,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8614,268,894,0,487,904,845,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8615,268,845,0,488,894,905,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8616,268,905,0,489,845,867,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8617,268,867,0,490,905,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8618,268,836,0,491,867,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8619,268,877,0,492,836,861,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8620,268,861,0,493,877,856,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8621,268,856,0,494,861,828,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8622,268,828,0,495,856,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8623,268,906,0,496,828,907,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8624,268,907,0,497,906,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8625,268,841,0,498,907,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8626,268,841,0,499,841,892,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8627,268,892,0,500,841,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8628,268,877,0,501,892,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8629,268,847,0,502,877,908,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8630,268,908,0,503,847,909,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8631,268,909,0,504,908,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8632,268,836,0,505,909,910,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8633,268,910,0,506,836,911,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8634,268,911,0,507,910,912,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8635,268,912,0,508,911,913,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8636,268,913,0,509,912,914,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8637,268,914,0,510,913,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8638,268,847,0,511,914,879,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8639,268,879,0,512,847,915,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8640,268,915,0,513,879,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8641,268,841,0,514,915,881,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8642,268,881,0,515,841,916,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8643,268,916,0,516,881,830,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8644,268,830,0,517,916,862,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8645,268,862,0,518,830,869,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8646,268,869,0,519,862,902,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8647,268,902,0,520,869,885,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8648,268,885,0,521,902,865,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8649,268,865,0,522,885,859,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8650,268,859,0,523,865,917,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8651,268,917,0,524,859,881,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8652,268,881,0,525,917,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8653,268,877,0,526,881,918,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8654,268,918,0,527,877,850,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8655,268,850,0,528,918,919,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8656,268,919,0,529,850,920,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8657,268,920,0,530,919,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8658,268,887,0,531,920,848,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8659,268,848,0,532,887,921,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8660,268,921,0,533,848,894,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8661,268,894,0,534,921,868,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8662,268,868,0,535,894,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8663,268,906,0,536,868,840,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8664,268,840,0,537,906,909,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8665,268,909,0,538,840,903,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8666,268,903,0,539,909,858,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8667,268,858,0,540,903,922,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8668,268,922,0,541,858,868,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8669,268,868,0,542,922,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8670,268,897,0,543,868,923,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8671,268,923,0,544,897,924,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8672,268,924,0,545,923,844,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8673,268,844,0,546,924,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8674,268,887,0,547,844,876,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8675,268,876,0,548,887,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8676,268,897,0,549,876,830,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8677,268,830,0,550,897,925,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8678,268,925,0,551,830,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8679,268,847,0,552,925,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8680,268,906,0,553,847,849,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8681,268,849,0,554,906,861,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8682,268,861,0,555,849,926,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8683,268,926,0,556,861,834,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8684,268,834,0,557,926,889,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8685,268,889,0,558,834,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8686,268,847,0,559,889,927,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8687,268,927,0,560,847,928,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8688,268,928,0,561,927,929,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8689,268,929,0,562,928,930,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8690,268,930,0,563,929,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8691,268,897,0,564,930,851,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8692,268,851,0,565,897,855,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8693,268,855,0,566,851,931,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8694,268,931,0,567,855,901,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8695,268,901,0,568,931,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8696,268,906,0,569,901,854,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8697,268,854,0,570,906,835,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8698,268,835,0,571,854,932,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8699,268,932,0,572,835,933,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8700,268,933,0,573,932,934,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8701,268,934,0,574,933,904,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8702,268,904,0,575,934,915,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8703,268,915,0,576,904,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8704,268,887,0,577,915,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8705,268,847,0,578,887,939,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8706,268,939,0,579,847,829,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8707,268,829,0,580,939,830,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8708,268,830,0,581,829,831,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8709,268,831,0,582,830,832,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8710,268,832,0,583,831,833,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8711,268,833,0,584,832,834,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8712,268,834,0,585,833,835,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8713,268,835,0,586,834,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8714,268,836,0,587,835,831,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8715,268,831,0,588,836,832,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8716,268,832,0,589,831,837,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8717,268,837,0,590,832,838,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8718,268,838,0,591,837,839,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8719,268,839,0,592,838,840,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8720,268,840,0,593,839,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8721,268,841,0,594,840,834,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8722,268,834,0,595,841,842,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8723,268,842,0,596,834,843,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8724,268,843,0,597,842,844,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8725,268,844,0,598,843,845,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8726,268,845,0,599,844,837,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8727,268,837,0,600,845,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8728,268,836,0,601,837,846,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8729,268,846,0,602,836,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8730,268,847,0,603,846,848,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8731,268,848,0,604,847,849,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8732,268,849,0,605,848,850,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8733,268,850,0,606,849,851,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8734,268,851,0,607,850,852,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8735,268,852,0,608,851,853,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8736,268,853,0,609,852,837,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8737,268,837,0,610,853,854,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8738,268,854,0,611,837,855,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8739,268,855,0,612,854,856,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8740,268,856,0,613,855,857,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8741,268,857,0,614,856,858,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8742,268,858,0,615,857,859,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8743,268,859,0,616,858,860,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8744,268,860,0,617,859,861,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8745,268,861,0,618,860,862,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8746,268,862,0,619,861,863,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8747,268,863,0,620,862,864,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8748,268,864,0,621,863,865,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8749,268,865,0,622,864,866,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8750,268,866,0,623,865,867,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8751,268,867,0,624,866,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8752,268,847,0,625,867,835,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8753,268,835,0,626,847,868,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8754,268,868,0,627,835,869,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8755,268,869,0,628,868,870,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8756,268,870,0,629,869,871,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8757,268,871,0,630,870,848,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8758,268,848,0,631,871,872,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8759,268,872,0,632,848,873,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8760,268,873,0,633,872,874,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8761,268,874,0,634,873,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8762,268,841,0,635,874,874,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8763,268,874,0,636,841,875,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8764,268,875,0,637,874,876,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8765,268,876,0,638,875,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8766,268,836,0,639,876,859,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8767,268,859,0,640,836,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8768,268,877,0,641,859,878,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8769,268,878,0,642,877,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8770,268,841,0,643,878,828,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8771,268,828,0,644,841,879,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8772,268,879,0,645,828,880,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8773,268,880,0,646,879,881,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8774,268,881,0,647,880,882,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8775,268,882,0,648,881,883,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8776,268,883,0,649,882,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8777,268,836,0,650,883,854,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8778,268,854,0,651,836,884,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8779,268,884,0,652,854,885,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8780,268,885,0,653,884,886,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8781,268,886,0,654,885,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8782,268,887,0,655,886,888,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8783,268,888,0,656,887,889,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8784,268,889,0,657,888,890,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8785,268,890,0,658,889,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8786,268,841,0,659,890,890,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8787,268,890,0,660,841,891,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8788,268,891,0,661,890,892,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8789,268,892,0,662,891,862,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8790,268,862,0,663,892,893,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8791,268,893,0,664,862,894,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8792,268,894,0,665,893,860,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8793,268,860,0,666,894,895,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8794,268,895,0,667,860,896,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8795,268,896,0,668,895,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8796,268,897,0,669,896,898,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8797,268,898,0,670,897,899,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8798,268,899,0,671,898,900,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8799,268,900,0,672,899,849,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8800,268,849,0,673,900,901,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8801,268,901,0,674,849,902,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8802,268,902,0,675,901,903,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8803,268,903,0,676,902,904,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8804,268,904,0,677,903,894,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8805,268,894,0,678,904,845,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8806,268,845,0,679,894,905,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8807,268,905,0,680,845,867,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8808,268,867,0,681,905,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8809,268,836,0,682,867,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8810,268,877,0,683,836,861,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8811,268,861,0,684,877,856,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8812,268,856,0,685,861,828,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8813,268,828,0,686,856,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8814,268,906,0,687,828,907,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8815,268,907,0,688,906,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8816,268,841,0,689,907,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8817,268,841,0,690,841,892,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8818,268,892,0,691,841,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8819,268,877,0,692,892,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8820,268,847,0,693,877,908,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8821,268,908,0,694,847,909,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8822,268,909,0,695,908,836,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8823,268,836,0,696,909,910,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8824,268,910,0,697,836,911,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8825,268,911,0,698,910,912,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8826,268,912,0,699,911,913,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8827,268,913,0,700,912,914,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8828,268,914,0,701,913,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8829,268,847,0,702,914,879,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8830,268,879,0,703,847,915,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8831,268,915,0,704,879,841,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8832,268,841,0,705,915,881,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8833,268,881,0,706,841,916,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8834,268,916,0,707,881,830,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8835,268,830,0,708,916,862,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8836,268,862,0,709,830,869,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8837,268,869,0,710,862,902,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8838,268,902,0,711,869,885,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8839,268,885,0,712,902,865,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8840,268,865,0,713,885,859,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8841,268,859,0,714,865,917,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8842,268,917,0,715,859,881,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8843,268,881,0,716,917,877,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8844,268,877,0,717,881,918,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8845,268,918,0,718,877,850,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8846,268,850,0,719,918,919,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8847,268,919,0,720,850,920,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8848,268,920,0,721,919,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8849,268,887,0,722,920,848,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8850,268,848,0,723,887,921,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8851,268,921,0,724,848,894,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8852,268,894,0,725,921,868,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8853,268,868,0,726,894,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8854,268,906,0,727,868,840,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8855,268,840,0,728,906,909,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8856,268,909,0,729,840,903,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8857,268,903,0,730,909,858,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8858,268,858,0,731,903,922,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8859,268,922,0,732,858,868,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8860,268,868,0,733,922,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8861,268,897,0,734,868,923,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8862,268,923,0,735,897,924,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8863,268,924,0,736,923,844,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8864,268,844,0,737,924,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8865,268,887,0,738,844,876,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8866,268,876,0,739,887,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8867,268,897,0,740,876,830,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8868,268,830,0,741,897,925,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8869,268,925,0,742,830,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8870,268,847,0,743,925,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8871,268,906,0,744,847,849,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8872,268,849,0,745,906,861,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8873,268,861,0,746,849,926,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8874,268,926,0,747,861,834,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8875,268,834,0,748,926,889,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8876,268,889,0,749,834,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8877,268,847,0,750,889,927,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8878,268,927,0,751,847,928,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8879,268,928,0,752,927,929,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8880,268,929,0,753,928,930,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8881,268,930,0,754,929,897,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8882,268,897,0,755,930,851,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8883,268,851,0,756,897,855,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8884,268,855,0,757,851,931,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8885,268,931,0,758,855,901,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8886,268,901,0,759,931,906,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8887,268,906,0,760,901,854,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8888,268,854,0,761,906,835,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8889,268,835,0,762,854,932,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8890,268,932,0,763,835,933,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8891,268,933,0,764,932,934,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8892,268,934,0,765,933,904,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8893,268,904,0,766,934,915,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8894,268,915,0,767,904,887,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8895,268,887,0,768,915,847,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8896,268,847,0,769,887,0,2,1068814752,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8897,319,940,0,0,0,940,27,1069317649,1,215,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8898,319,940,0,1,940,940,27,1069317649,1,215,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8899,319,940,0,2,940,941,27,1069317649,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8900,319,941,0,3,940,940,27,1069317649,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8901,319,940,0,4,941,941,27,1069317649,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8902,319,941,0,5,940,0,27,1069317649,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8903,320,942,0,0,0,942,28,1069317685,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8904,320,942,0,1,942,943,28,1069317685,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8905,320,943,0,2,942,944,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8906,320,944,0,3,943,945,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8907,320,945,0,4,944,942,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8908,320,942,0,5,945,943,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8909,320,943,0,6,942,944,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8910,320,944,0,7,943,945,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8911,320,945,0,8,944,942,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8912,320,942,0,9,945,946,28,1069317685,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8913,320,946,0,10,942,946,28,1069317685,1,221,'',3);
INSERT INTO ezsearch_object_word_link VALUES (8914,320,946,0,11,946,0,28,1069317685,1,221,'',3);
INSERT INTO ezsearch_object_word_link VALUES (8915,321,947,0,0,0,948,5,1069317728,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8916,321,948,0,1,947,947,5,1069317728,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8917,321,947,0,2,948,948,5,1069317728,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8918,321,948,0,3,947,858,5,1069317728,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8919,321,858,0,4,948,949,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8920,321,949,0,5,858,950,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8921,321,950,0,6,949,947,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8922,321,947,0,7,950,948,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8923,321,948,0,8,947,858,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8924,321,858,0,9,948,949,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8925,321,949,0,10,858,950,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8926,321,950,0,11,949,947,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8927,321,947,0,12,950,948,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8928,321,948,0,13,947,0,5,1069317728,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8929,322,951,0,0,0,952,5,1069317767,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8930,322,952,0,1,951,951,5,1069317767,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8931,322,951,0,2,952,952,5,1069317767,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8932,322,952,0,3,951,858,5,1069317767,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8933,322,858,0,4,952,951,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8934,322,951,0,5,858,953,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8935,322,953,0,6,951,954,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8936,322,954,0,7,953,955,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8937,322,955,0,8,954,858,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8938,322,858,0,9,955,951,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8939,322,951,0,10,858,953,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8940,322,953,0,11,951,954,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8941,322,954,0,12,953,955,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8942,322,955,0,13,954,0,5,1069317767,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8943,323,956,0,0,0,948,5,1069317797,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8944,323,948,0,1,956,956,5,1069317797,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8945,323,956,0,2,948,948,5,1069317797,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8946,323,948,0,3,956,956,5,1069317797,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8947,323,956,0,4,948,948,5,1069317797,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8948,323,948,0,5,956,956,5,1069317797,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8949,323,956,0,6,948,948,5,1069317797,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8950,323,948,0,7,956,0,5,1069317797,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8951,324,957,0,0,0,957,28,1069317869,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8952,324,957,0,1,957,957,28,1069317869,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8953,324,957,0,2,957,958,28,1069317869,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8954,324,958,0,3,957,957,28,1069317869,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8955,324,957,0,4,958,958,28,1069317869,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8956,324,958,0,5,957,946,28,1069317869,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8957,324,946,0,6,958,946,28,1069317869,1,221,'',3);
INSERT INTO ezsearch_object_word_link VALUES (8958,324,946,0,7,946,0,28,1069317869,1,221,'',3);
INSERT INTO ezsearch_object_word_link VALUES (8959,325,959,0,0,0,960,5,1069317907,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8960,325,960,0,1,959,959,5,1069317907,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8961,325,959,0,2,960,960,5,1069317907,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8962,325,960,0,3,959,960,5,1069317907,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8963,325,960,0,4,960,836,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8964,325,836,0,5,960,858,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8965,325,858,0,6,836,949,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8966,325,949,0,7,858,959,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8967,325,959,0,8,949,960,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8968,325,960,0,9,959,836,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8969,325,836,0,10,960,858,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8970,325,858,0,11,836,949,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8971,325,949,0,12,858,959,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8972,325,959,0,13,949,0,5,1069317907,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8973,326,961,0,0,0,962,5,1069317947,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8974,326,962,0,1,961,961,5,1069317947,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8975,326,961,0,2,962,962,5,1069317947,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8976,326,962,0,3,961,961,5,1069317947,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8977,326,961,0,4,962,963,5,1069317947,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8978,326,963,0,5,961,964,5,1069317947,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8979,326,964,0,6,963,961,5,1069317947,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8980,326,961,0,7,964,963,5,1069317947,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8981,326,963,0,8,961,964,5,1069317947,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8982,326,964,0,9,963,0,5,1069317947,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8983,327,965,0,0,0,966,5,1069317978,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8984,327,966,0,1,965,965,5,1069317978,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8985,327,965,0,2,966,966,5,1069317978,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8986,327,966,0,3,965,965,5,1069317978,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8987,327,965,0,4,966,966,5,1069317978,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8988,327,966,0,5,965,965,5,1069317978,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8989,327,965,0,6,966,966,5,1069317978,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8990,327,966,0,7,965,0,5,1069317978,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8991,328,967,0,0,0,960,5,1069318020,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8992,328,960,0,1,967,967,5,1069318020,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8993,328,967,0,2,960,960,5,1069318020,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8994,328,960,0,3,967,960,5,1069318020,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8995,328,960,0,4,960,968,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8996,328,968,0,5,960,858,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8997,328,858,0,6,968,969,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8998,328,969,0,7,858,836,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8999,328,836,0,8,969,970,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9000,328,970,0,9,836,960,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9001,328,960,0,10,970,968,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9002,328,968,0,11,960,858,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9003,328,858,0,12,968,969,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9004,328,969,0,13,858,836,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9005,328,836,0,14,969,970,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9006,328,970,0,15,836,0,5,1069318020,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9007,329,971,0,0,0,971,27,1069318331,1,215,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9008,329,971,0,1,971,971,27,1069318331,1,215,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9009,329,971,0,2,971,958,27,1069318331,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9010,329,958,0,3,971,971,27,1069318331,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9011,329,971,0,4,958,958,27,1069318331,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9012,329,958,0,5,971,0,27,1069318331,1,216,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9013,330,972,0,0,0,972,28,1069318374,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9014,330,972,0,1,972,946,28,1069318374,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9015,330,946,0,2,972,946,28,1069318374,1,221,'',3);
INSERT INTO ezsearch_object_word_link VALUES (9016,330,946,0,3,946,0,28,1069318374,1,221,'',3);
INSERT INTO ezsearch_object_word_link VALUES (9017,331,973,0,0,0,974,5,1069318446,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9018,331,974,0,1,973,973,5,1069318446,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9019,331,973,0,2,974,974,5,1069318446,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9020,331,974,0,3,973,975,5,1069318446,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9021,331,975,0,4,974,976,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9022,331,976,0,5,975,944,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9023,331,944,0,6,976,858,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9024,331,858,0,7,944,973,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9025,331,973,0,8,858,977,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9026,331,977,0,9,973,975,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9027,331,975,0,10,977,976,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9028,331,976,0,11,975,944,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9029,331,944,0,12,976,858,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9030,331,858,0,13,944,973,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9031,331,973,0,14,858,977,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9032,331,977,0,15,973,0,5,1069318446,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9033,332,978,0,0,0,979,5,1069318482,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9034,332,979,0,1,978,978,5,1069318482,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9035,332,978,0,2,979,979,5,1069318482,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9036,332,979,0,3,978,978,5,1069318482,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9037,332,978,0,4,979,979,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9038,332,979,0,5,978,980,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9039,332,980,0,6,979,968,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9040,332,968,0,7,980,981,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9041,332,981,0,8,968,978,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9042,332,978,0,9,981,979,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9043,332,979,0,10,978,980,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9044,332,980,0,11,979,968,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9045,332,968,0,12,980,981,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9046,332,981,0,13,968,0,5,1069318482,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9047,333,982,0,0,0,983,5,1069318517,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9048,333,983,0,1,982,982,5,1069318517,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9049,333,982,0,2,983,983,5,1069318517,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9050,333,983,0,3,982,954,5,1069318517,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9051,333,954,0,4,983,984,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9052,333,984,0,5,954,985,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9053,333,985,0,6,984,986,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9054,333,986,0,7,985,987,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9055,333,987,0,8,986,954,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9056,333,954,0,9,987,984,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9057,333,984,0,10,954,985,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9058,333,985,0,11,984,986,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9059,333,986,0,12,985,987,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9060,333,987,0,13,986,0,5,1069318517,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9061,334,988,0,0,0,988,5,1069318560,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9062,334,988,0,1,988,988,5,1069318560,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9063,334,988,0,2,988,989,5,1069318560,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9064,334,989,0,3,988,990,5,1069318560,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9065,334,990,0,4,989,988,5,1069318560,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9066,334,988,0,5,990,989,5,1069318560,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9067,334,989,0,6,988,990,5,1069318560,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9068,334,990,0,7,989,0,5,1069318560,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9069,335,991,0,0,0,991,5,1069318590,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9070,335,991,0,1,991,992,5,1069318590,1,116,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9071,335,992,0,2,991,993,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9072,335,993,0,3,992,994,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9073,335,994,0,4,993,995,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9074,335,995,0,5,994,944,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9075,335,944,0,6,995,996,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9076,335,996,0,7,944,992,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9077,335,992,0,8,996,993,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9078,335,993,0,9,992,994,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9079,335,994,0,10,993,995,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9080,335,995,0,11,994,944,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9081,335,944,0,12,995,996,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9082,335,996,0,13,944,0,5,1069318590,1,117,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9083,11,827,0,0,0,997,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9084,11,997,0,1,827,827,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9085,11,827,0,2,997,997,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9086,11,997,0,3,827,0,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9087,337,827,0,0,0,827,4,1070976556,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9088,337,827,0,1,827,997,4,1070976556,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9089,337,997,0,2,827,997,4,1070976556,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9090,337,997,0,3,997,827,4,1070976556,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9091,337,827,0,4,997,998,4,1070976556,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9092,337,998,0,5,827,827,4,1070976556,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9093,337,827,0,6,998,998,4,1070976556,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9094,337,998,0,7,827,0,4,1070976556,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9095,12,999,0,0,0,1000,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9096,12,1000,0,1,999,999,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9097,12,999,0,2,1000,1000,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9098,12,1000,0,3,999,0,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9099,14,999,0,0,0,999,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9100,14,999,0,1,999,1001,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9101,14,1001,0,2,999,1001,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9102,14,1001,0,3,1001,1002,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9103,14,1002,0,4,1001,1003,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9104,14,1003,0,5,1002,1002,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9105,14,1002,0,6,1003,1003,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9106,14,1003,0,7,1002,0,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9107,13,1004,0,0,0,1004,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9108,13,1004,0,1,1004,0,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9109,338,1005,0,0,0,1000,3,1072180934,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9110,338,1000,0,1,1005,1005,3,1072180934,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9111,338,1005,0,2,1000,1000,3,1072180934,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9112,338,1000,0,3,1005,1001,3,1072180934,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9113,338,1001,0,4,1000,1006,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9114,338,1006,0,5,1001,1007,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9115,338,1007,0,6,1006,989,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9116,338,989,0,7,1007,1005,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9117,338,1005,0,8,989,1001,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9118,338,1001,0,9,1005,1001,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9119,338,1001,0,10,1001,1006,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9120,338,1006,0,11,1001,1007,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9121,338,1007,0,12,1006,989,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9122,338,989,0,13,1007,1005,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9123,338,1005,0,14,989,1001,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9124,338,1001,0,15,1005,0,3,1072180934,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9125,10,1005,0,0,0,1005,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9126,10,1005,0,1,1005,1001,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9127,10,1001,0,2,1005,1001,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9128,10,1001,0,3,1001,1005,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9129,10,1005,0,4,1001,1003,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9130,10,1003,0,5,1005,1005,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9131,10,1005,0,6,1003,1003,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9132,10,1003,0,7,1005,0,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9133,44,1008,0,0,0,1009,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9134,44,1009,0,1,1008,1008,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9135,44,1008,0,2,1009,1009,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9136,44,1009,0,3,1008,0,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9137,43,1010,0,0,0,1010,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9138,43,1010,0,1,1010,1011,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9139,43,1011,0,2,1010,1012,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9140,43,1012,0,3,1011,1011,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9141,43,1011,0,4,1012,1012,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9142,43,1012,0,5,1011,0,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9143,45,1013,0,0,0,1014,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9144,45,1014,0,1,1013,1015,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9145,45,1015,0,2,1014,1013,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9146,45,1013,0,3,1015,1014,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9147,45,1014,0,4,1013,1015,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9148,45,1015,0,5,1014,1016,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9149,45,1016,0,6,1015,1017,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9150,45,1017,0,7,1016,1018,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9151,45,1018,0,8,1017,1016,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9152,45,1016,0,9,1018,1017,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9153,45,1017,0,10,1016,1018,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9154,45,1018,0,11,1017,0,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9155,115,1019,0,0,0,1019,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9156,115,1019,0,1,1019,1008,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9157,115,1008,0,2,1019,1019,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9158,115,1019,0,3,1008,1008,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9159,115,1008,0,4,1019,1019,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9160,115,1019,0,5,1008,0,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9161,116,1020,0,0,0,1021,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9162,116,1021,0,1,1020,1020,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9163,116,1020,0,2,1021,1021,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9164,116,1021,0,3,1020,1016,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9165,116,1016,0,4,1021,1022,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9166,116,1022,0,5,1016,1016,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9167,116,1016,0,6,1022,1022,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9168,116,1022,0,7,1016,0,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9169,46,1013,0,0,0,1014,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9170,46,1014,0,1,1013,1015,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9171,46,1015,0,2,1014,1013,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9172,46,1013,0,3,1015,1014,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9173,46,1014,0,4,1013,1015,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9174,46,1015,0,5,1014,0,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9175,56,1023,0,0,0,1023,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9176,56,1023,0,1,1023,1024,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9177,56,1024,0,2,1023,1025,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9178,56,1025,0,3,1024,1026,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9179,56,1026,0,4,1025,1027,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9180,56,1027,0,5,1026,1028,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9181,56,1028,0,6,1027,1029,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9182,56,1029,0,7,1028,1030,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9183,56,1030,0,8,1029,1024,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9184,56,1024,0,9,1030,1025,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9185,56,1025,0,10,1024,1026,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9186,56,1026,0,11,1025,1027,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9187,56,1027,0,12,1026,1028,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9188,56,1028,0,13,1027,1029,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9189,56,1029,0,14,1028,1030,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9190,56,1030,0,15,1029,0,15,1066643397,11,224,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9191,339,1031,0,0,0,1032,1,1076578466,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9192,339,1032,0,1,1031,1033,1,1076578466,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9193,339,1033,0,2,1032,1031,1,1076578466,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9194,339,1031,0,3,1033,1032,1,1076578466,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9195,339,1032,0,4,1031,1033,1,1076578466,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9196,339,1033,0,5,1032,0,1,1076578466,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9220,340,1033,0,5,1032,0,29,1076578510,11,225,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9219,340,1032,0,4,1031,1033,29,1076578510,11,225,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9218,340,1031,0,3,1033,1032,29,1076578510,11,225,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9217,340,1033,0,2,1032,1031,29,1076578510,11,225,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9216,340,1032,0,1,1031,1033,29,1076578510,11,225,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9215,340,1031,0,0,0,1032,29,1076578510,11,225,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9203,341,1031,0,0,0,1032,14,1076578588,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9204,341,1032,0,1,1031,1033,14,1076578588,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9205,341,1033,0,2,1032,1031,14,1076578588,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9206,341,1031,0,3,1033,1032,14,1076578588,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9207,341,1032,0,4,1031,1033,14,1076578588,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9208,341,1033,0,5,1032,1016,14,1076578588,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9209,341,1016,0,6,1033,1017,14,1076578588,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9210,341,1017,0,7,1016,1034,14,1076578588,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9211,341,1034,0,8,1017,1016,14,1076578588,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9212,341,1016,0,9,1034,1017,14,1076578588,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9213,341,1017,0,10,1016,1034,14,1076578588,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9214,341,1034,0,11,1017,0,14,1076578588,11,155,'',0);

--
-- Table structure for table 'ezsearch_return_count'
--

CREATE TABLE ezsearch_return_count (
  id int(11) NOT NULL auto_increment,
  phrase_id int(11) NOT NULL default '0',
  time int(11) NOT NULL default '0',
  count int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsearch_return_count'
--



--
-- Table structure for table 'ezsearch_search_phrase'
--

CREATE TABLE ezsearch_search_phrase (
  id int(11) NOT NULL auto_increment,
  phrase varchar(250) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsearch_search_phrase'
--



--
-- Table structure for table 'ezsearch_word'
--

CREATE TABLE ezsearch_word (
  id int(11) NOT NULL auto_increment,
  word varchar(150) default NULL,
  object_count int(11) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY ezsearch_word (word)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsearch_word'
--


INSERT INTO ezsearch_word VALUES (825,'about',1);
INSERT INTO ezsearch_word VALUES (826,'my',1);
INSERT INTO ezsearch_word VALUES (827,'gallery',4);
INSERT INTO ezsearch_word VALUES (828,'lorem',2);
INSERT INTO ezsearch_word VALUES (829,'ipsum',2);
INSERT INTO ezsearch_word VALUES (830,'dolor',2);
INSERT INTO ezsearch_word VALUES (831,'sit',2);
INSERT INTO ezsearch_word VALUES (832,'amet',2);
INSERT INTO ezsearch_word VALUES (833,'consectetuer',2);
INSERT INTO ezsearch_word VALUES (834,'adipiscing',2);
INSERT INTO ezsearch_word VALUES (835,'elit',2);
INSERT INTO ezsearch_word VALUES (836,'in',4);
INSERT INTO ezsearch_word VALUES (837,'massa',2);
INSERT INTO ezsearch_word VALUES (838,'maecenas',2);
INSERT INTO ezsearch_word VALUES (839,'egestas',2);
INSERT INTO ezsearch_word VALUES (840,'mauris',2);
INSERT INTO ezsearch_word VALUES (841,'sed',2);
INSERT INTO ezsearch_word VALUES (842,'eleifend',2);
INSERT INTO ezsearch_word VALUES (843,'nisl',2);
INSERT INTO ezsearch_word VALUES (844,'quam',2);
INSERT INTO ezsearch_word VALUES (845,'aliquam',2);
INSERT INTO ezsearch_word VALUES (846,'gravida',2);
INSERT INTO ezsearch_word VALUES (847,'diam',2);
INSERT INTO ezsearch_word VALUES (848,'wisi',2);
INSERT INTO ezsearch_word VALUES (849,'et',2);
INSERT INTO ezsearch_word VALUES (850,'nulla',2);
INSERT INTO ezsearch_word VALUES (851,'morbi',2);
INSERT INTO ezsearch_word VALUES (852,'odio',2);
INSERT INTO ezsearch_word VALUES (853,'proin',2);
INSERT INTO ezsearch_word VALUES (854,'est',2);
INSERT INTO ezsearch_word VALUES (855,'dignissim',2);
INSERT INTO ezsearch_word VALUES (856,'eget',2);
INSERT INTO ezsearch_word VALUES (857,'molestie',2);
INSERT INTO ezsearch_word VALUES (858,'a',7);
INSERT INTO ezsearch_word VALUES (859,'tincidunt',2);
INSERT INTO ezsearch_word VALUES (860,'at',2);
INSERT INTO ezsearch_word VALUES (861,'libero',2);
INSERT INTO ezsearch_word VALUES (862,'phasellus',2);
INSERT INTO ezsearch_word VALUES (863,'imperdiet',2);
INSERT INTO ezsearch_word VALUES (864,'purus',2);
INSERT INTO ezsearch_word VALUES (865,'id',2);
INSERT INTO ezsearch_word VALUES (866,'iaculis',2);
INSERT INTO ezsearch_word VALUES (867,'volutpat',2);
INSERT INTO ezsearch_word VALUES (868,'dapibus',2);
INSERT INTO ezsearch_word VALUES (869,'neque',2);
INSERT INTO ezsearch_word VALUES (870,'ac',2);
INSERT INTO ezsearch_word VALUES (871,'blandit',2);
INSERT INTO ezsearch_word VALUES (872,'metus',2);
INSERT INTO ezsearch_word VALUES (873,'eu',2);
INSERT INTO ezsearch_word VALUES (874,'turpis',2);
INSERT INTO ezsearch_word VALUES (875,'eros',2);
INSERT INTO ezsearch_word VALUES (876,'tristique',2);
INSERT INTO ezsearch_word VALUES (877,'ut',2);
INSERT INTO ezsearch_word VALUES (878,'facilisis',2);
INSERT INTO ezsearch_word VALUES (879,'aenean',2);
INSERT INTO ezsearch_word VALUES (880,'pharetra',2);
INSERT INTO ezsearch_word VALUES (881,'scelerisque',2);
INSERT INTO ezsearch_word VALUES (882,'tortor',2);
INSERT INTO ezsearch_word VALUES (883,'fusce',2);
INSERT INTO ezsearch_word VALUES (884,'pellentesque',2);
INSERT INTO ezsearch_word VALUES (885,'ullamcorper',2);
INSERT INTO ezsearch_word VALUES (886,'felis',2);
INSERT INTO ezsearch_word VALUES (887,'vel',2);
INSERT INTO ezsearch_word VALUES (888,'enim',2);
INSERT INTO ezsearch_word VALUES (889,'sagittis',2);
INSERT INTO ezsearch_word VALUES (890,'commodo',2);
INSERT INTO ezsearch_word VALUES (891,'suscipit',2);
INSERT INTO ezsearch_word VALUES (892,'tellus',2);
INSERT INTO ezsearch_word VALUES (893,'elementum',2);
INSERT INTO ezsearch_word VALUES (894,'velit',2);
INSERT INTO ezsearch_word VALUES (895,'vehicula',2);
INSERT INTO ezsearch_word VALUES (896,'accumsan',2);
INSERT INTO ezsearch_word VALUES (897,'lacus',2);
INSERT INTO ezsearch_word VALUES (898,'nunc',2);
INSERT INTO ezsearch_word VALUES (899,'rhoncus',2);
INSERT INTO ezsearch_word VALUES (900,'lectus',2);
INSERT INTO ezsearch_word VALUES (901,'tempor',2);
INSERT INTO ezsearch_word VALUES (902,'magna',2);
INSERT INTO ezsearch_word VALUES (903,'mi',2);
INSERT INTO ezsearch_word VALUES (904,'vitae',2);
INSERT INTO ezsearch_word VALUES (905,'erat',2);
INSERT INTO ezsearch_word VALUES (906,'vestibulum',2);
INSERT INTO ezsearch_word VALUES (907,'fermentum',2);
INSERT INTO ezsearch_word VALUES (908,'nonummy',2);
INSERT INTO ezsearch_word VALUES (909,'fringilla',2);
INSERT INTO ezsearch_word VALUES (910,'hac',2);
INSERT INTO ezsearch_word VALUES (911,'habitasse',2);
INSERT INTO ezsearch_word VALUES (912,'platea',2);
INSERT INTO ezsearch_word VALUES (913,'dictumst',2);
INSERT INTO ezsearch_word VALUES (914,'duis',2);
INSERT INTO ezsearch_word VALUES (915,'interdum',2);
INSERT INTO ezsearch_word VALUES (916,'ornare',2);
INSERT INTO ezsearch_word VALUES (917,'non',2);
INSERT INTO ezsearch_word VALUES (918,'sapien',2);
INSERT INTO ezsearch_word VALUES (919,'facilisi',2);
INSERT INTO ezsearch_word VALUES (920,'suspendisse',2);
INSERT INTO ezsearch_word VALUES (921,'nec',2);
INSERT INTO ezsearch_word VALUES (922,'congue',2);
INSERT INTO ezsearch_word VALUES (923,'sem',2);
INSERT INTO ezsearch_word VALUES (924,'viverra',2);
INSERT INTO ezsearch_word VALUES (925,'consequat',2);
INSERT INTO ezsearch_word VALUES (926,'donec',2);
INSERT INTO ezsearch_word VALUES (927,'nam',2);
INSERT INTO ezsearch_word VALUES (928,'bibendum',2);
INSERT INTO ezsearch_word VALUES (929,'dui',2);
INSERT INTO ezsearch_word VALUES (930,'porttitor',2);
INSERT INTO ezsearch_word VALUES (931,'integer',2);
INSERT INTO ezsearch_word VALUES (932,'cursus',2);
INSERT INTO ezsearch_word VALUES (933,'quis',2);
INSERT INTO ezsearch_word VALUES (934,'laoreet',2);
INSERT INTO ezsearch_word VALUES (935,'news',1);
INSERT INTO ezsearch_word VALUES (936,'latest',1);
INSERT INTO ezsearch_word VALUES (937,'added',1);
INSERT INTO ezsearch_word VALUES (938,'new',1);
INSERT INTO ezsearch_word VALUES (939,'dfghlorem',1);
INSERT INTO ezsearch_word VALUES (940,'nature',1);
INSERT INTO ezsearch_word VALUES (941,'images',1);
INSERT INTO ezsearch_word VALUES (942,'flowers',1);
INSERT INTO ezsearch_word VALUES (943,'pictures',1);
INSERT INTO ezsearch_word VALUES (944,'of',3);
INSERT INTO ezsearch_word VALUES (945,'various',1);
INSERT INTO ezsearch_word VALUES (946,'3',3);
INSERT INTO ezsearch_word VALUES (947,'blue',1);
INSERT INTO ezsearch_word VALUES (948,'flower',2);
INSERT INTO ezsearch_word VALUES (949,'small',2);
INSERT INTO ezsearch_word VALUES (950,'nice',1);
INSERT INTO ezsearch_word VALUES (951,'purple',1);
INSERT INTO ezsearch_word VALUES (952,'haze',1);
INSERT INTO ezsearch_word VALUES (953,'one',1);
INSERT INTO ezsearch_word VALUES (954,'actually',2);
INSERT INTO ezsearch_word VALUES (955,'two',1);
INSERT INTO ezsearch_word VALUES (956,'yellow',1);
INSERT INTO ezsearch_word VALUES (957,'landscape',1);
INSERT INTO ezsearch_word VALUES (958,'photography',2);
INSERT INTO ezsearch_word VALUES (959,'pond',1);
INSERT INTO ezsearch_word VALUES (960,'reflection',2);
INSERT INTO ezsearch_word VALUES (961,'ormevika',1);
INSERT INTO ezsearch_word VALUES (962,'skyline',1);
INSERT INTO ezsearch_word VALUES (963,'by',1);
INSERT INTO ezsearch_word VALUES (964,'night',1);
INSERT INTO ezsearch_word VALUES (965,'foggy',1);
INSERT INTO ezsearch_word VALUES (966,'trees',1);
INSERT INTO ezsearch_word VALUES (967,'water',1);
INSERT INTO ezsearch_word VALUES (968,'from',2);
INSERT INTO ezsearch_word VALUES (969,'lake',1);
INSERT INTO ezsearch_word VALUES (970,'kongsberg',1);
INSERT INTO ezsearch_word VALUES (971,'abstract',1);
INSERT INTO ezsearch_word VALUES (972,'misc',1);
INSERT INTO ezsearch_word VALUES (973,'cvs',1);
INSERT INTO ezsearch_word VALUES (974,'branching',1);
INSERT INTO ezsearch_word VALUES (975,'visual',1);
INSERT INTO ezsearch_word VALUES (976,'representation',1);
INSERT INTO ezsearch_word VALUES (977,'branch',1);
INSERT INTO ezsearch_word VALUES (978,'gear',1);
INSERT INTO ezsearch_word VALUES (979,'wheel',1);
INSERT INTO ezsearch_word VALUES (980,'statue',1);
INSERT INTO ezsearch_word VALUES (981,'skien',1);
INSERT INTO ezsearch_word VALUES (982,'green',1);
INSERT INTO ezsearch_word VALUES (983,'clover',1);
INSERT INTO ezsearch_word VALUES (984,'it',1);
INSERT INTO ezsearch_word VALUES (985,'s',1);
INSERT INTO ezsearch_word VALUES (986,'called',1);
INSERT INTO ezsearch_word VALUES (987,'gaukesyre',1);
INSERT INTO ezsearch_word VALUES (988,'mjaurits',1);
INSERT INTO ezsearch_word VALUES (989,'the',2);
INSERT INTO ezsearch_word VALUES (990,'cat',1);
INSERT INTO ezsearch_word VALUES (991,'speeding',1);
INSERT INTO ezsearch_word VALUES (992,'all',1);
INSERT INTO ezsearch_word VALUES (993,'withing',1);
INSERT INTO ezsearch_word VALUES (994,'legal',1);
INSERT INTO ezsearch_word VALUES (995,'limits',1);
INSERT INTO ezsearch_word VALUES (996,'course',1);
INSERT INTO ezsearch_word VALUES (997,'editor',2);
INSERT INTO ezsearch_word VALUES (998,'galleryeditor@example.com',1);
INSERT INTO ezsearch_word VALUES (999,'administrator',2);
INSERT INTO ezsearch_word VALUES (1000,'users',2);
INSERT INTO ezsearch_word VALUES (1001,'user',3);
INSERT INTO ezsearch_word VALUES (1002,'admin',1);
INSERT INTO ezsearch_word VALUES (1003,'nospam@ez.no',2);
INSERT INTO ezsearch_word VALUES (1004,'editors',1);
INSERT INTO ezsearch_word VALUES (1005,'anonymous',2);
INSERT INTO ezsearch_word VALUES (1006,'group',1);
INSERT INTO ezsearch_word VALUES (1007,'for',1);
INSERT INTO ezsearch_word VALUES (1008,'setup',2);
INSERT INTO ezsearch_word VALUES (1009,'links',1);
INSERT INTO ezsearch_word VALUES (1010,'classes',1);
INSERT INTO ezsearch_word VALUES (1011,'class',1);
INSERT INTO ezsearch_word VALUES (1012,'grouplist',1);
INSERT INTO ezsearch_word VALUES (1013,'look',2);
INSERT INTO ezsearch_word VALUES (1014,'and',2);
INSERT INTO ezsearch_word VALUES (1015,'feel',2);
INSERT INTO ezsearch_word VALUES (1016,'content',3);
INSERT INTO ezsearch_word VALUES (1017,'edit',2);
INSERT INTO ezsearch_word VALUES (1018,'56',1);
INSERT INTO ezsearch_word VALUES (1019,'cache',1);
INSERT INTO ezsearch_word VALUES (1020,'url',1);
INSERT INTO ezsearch_word VALUES (1021,'translator',1);
INSERT INTO ezsearch_word VALUES (1022,'urltranslator',1);
INSERT INTO ezsearch_word VALUES (1023,'gallery_package',1);
INSERT INTO ezsearch_word VALUES (1024,'copyright',1);
INSERT INTO ezsearch_word VALUES (1025,'&copy',1);
INSERT INTO ezsearch_word VALUES (1026,'ez',1);
INSERT INTO ezsearch_word VALUES (1027,'systems',1);
INSERT INTO ezsearch_word VALUES (1028,'as',1);
INSERT INTO ezsearch_word VALUES (1029,'1999',1);
INSERT INTO ezsearch_word VALUES (1030,'2004',1);
INSERT INTO ezsearch_word VALUES (1031,'common',3);
INSERT INTO ezsearch_word VALUES (1032,'ini',3);
INSERT INTO ezsearch_word VALUES (1033,'settings',3);
INSERT INTO ezsearch_word VALUES (1034,'340',1);

--
-- Table structure for table 'ezsection'
--

CREATE TABLE ezsection (
  id int(11) NOT NULL auto_increment,
  name varchar(255) default NULL,
  locale varchar(255) default NULL,
  navigation_part_identifier varchar(100) default 'ezcontentnavigationpart',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsection'
--


INSERT INTO ezsection VALUES (1,'Standard section','nor-NO','ezcontentnavigationpart');
INSERT INTO ezsection VALUES (2,'Users','','ezusernavigationpart');
INSERT INTO ezsection VALUES (3,'Media','','ezmedianavigationpart');
INSERT INTO ezsection VALUES (4,'News','','ezcontentnavigationpart');
INSERT INTO ezsection VALUES (5,'Contact','','ezcontentnavigationpart');
INSERT INTO ezsection VALUES (6,'Files','','ezcontentnavigationpart');
INSERT INTO ezsection VALUES (11,'Set up object','','ezsetupnavigationpart');
INSERT INTO ezsection VALUES (12,'Links','','ezcontentnavigationpart');
INSERT INTO ezsection VALUES (13,'Blogs','','ezcontentnavigationpart');

--
-- Table structure for table 'ezsession'
--

CREATE TABLE ezsession (
  session_key varchar(32) NOT NULL default '',
  expiration_time int(11) unsigned NOT NULL default '0',
  data text NOT NULL,
  PRIMARY KEY  (session_key),
  KEY expiration_time (expiration_time)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsession'
--


INSERT INTO ezsession VALUES ('bf938f82663bf5da81c94f3b10331f45',1076837830,'eZUserInfoCache_Timestamp|i:1076578247;eZUserGroupsCache_Timestamp|i:1076578247;eZUserLoggedInID|s:2:\"14\";eZUserInfoCache|a:1:{i:14;a:5:{s:16:\"contentobject_id\";s:2:\"14\";s:5:\"login\";s:5:\"admin\";s:5:\"email\";s:12:\"nospam@ez.no\";s:13:\"password_hash\";s:32:\"c78e3b0f3d9244ed8c6d1c29464bdff9\";s:18:\"password_hash_type\";s:1:\"2\";}}eZUserGroupsCache|a:1:{i:14;a:1:{i:0;a:1:{s:2:\"id\";s:2:\"12\";}}}PermissionCachedForUserID|s:2:\"14\";PermissionCachedForUserIDTimestamp|i:1076578247;UserRoles|a:1:{i:0;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:13:\"Administrator\";}}UserPolicies|a:1:{i:2;a:1:{i:0;a:5:{s:2:\"id\";s:3:\"308\";s:7:\"role_id\";s:1:\"2\";s:11:\"module_name\";s:1:\"*\";s:13:\"function_name\";s:1:\"*\";s:10:\"limitation\";s:1:\"*\";}}}CanInstantiateClassesCachedForUser|s:2:\"14\";ClassesCachedTimestamp|i:1076578429;CanInstantiateClasses|i:1;CanInstantiateClassList|a:13:{i:0;a:2:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Folder\";}i:1;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:7:\"Article\";}i:2;a:2:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:10:\"User group\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:4:\"User\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:5:\"Image\";}i:5;a:2:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:9:\"Info page\";}i:6;a:2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:4:\"File\";}i:7;a:2:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:10:\"Setup link\";}i:8;a:2:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:13:\"Template look\";}i:9;a:2:{s:2:\"id\";s:2:\"26\";s:4:\"name\";s:7:\"Comment\";}i:10;a:2:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:7:\"Gallery\";}i:11;a:2:{s:2:\"id\";s:2:\"28\";s:4:\"name\";s:5:\"Album\";}i:12;a:2:{s:2:\"id\";s:2:\"29\";s:4:\"name\";s:19:\"Common ini settings\";}}eZPreferences|a:3:{s:13:\"bookmark_menu\";b:0;s:12:\"history_menu\";b:0;s:13:\"advanced_menu\";s:2:\"on\";}FromGroupID|b:0;ClassesCachedForUser|s:2:\"14\";LastAccessesURI|s:22:\"/content/view/full/267\";eZUserDiscountRulesTimestamp|i:1076578443;eZUserDiscountRules14|a:0:{}eZGlobalSection|a:1:{s:2:\"id\";s:2:\"11\";}');

--
-- Table structure for table 'ezsite_data'
--

CREATE TABLE ezsite_data (
  name varchar(60) NOT NULL default '',
  value text NOT NULL,
  PRIMARY KEY  (name)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsite_data'
--


INSERT INTO ezsite_data VALUES ('ezpublish-version','3.3');
INSERT INTO ezsite_data VALUES ('ezpublish-release','3');

--
-- Table structure for table 'ezsubtree_notification_rule'
--

CREATE TABLE ezsubtree_notification_rule (
  id int(11) NOT NULL auto_increment,
  use_digest int(11) default '0',
  node_id int(11) NOT NULL default '0',
  user_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY ezsubtree_notification_rule_id (id),
  KEY ezsubtree_notification_rule_user_id (user_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezsubtree_notification_rule'
--



--
-- Table structure for table 'eztipafriend_counter'
--

CREATE TABLE eztipafriend_counter (
  node_id int(11) NOT NULL default '0',
  count int(11) NOT NULL default '0',
  PRIMARY KEY  (node_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'eztipafriend_counter'
--



--
-- Table structure for table 'eztrigger'
--

CREATE TABLE eztrigger (
  id int(11) NOT NULL auto_increment,
  name varchar(255) default NULL,
  module_name varchar(200) NOT NULL default '',
  function_name varchar(200) NOT NULL default '',
  connect_type char(1) NOT NULL default '',
  workflow_id int(11) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY eztrigger_def_id (module_name,function_name,connect_type),
  KEY eztrigger_fetch (name(25),module_name(50),function_name(50))
) TYPE=MyISAM;

--
-- Dumping data for table 'eztrigger'
--



--
-- Table structure for table 'ezurl'
--

CREATE TABLE ezurl (
  id int(11) NOT NULL auto_increment,
  url varchar(255) default NULL,
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  is_valid int(11) NOT NULL default '1',
  last_checked int(11) NOT NULL default '0',
  original_url_md5 varchar(32) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezurl'
--


INSERT INTO ezurl VALUES (1,'http://ez.no',1068713677,1068713677,1,0,'dfcdb471b240d964dc3f57b998eb0533');

--
-- Table structure for table 'ezurl_object_link'
--

CREATE TABLE ezurl_object_link (
  url_id int(11) NOT NULL default '0',
  contentobject_attribute_id int(11) NOT NULL default '0',
  contentobject_attribute_version int(11) NOT NULL default '0',
  PRIMARY KEY  (url_id,contentobject_attribute_id,contentobject_attribute_version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezurl_object_link'
--


INSERT INTO ezurl_object_link VALUES (1,768,1);

--
-- Table structure for table 'ezurlalias'
--

CREATE TABLE ezurlalias (
  id int(11) NOT NULL auto_increment,
  source_url text NOT NULL,
  source_md5 varchar(32) default NULL,
  destination_url text NOT NULL,
  is_internal int(11) NOT NULL default '1',
  forward_to_id int(11) NOT NULL default '0',
  is_wildcard int(11) default NULL,
  PRIMARY KEY  (id),
  KEY ezurlalias_source_md5 (source_md5),
  KEY ezurlalias_source_url (source_url(255)),
  KEY ezurlalias_desturl (destination_url(200))
) TYPE=MyISAM;

--
-- Dumping data for table 'ezurlalias'
--


INSERT INTO ezurlalias VALUES (12,'','d41d8cd98f00b204e9800998ecf8427e','content/view/full/2',1,0,0);
INSERT INTO ezurlalias VALUES (13,'users','9bc65c2abec141778ffaa729489f3e87','content/view/full/5',1,0,0);
INSERT INTO ezurlalias VALUES (14,'users/anonymous_user','a37b7463e2c21098fa1a729dad4b4437','content/view/full/11',1,274,0);
INSERT INTO ezurlalias VALUES (15,'users/guest_accounts','02d4e844e3a660857a3f81585995ffe1','content/view/full/12',1,271,0);
INSERT INTO ezurlalias VALUES (16,'users/administrator_users','1b1d79c16700fd6003ea7be233e754ba','content/view/full/13',1,0,0);
INSERT INTO ezurlalias VALUES (17,'users/editors','0bb9dd665c96bbc1cf36b79180786dea','content/view/full/14',1,0,0);
INSERT INTO ezurlalias VALUES (18,'users/administrator_users/administrator_user','f1305ac5f327a19b451d82719e0c3f5d','content/view/full/15',1,0,0);
INSERT INTO ezurlalias VALUES (19,'users/gallery_editor/test_test','3fa1d4782f0ab793d0cbb9635e4e9c0d','content/view/full/42',1,0,0);
INSERT INTO ezurlalias VALUES (20,'media','62933a2951ef01f4eafd9bdf4d3cd2f0','content/view/full/43',1,0,0);
INSERT INTO ezurlalias VALUES (21,'setup','a0f848942ce863cf53c0fa6cc684007d','content/view/full/44',1,0,0);
INSERT INTO ezurlalias VALUES (22,'setup/classes','9e8c46c1357285763cd49ea56c57312d','content/view/full/45',1,24,0);
INSERT INTO ezurlalias VALUES (23,'setup/setup_links','675a9c5ab6fb3f5fdfaa609b7ef9d997','content/view/full/46',1,0,0);
INSERT INTO ezurlalias VALUES (24,'setup/setup_links/classes','75b3e86b0bb8a74fcb38f10fd02945e8','content/view/full/45',1,0,0);
INSERT INTO ezurlalias VALUES (25,'setup/setup_links/setup_objects','a695bd42e59634b44441ca4e4548e94a','content/view/full/47',1,80,0);
INSERT INTO ezurlalias VALUES (26,'setup/fonts_and_colors','db4641c5ea979dba4cfd99ea3267a456','content/view/full/48',1,27,0);
INSERT INTO ezurlalias VALUES (27,'setup/look_and_feel','11f42026b65f2d1801679ba58e443944','content/view/full/48',1,0,0);
INSERT INTO ezurlalias VALUES (83,'contact/persons/yu_wenyue','fc401743c753cd52d41b8bbeffbda14a','content/view/full/85',1,0,0);
INSERT INTO ezurlalias VALUES (193,'nature/flowers_in_june/marygold/good','63667a5fd9f62f7128802afcbfc3eaa5','content/view/full/187',1,0,0);
INSERT INTO ezurlalias VALUES (125,'discussions/forum_main_group/music_discussion/latest_msg_not_sticky','70cf693961dcdd67766bf941c3ed2202','content/view/full/130',1,0,0);
INSERT INTO ezurlalias VALUES (126,'discussions/forum_main_group/music_discussion/not_sticky_2','969f470c93e2131a0884648b91691d0b','content/view/full/131',1,0,0);
INSERT INTO ezurlalias VALUES (34,'setup/look_and_feel/intranet','6d6a9d6e8f6cadb080fffb1276dd1e5e','content/view/full/54',1,213,0);
INSERT INTO ezurlalias VALUES (124,'discussions/forum_main_group/music_discussion/new_topic_sticky/reply','f3dd8b6512a0b04b426ef7d7307b7229','content/view/full/129',1,0,0);
INSERT INTO ezurlalias VALUES (122,'about_this_forum','55803ba2746d617ca86e2a61b1d32d8b','content/view/full/127',1,269,0);
INSERT INTO ezurlalias VALUES (123,'discussions/forum_main_group/music_discussion/new_topic_sticky','bf37b4a370ddb3935d0625a5b348dd20','content/view/full/128',1,0,0);
INSERT INTO ezurlalias VALUES (99,'setup/look_and_feel/corporate','ab9f681938bd76b97b3ab1256b61119e','content/view/full/54',1,213,0);
INSERT INTO ezurlalias VALUES (90,'contact/companies/foo_bar_corp/fido_barida','ce1be6fe76c4671d8616c8bf1b5365de','content/view/full/102',1,0,0);
INSERT INTO ezurlalias VALUES (93,'setup/look_and_feel/intranetyy','53849c55dbaf18cf2c0b278123c9a7b2','content/view/full/54',1,213,0);
INSERT INTO ezurlalias VALUES (87,'contact/companies/foo_bar_corp','b22fd60d77fb6f2a6f9ac44b28c6ff16','content/view/full/99',1,0,0);
INSERT INTO ezurlalias VALUES (88,'contact/companies/ez_sys/vidar_langseid','df1e0c77c37e8039c443cb24d9494996','content/view/full/100',1,0,0);
INSERT INTO ezurlalias VALUES (89,'contact/companies/ez_sys/brd_farstad','9c7d13ba2d21bc56807f81ee923bce94','content/view/full/101',1,0,0);
INSERT INTO ezurlalias VALUES (59,'contact/companies/abb','809afee2cd77358a08683bf42e27636f','content/view/full/78',1,0,0);
INSERT INTO ezurlalias VALUES (60,'files/products/online_editor','766820f3f5b43065be86e00af303dc78','content/view/full/79',1,0,0);
INSERT INTO ezurlalias VALUES (61,'files/products/ez_publish_32','bb00f9e0da1ab19bedc52774d1b75dd2','content/view/full/80',1,0,0);
INSERT INTO ezurlalias VALUES (127,'discussions/forum_main_group/music_discussion/important_sticky','2f16cf3039c97025a43f23182b4b6d60','content/view/full/132',1,0,0);
INSERT INTO ezurlalias VALUES (65,'munich1','3a6e2f1cb7b127c4984af22780094240','content/view/full/84',1,69,0);
INSERT INTO ezurlalias VALUES (66,'contact/persons/wenyue','05cf086075eeb7923d9ef1d22c358892','content/view/full/85',1,83,0);
INSERT INTO ezurlalias VALUES (84,'contact/persons/reiten_bjrn','af38d7e864c796edd66d5a0aaea69c8c','content/view/full/90',1,0,0);
INSERT INTO ezurlalias VALUES (69,'media/images/news/munich1','0492853131729dac783e4c4dc6e7a676','content/view/full/84',1,0,0);
INSERT INTO ezurlalias VALUES (71,'media/images/contact/mr_xxx','e613416ebc175f81b5660d2e1758d1d0','content/view/full/89',1,0,0);
INSERT INTO ezurlalias VALUES (72,'l','2db95e8e1a9267b7a1188556b2013b33','user/logout',0,0,0);
INSERT INTO ezurlalias VALUES (73,'contact/persons/bjrn','59dd7166c379c7fd437cd6afe746a285','content/view/full/90',1,84,0);
INSERT INTO ezurlalias VALUES (102,'discussions/this_is_a_new_topic','61d5152ba3d9318df59ebe28bce4c690','content/view/full/112',1,105,0);
INSERT INTO ezurlalias VALUES (206,'news/latest_sdfgsdgf','decc79834f40f5a98a8694852ea55bf2','content/view/full/200',1,270,0);
INSERT INTO ezurlalias VALUES (78,'setup/setup_links/cache','1f2374cab6280ecfca991a7b6e5119c6','content/view/full/95',1,0,0);
INSERT INTO ezurlalias VALUES (79,'setup/setup_links/url_translator','7b226327c99e6fd78ad40eb66892d7ae','content/view/full/96',1,0,0);
INSERT INTO ezurlalias VALUES (80,'setup/setup_links/look_and_feel','37986c863618270fa0fa6936ba217c7b','content/view/full/47',1,0,0);
INSERT INTO ezurlalias VALUES (82,'images/*','04e9ea07da46830b94f38285ba6ea065','media/images/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (86,'contact/companies/ez_sys','9e1c777b00ef2ded56fe0fdf13547570','content/view/full/98',1,0,0);
INSERT INTO ezurlalias VALUES (104,'discussions/music_discussion','09533dfccc8477debe545d31bccf391f','content/view/full/114',1,149,0);
INSERT INTO ezurlalias VALUES (105,'discussions/forum_main_group/music_discussion/this_is_a_new_topic','cec6b1593bf03079990a89a3fdc60c56','content/view/full/112',1,0,0);
INSERT INTO ezurlalias VALUES (106,'discussions/this_is_a_new_topic/*','3597b3c74225331ec401c8abc9f6d1d4','discussions/music_discussion/this_is_a_new_topic/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (107,'discussions/sports_discussion','c551943f4df3c58a693f8ba55e9b6aeb','content/view/full/115',1,151,0);
INSERT INTO ezurlalias VALUES (117,'discussions/forum_main_group/music_discussion/this_is_a_new_topic/foo_bar','741cdf9f1ee1fa974ea7ec755f538271','content/view/full/122',1,0,0);
INSERT INTO ezurlalias VALUES (111,'discussions/forum_main_group/sports_discussion/football','6e9c09d390322aa44bb5108b93f5f17c','content/view/full/119',1,0,0);
INSERT INTO ezurlalias VALUES (113,'forum/*','94b1ef84913dabe113cb907c181ee300','discussions/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (115,'setup/look_and_feel/forum','00d91935e17d76f152f7aaf0c0defac2','content/view/full/54',1,213,0);
INSERT INTO ezurlalias VALUES (114,'discussions/forum_main_group/music_discussion/this_is_a_new_topic/my_reply','1e03a7609698aa8a98dccf1178df0e6f','content/view/full/120',1,0,0);
INSERT INTO ezurlalias VALUES (118,'discussions/forum_main_group/music_discussion/what_about_pop','c4ebc99b2ed9792d1aee0e5fe210b852','content/view/full/123',1,0,0);
INSERT INTO ezurlalias VALUES (119,'discussions/forum_main_group/music_discussion/reply_wanted_for_this_topic','6c20d2df5a828dcdb6a4fcb4897bb643','content/view/full/124',1,0,0);
INSERT INTO ezurlalias VALUES (120,'discussions/forum_main_group/music_discussion/reply_wanted_for_this_topic/this_is_a_reply','de98a1bb645ea84919a5e34688ff84e2','content/view/full/125',1,0,0);
INSERT INTO ezurlalias VALUES (128,'discussions/forum_main_group/sports_discussion/football/reply_2','13a443b7e046bb36831640f1d19e33d9','content/view/full/133',1,0,0);
INSERT INTO ezurlalias VALUES (130,'discussions/forum_main_group/music_discussion/lkj_ssssstick','75ee87c770e4e8be9d44200cdb71d071','content/view/full/135',1,0,0);
INSERT INTO ezurlalias VALUES (131,'discussions/forum_main_group/music_discussion/foo','12c58f35c1114deeb172aba728c50ca8','content/view/full/136',1,0,0);
INSERT INTO ezurlalias VALUES (132,'discussions/forum_main_group/music_discussion/lkj_ssssstick/reply','6040856b4ec5bcc1c699d95020005be5','content/view/full/137',1,0,0);
INSERT INTO ezurlalias VALUES (135,'discussions/forum_main_group/music_discussion/lkj_ssssstick/uyuiyui','4c48104ea6e5ec2a78067374d9561fcb','content/view/full/140',1,0,0);
INSERT INTO ezurlalias VALUES (136,'discussions/forum_main_group/music_discussion/test2','53f71d4ff69ffb3bf8c8ccfb525eabd3','content/view/full/141',1,0,0);
INSERT INTO ezurlalias VALUES (137,'discussions/forum_main_group/music_discussion/t4','5da27cda0fbcd5290338b7d22cfd730c','content/view/full/142',1,0,0);
INSERT INTO ezurlalias VALUES (138,'discussions/forum_main_group/music_discussion/lkj_ssssstick/klj_jkl_klj','9ae60fa076882d6807506c2232143d27','content/view/full/143',1,0,0);
INSERT INTO ezurlalias VALUES (139,'discussions/forum_main_group/music_discussion/test2/retest2','a17d07fbbd2d1b6d0fbbf8ca1509cd01','content/view/full/144',1,0,0);
INSERT INTO ezurlalias VALUES (141,'discussions/forum_main_group/music_discussion/lkj_ssssstick/my_reply','1f95000d1f993ffa16a0cf83b78515bf','content/view/full/146',1,0,0);
INSERT INTO ezurlalias VALUES (142,'discussions/forum_main_group/music_discussion/lkj_ssssstick/retest','0686f14064a420e6ee95aabf89c4a4f2','content/view/full/147',1,0,0);
INSERT INTO ezurlalias VALUES (144,'discussions/forum_main_group/music_discussion/hjg_dghsdjgf','21f0ee2122dd5264192adc15c1e69c03','content/view/full/149',1,0,0);
INSERT INTO ezurlalias VALUES (146,'discussions/forum_main_group/music_discussion/hjg_dghsdjgf/dfghd_fghklj','460d30ba47855079ac8605e1c8085993','content/view/full/151',1,0,0);
INSERT INTO ezurlalias VALUES (159,'blogs/computers/special_things_happened_today','4427c3eda2e43a04f639ef1d5f1bb71e','content/view/full/156',1,0,0);
INSERT INTO ezurlalias VALUES (158,'blogs/personal/today_i_got_my_new_car','ce9118c9b6c16328082445f6d8098a0d','content/view/full/155',1,0,0);
INSERT INTO ezurlalias VALUES (149,'discussions/forum_main_group/music_discussion','a1a79985f113d5b05b22c9686b46b175','content/view/full/114',1,0,0);
INSERT INTO ezurlalias VALUES (150,'discussions/music_discussion/*','2ec2a3bfcf01ad3f1323390ab26dfeac','discussions/forum_main_group/music_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (151,'discussions/forum_main_group/sports_discussion','b68c5a82b8b2035eeee5788cb223bb7e','content/view/full/115',1,0,0);
INSERT INTO ezurlalias VALUES (152,'discussions/sports_discussion/*','7acbf48218ca6e1d80c267911860d34f','discussions/forum_main_group/sports_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (153,'about_me','50793f253d2dc015e93a2f75163b0894','content/view/full/127',1,269,0);
INSERT INTO ezurlalias VALUES (160,'blogs/computers/special_things_happened_today/brd_farstad','4d1dddb2000bdf69e822fb41d4000919','content/view/full/157',1,0,0);
INSERT INTO ezurlalias VALUES (161,'blogs/computers/special_things_happened_today/bbb','afc9fd5431105082994247c0ae0992b3','content/view/full/158',1,0,0);
INSERT INTO ezurlalias VALUES (162,'blogs/personal/for_posteritys_sake','c6c14fe1f69ebc2a9db76192fcb204f5','content/view/full/159',1,0,0);
INSERT INTO ezurlalias VALUES (251,'nature/flowers/purple_haze','86cafbea1918587028e945ef4b683370','content/view/full/251',1,0,0);
INSERT INTO ezurlalias VALUES (190,'nature/flowers_in_june/marygold','4426134a10c2a51fe5474a277d425ca3','content/view/full/185',1,0,0);
INSERT INTO ezurlalias VALUES (191,'nature/flowers_in_june/marygold/brd','1fc258a3660094f111baddb66f526142','content/view/full/186',1,192,0);
INSERT INTO ezurlalias VALUES (192,'nature/flowers_in_june/marygold/nice_image','cb01bf081117199266b52b99e3ccfd70','content/view/full/186',1,0,0);
INSERT INTO ezurlalias VALUES (168,'blogs/computers/special_things_happened_today/brd','40f4dda88233928fac915274a90476b5','content/view/full/165',1,0,0);
INSERT INTO ezurlalias VALUES (169,'links/news/vg','ae1126bc66ec164212018a497469e3b5','content/view/full/166',1,0,0);
INSERT INTO ezurlalias VALUES (170,'blogs/computers/special_things_happened_today/kjh','0cca438ee3d1d3b2cdfaa9d45dbac2a7','content/view/full/167',1,0,0);
INSERT INTO ezurlalias VALUES (171,'links/news/sina_','68e911c6f20934bdc959741837d8d092','content/view/full/168',1,0,0);
INSERT INTO ezurlalias VALUES (172,'blogs/computers/new_big_discovery_today','d174bf1f78f8c3cbf985909a26880d88','content/view/full/169',1,0,0);
INSERT INTO ezurlalias VALUES (173,'links/software/soft_house','aa5de9806ca77bb313e748c9bcf5def8','content/view/full/170',1,0,0);
INSERT INTO ezurlalias VALUES (174,'blogs/computers/no_comments_on_this_one','0df10f829cc6d968d74ece063eaee683','content/view/full/171',1,0,0);
INSERT INTO ezurlalias VALUES (175,'blogs/computers/new_big_discovery_today/brd','2aee5cbd251dbc484e78fba61e5bb7cf','content/view/full/172',1,0,0);
INSERT INTO ezurlalias VALUES (261,'nature/landscape','c414de967eedae8262a7354d5e3e866a','content/view/full/253',1,0,0);
INSERT INTO ezurlalias VALUES (179,'blogs/computers/new_big_discovery_today/ghghj','cd10884873caf4a20621b35199f331c4','content/view/full/175',1,0,0);
INSERT INTO ezurlalias VALUES (194,'nature/flowers_in_june/green','9da501e5531da587ec568f73eb5c00a3','content/view/full/188',1,0,0);
INSERT INTO ezurlalias VALUES (181,'blogs/entertainment/a_pirates_life','bb23fe0ca4a2afc405c4a70d5ff0abd0','content/view/full/177',1,0,0);
INSERT INTO ezurlalias VALUES (182,'setup/look_and_feel/blog','a0aa455a1c24b5d1d0448546c83836cf','content/view/full/54',1,213,0);
INSERT INTO ezurlalias VALUES (183,'blogs/entertainment/a_pirates_life/kjlh','dbf2c1455eff8c6100181582298d197f','content/view/full/178',1,0,0);
INSERT INTO ezurlalias VALUES (184,'blogs/entertainment/a_pirates_life/kjhkjh','e73acc89936bc771971a97eb45d51c66','content/view/full/179',1,0,0);
INSERT INTO ezurlalias VALUES (185,'blogs/computers/i_overslept_today','9497b5cd127ce3f9f04e3d74c8fc4da5','content/view/full/180',1,0,0);
INSERT INTO ezurlalias VALUES (196,'people/asia_people/suchi','2b6ceb88b365cbf425b48a000442a654','content/view/full/190',1,0,0);
INSERT INTO ezurlalias VALUES (197,'people/asia_people/maid','4dc59141caa2b7a1cb9ec01ca94ebfc3','content/view/full/191',1,0,0);
INSERT INTO ezurlalias VALUES (198,'people/asia_people/ellen','f52e1d82b911e65778e70f3cc75916df','content/view/full/192',1,0,0);
INSERT INTO ezurlalias VALUES (199,'nature/flowers_in_june/green/nice_image','7545f6989baf13ac6bedeab474e3de9c','content/view/full/193',1,0,0);
INSERT INTO ezurlalias VALUES (200,'nature/flowers_in_june/green/ool','83d2ae1be41ce0d5fc0875bd94b556a1','content/view/full/194',1,0,0);
INSERT INTO ezurlalias VALUES (201,'nature/flowers_in_june/green/ooh','40b0363eb8880262642a4e0c42594f5c','content/view/full/195',1,0,0);
INSERT INTO ezurlalias VALUES (202,'nature/flowers_in_june/marygold/dsfgsdgf','03f4289cc8b98a14acc4ae78c3649025','content/view/full/196',1,0,0);
INSERT INTO ezurlalias VALUES (203,'nature/flowers_in_june/foo','8e80ad1e11fa10ea3fd00771c45d2a2d','content/view/full/197',1,0,0);
INSERT INTO ezurlalias VALUES (204,'nature/flowers_in_june/marygold/jkhjkhk','aab1582af8e975338c9221189b17d6cb','content/view/full/198',1,0,0);
INSERT INTO ezurlalias VALUES (205,'news','508c75c8507a2ae5223dfd2faeb98122','content/view/full/199',1,0,0);
INSERT INTO ezurlalias VALUES (207,'nature/flowers_in_june/foo/nice_feel','3b31350a2dd3df6615cb7a36410328c5','content/view/full/201',1,0,0);
INSERT INTO ezurlalias VALUES (208,'people/asia_people/xiake','8281574139ed78c6ea3396616e2dfb20','content/view/full/202',1,0,0);
INSERT INTO ezurlalias VALUES (209,'nature/lucky','a38b40db7afdadf093ab684ed97a9bb8','content/view/full/203',1,216,0);
INSERT INTO ezurlalias VALUES (210,'nature/flowers_in_june/limestone','4840af0c64a8f374728205ee032f41c9','content/view/full/204',1,0,0);
INSERT INTO ezurlalias VALUES (211,'nature/flowers_in_june/bombwall_boz','e773dfe30e5575d1ccf6ac40f2748626','content/view/full/205',1,0,0);
INSERT INTO ezurlalias VALUES (212,'nature/flowers_in_june/hedgehog','f66f727f82b616a90673e04f2dc3cfff','content/view/full/206',1,0,0);
INSERT INTO ezurlalias VALUES (213,'setup/look_and_feel/my_gallery','da1e93305d8b5181634ebdb1319569bd','content/view/full/54',1,0,0);
INSERT INTO ezurlalias VALUES (215,'nature/games/cgwloading1600','2b5a3fdfd44ebecbb82164584eb7c81b','content/view/full/208',1,0,0);
INSERT INTO ezurlalias VALUES (216,'nature/flowers_in_june/lucky','81aac1ed0b07b6bf549ddf4a82288135','content/view/full/203',1,0,0);
INSERT INTO ezurlalias VALUES (250,'nature/flowers/blue_flower','5b763d7e491af63d009ac03b80239aba','content/view/full/250',1,0,0);
INSERT INTO ezurlalias VALUES (249,'nature__1/*','07ead2373ee62cfa2b9ab3251c499c97','nature/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (219,'nature/games/champ01','2d1a70f41c99db78ed6f8923c5979c23','content/view/full/211',1,0,0);
INSERT INTO ezurlalias VALUES (220,'nature/games/cover','5bd1a87c7d91e0e069b5b324f33a2229','content/view/full/212',1,0,0);
INSERT INTO ezurlalias VALUES (221,'nature/games/cgimage06','869eb2ff6c14ddbf9414611a63c44b96','content/view/full/213',1,0,0);
INSERT INTO ezurlalias VALUES (222,'nature/animals/sky_scraper','0a6f23861db026d58d0600c36a583ec0','content/view/full/214',1,0,0);
INSERT INTO ezurlalias VALUES (223,'nature/animals/creepybox','37f15623b438e349897a577cba4d441b','content/view/full/215',1,0,0);
INSERT INTO ezurlalias VALUES (224,'nature/animals/cow','31353785d3488a6f94248b5df1c461fe','content/view/full/216',1,0,0);
INSERT INTO ezurlalias VALUES (258,'nature','405aaff66082ffe7231d7c1f79926c17','content/view/full/248',1,0,0);
INSERT INTO ezurlalias VALUES (226,'nature/my_pictures/lw0000039','70e9761265394b58ecec8d8797a402ab','content/view/full/218',1,0,0);
INSERT INTO ezurlalias VALUES (227,'nature/my_pictures/blomst','d070278f420a9e5b0f6c2f9a24622ad4','content/view/full/219',1,0,0);
INSERT INTO ezurlalias VALUES (228,'nature/flowers_in_june/lucky/nice_one','f470c036c048cba377e314209f72bd59','content/view/full/220',1,0,0);
INSERT INTO ezurlalias VALUES (230,'cars/broom_broom/crash','8c562c66f14b575e70041f6014a68a1e','content/view/full/222',1,0,0);
INSERT INTO ezurlalias VALUES (231,'nature/games/games_for_you','f23dc9c43404a57731461d243990484d','content/view/full/223',1,0,0);
INSERT INTO ezurlalias VALUES (233,'people/games/blurry_people','aa9a56f79db1f52b2f9333ddeca5f3fc','content/view/full/225',1,0,0);
INSERT INTO ezurlalias VALUES (234,'people/games/outcast','9ed4a0ecaf24cfa841e766e9c57a65fc','content/view/full/226',1,0,0);
INSERT INTO ezurlalias VALUES (235,'people/games/blacksmith','d185b17e748c5ae0ea463da861c3e6b8','content/view/full/227',1,0,0);
INSERT INTO ezurlalias VALUES (238,'games/jedi_knight/logo','9bb045dbefa56497c80667fe6589f521','content/view/full/230',1,0,0);
INSERT INTO ezurlalias VALUES (262,'nature/landscape/ormevika_skyline','160b1c14354a6dd8c474dfa25cc1bc2b','content/view/full/255',1,0,0);
INSERT INTO ezurlalias VALUES (241,'abstract/misc/green_branch','31027a374a0ab73a2f50e3b462b9d6a0','content/view/full/233',1,0,0);
INSERT INTO ezurlalias VALUES (242,'abstract/misc/mjaurits','e466c08f08d86491f0cdcd25f6fdec89','content/view/full/263',1,0,0);
INSERT INTO ezurlalias VALUES (243,'abstract/misc/gear_wheel','a9e42e6e94ea7f05fb85e81304f6c9d2','content/view/full/261',1,0,0);
INSERT INTO ezurlalias VALUES (244,'abstract/misc/clover','5ee1e0f9265330fb866ff5033e5566e7','content/view/full/236',1,0,0);
INSERT INTO ezurlalias VALUES (245,'abstract/misc/the_need_for_speed','28a175b764b7d4fe0e15823b1406ec8f','content/view/full/237',1,0,0);
INSERT INTO ezurlalias VALUES (259,'nature/flowers','fcf4f3ad05704e53c28c28dd615dfed1','content/view/full/249',1,0,0);
INSERT INTO ezurlalias VALUES (252,'nature/flowers/yellow','1794c04296bdb61ef2a829fbb2b43dbd','content/view/full/242',1,0,0);
INSERT INTO ezurlalias VALUES (260,'nature/flowers/yellow_flower','b4eda4f4f56369fa2335c7926bd80e7e','content/view/full/252',1,0,0);
INSERT INTO ezurlalias VALUES (254,'nature/landscape/pond_reflection','a44de60ea29ebe58a0daf6032835ff13','content/view/full/254',1,0,0);
INSERT INTO ezurlalias VALUES (255,'nature/landscape/skyline','bab64e01e92bb8021b4142b8d1175fcf','content/view/full/245',1,0,0);
INSERT INTO ezurlalias VALUES (256,'nature/landscape/foggy_trees','0f1800c387d13296b66c1a9dbdbeb3cd','content/view/full/256',1,0,0);
INSERT INTO ezurlalias VALUES (257,'nature/landscape/water','d6ecab04885623ee57b21e1be8175667','content/view/full/247',1,0,0);
INSERT INTO ezurlalias VALUES (263,'nature/landscape/water_reflection','a0780ff9569ed64f0ea0975190b0ec0b','content/view/full/257',1,0,0);
INSERT INTO ezurlalias VALUES (264,'abstract','ce28071e1a0424ba1b7956dd3853c7fb','content/view/full/258',1,0,0);
INSERT INTO ezurlalias VALUES (265,'abstract/misc','514b370e8de983586f80a3069b026ed0','content/view/full/259',1,0,0);
INSERT INTO ezurlalias VALUES (266,'abstract/misc/cvs_branching','e78f8f18386ca133abf85de1fdb99a9f','content/view/full/260',1,0,0);
INSERT INTO ezurlalias VALUES (267,'abstract/misc/green_clover','720c8416fde86772a895e172a36cc80d','content/view/full/262',1,0,0);
INSERT INTO ezurlalias VALUES (268,'abstract/misc/speeding','dccac6ce16572084195113b46fa28036','content/view/full/264',1,0,0);
INSERT INTO ezurlalias VALUES (269,'about_my_gallery','f9546701fd4ce1c2d4fa393c2d9ab4ac','content/view/full/127',1,0,0);
INSERT INTO ezurlalias VALUES (270,'news/added_new_gallery','b0d34695c66ecec9d3cad7d15626fbe9','content/view/full/200',1,0,0);
INSERT INTO ezurlalias VALUES (271,'users/gallery_editor','062c92c946f51a1b5f59c690884d4bdb','content/view/full/12',1,0,0);
INSERT INTO ezurlalias VALUES (272,'users/gallery_editor/gallery_editor','ce0cc39926cb1f9b4ad37d79f923d30e','content/view/full/265',1,0,0);
INSERT INTO ezurlalias VALUES (273,'users/anonymous_users','3ae1aac958e1c82013689d917d34967a','content/view/full/266',1,0,0);
INSERT INTO ezurlalias VALUES (274,'users/anonymous_users/anonymous_user','aad93975f09371695ba08292fd9698db','content/view/full/11',1,0,0);
INSERT INTO ezurlalias VALUES (275,'setup/common_ini_settings','e501fe6c81ed14a5af2b322d248102d8','content/view/full/267',1,0,0);
INSERT INTO ezurlalias VALUES (276,'setup/common_ini_settings/common_ini_settings','51580fac4a0d382aede57bc43af6e63a','content/view/full/268',1,0,0);
INSERT INTO ezurlalias VALUES (277,'setup/setup_links/common_ini_settings','e85ca643d417d1d3b7459bc4eef7a1f0','content/view/full/269',1,0,0);

--
-- Table structure for table 'ezuser'
--

CREATE TABLE ezuser (
  contentobject_id int(11) NOT NULL default '0',
  login varchar(150) NOT NULL default '',
  email varchar(150) NOT NULL default '',
  password_hash_type int(11) NOT NULL default '1',
  password_hash varchar(50) default NULL,
  PRIMARY KEY  (contentobject_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezuser'
--


INSERT INTO ezuser VALUES (10,'anonymous','nospam@ez.no',2,'4e6f6184135228ccd45f8233d72a0363');
INSERT INTO ezuser VALUES (14,'admin','nospam@ez.no',2,'c78e3b0f3d9244ed8c6d1c29464bdff9');
INSERT INTO ezuser VALUES (108,'','',2,'b909d5bf76b64b7a6fac03f7eda11ee3');
INSERT INTO ezuser VALUES (109,'','',2,'e4ab2f05e418842bb3abf148f9d06c1c');
INSERT INTO ezuser VALUES (130,'','',2,'4ccb7125baf19de015388c99893fbb4d');
INSERT INTO ezuser VALUES (187,'','',1,'');
INSERT INTO ezuser VALUES (189,'','',1,'');
INSERT INTO ezuser VALUES (336,'','',2,'cb2f6b2b2c106a1d0aa0c30f1829b40a');
INSERT INTO ezuser VALUES (337,'gallery','galleryeditor@example.com',2,'4bef7c4a5ea969ec7204e5357e1ff565');

--
-- Table structure for table 'ezuser_accountkey'
--

CREATE TABLE ezuser_accountkey (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  hash_key varchar(32) NOT NULL default '',
  time int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezuser_accountkey'
--


INSERT INTO ezuser_accountkey VALUES (1,154,'837e17025d6b3a340cfb305769caa30d',1068042835);
INSERT INTO ezuser_accountkey VALUES (2,188,'281ca20cd4d47e3f3be239f6e587df70',1068110661);
INSERT INTO ezuser_accountkey VALUES (3,197,'6a92e8886841440681b58a699e69d4dc',1068112344);

--
-- Table structure for table 'ezuser_discountrule'
--

CREATE TABLE ezuser_discountrule (
  id int(11) NOT NULL auto_increment,
  discountrule_id int(11) default NULL,
  contentobject_id int(11) default NULL,
  name varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezuser_discountrule'
--



--
-- Table structure for table 'ezuser_role'
--

CREATE TABLE ezuser_role (
  id int(11) NOT NULL auto_increment,
  role_id int(11) default NULL,
  contentobject_id int(11) default NULL,
  PRIMARY KEY  (id),
  KEY ezuser_role_contentobject_id (contentobject_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezuser_role'
--


INSERT INTO ezuser_role VALUES (29,1,10);
INSERT INTO ezuser_role VALUES (25,2,12);
INSERT INTO ezuser_role VALUES (28,1,11);
INSERT INTO ezuser_role VALUES (34,1,13);
INSERT INTO ezuser_role VALUES (35,8,11);

--
-- Table structure for table 'ezuser_setting'
--

CREATE TABLE ezuser_setting (
  user_id int(11) NOT NULL default '0',
  is_enabled int(1) NOT NULL default '0',
  max_login int(11) default NULL,
  PRIMARY KEY  (user_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezuser_setting'
--


INSERT INTO ezuser_setting VALUES (10,1,1000);
INSERT INTO ezuser_setting VALUES (14,1,10);
INSERT INTO ezuser_setting VALUES (23,1,0);
INSERT INTO ezuser_setting VALUES (40,1,0);
INSERT INTO ezuser_setting VALUES (107,1,0);
INSERT INTO ezuser_setting VALUES (108,1,0);
INSERT INTO ezuser_setting VALUES (109,1,0);
INSERT INTO ezuser_setting VALUES (111,1,0);
INSERT INTO ezuser_setting VALUES (130,1,0);
INSERT INTO ezuser_setting VALUES (149,1,0);
INSERT INTO ezuser_setting VALUES (154,0,0);
INSERT INTO ezuser_setting VALUES (187,1,0);
INSERT INTO ezuser_setting VALUES (188,0,0);
INSERT INTO ezuser_setting VALUES (189,1,0);
INSERT INTO ezuser_setting VALUES (197,0,0);
INSERT INTO ezuser_setting VALUES (198,1,0);
INSERT INTO ezuser_setting VALUES (206,1,0);
INSERT INTO ezuser_setting VALUES (336,1,0);
INSERT INTO ezuser_setting VALUES (337,1,0);

--
-- Table structure for table 'ezvattype'
--

CREATE TABLE ezvattype (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  percentage float default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezvattype'
--


INSERT INTO ezvattype VALUES (1,'Std',0);

--
-- Table structure for table 'ezview_counter'
--

CREATE TABLE ezview_counter (
  node_id int(11) NOT NULL default '0',
  count int(11) NOT NULL default '0',
  PRIMARY KEY  (node_id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezview_counter'
--



--
-- Table structure for table 'ezwaituntildatevalue'
--

CREATE TABLE ezwaituntildatevalue (
  id int(11) NOT NULL auto_increment,
  workflow_event_id int(11) NOT NULL default '0',
  workflow_event_version int(11) NOT NULL default '0',
  contentclass_id int(11) NOT NULL default '0',
  contentclass_attribute_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id,workflow_event_id,workflow_event_version),
  KEY ezwaituntildateevalue_wf_ev_id_wf_ver (workflow_event_id,workflow_event_version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezwaituntildatevalue'
--



--
-- Table structure for table 'ezwishlist'
--

CREATE TABLE ezwishlist (
  id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL default '0',
  productcollection_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezwishlist'
--



--
-- Table structure for table 'ezworkflow'
--

CREATE TABLE ezworkflow (
  id int(11) NOT NULL auto_increment,
  version int(11) NOT NULL default '0',
  is_enabled int(1) NOT NULL default '0',
  workflow_type_string varchar(50) NOT NULL default '',
  name varchar(255) NOT NULL default '',
  creator_id int(11) NOT NULL default '0',
  modifier_id int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id,version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezworkflow'
--



--
-- Table structure for table 'ezworkflow_assign'
--

CREATE TABLE ezworkflow_assign (
  id int(11) NOT NULL auto_increment,
  workflow_id int(11) NOT NULL default '0',
  node_id int(11) NOT NULL default '0',
  access_type int(11) NOT NULL default '0',
  as_tree int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezworkflow_assign'
--



--
-- Table structure for table 'ezworkflow_event'
--

CREATE TABLE ezworkflow_event (
  id int(11) NOT NULL auto_increment,
  version int(11) NOT NULL default '0',
  workflow_id int(11) NOT NULL default '0',
  workflow_type_string varchar(50) NOT NULL default '',
  description varchar(50) NOT NULL default '',
  data_int1 int(11) default NULL,
  data_int2 int(11) default NULL,
  data_int3 int(11) default NULL,
  data_int4 int(11) default NULL,
  data_text1 varchar(50) default NULL,
  data_text2 varchar(50) default NULL,
  data_text3 varchar(50) default NULL,
  data_text4 varchar(50) default NULL,
  placement int(11) NOT NULL default '0',
  PRIMARY KEY  (id,version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezworkflow_event'
--



--
-- Table structure for table 'ezworkflow_group'
--

CREATE TABLE ezworkflow_group (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  creator_id int(11) NOT NULL default '0',
  modifier_id int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezworkflow_group'
--


INSERT INTO ezworkflow_group VALUES (1,'Standard',14,14,1024392098,1024392098);

--
-- Table structure for table 'ezworkflow_group_link'
--

CREATE TABLE ezworkflow_group_link (
  workflow_id int(11) NOT NULL default '0',
  group_id int(11) NOT NULL default '0',
  workflow_version int(11) NOT NULL default '0',
  group_name varchar(255) default NULL,
  PRIMARY KEY  (workflow_id,group_id,workflow_version)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezworkflow_group_link'
--


INSERT INTO ezworkflow_group_link VALUES (1,1,0,'Standard');

--
-- Table structure for table 'ezworkflow_process'
--

CREATE TABLE ezworkflow_process (
  id int(11) NOT NULL auto_increment,
  process_key varchar(32) NOT NULL default '',
  workflow_id int(11) NOT NULL default '0',
  user_id int(11) NOT NULL default '0',
  content_id int(11) NOT NULL default '0',
  content_version int(11) NOT NULL default '0',
  node_id int(11) NOT NULL default '0',
  session_key varchar(32) NOT NULL default '0',
  event_id int(11) NOT NULL default '0',
  event_position int(11) NOT NULL default '0',
  last_event_id int(11) NOT NULL default '0',
  last_event_position int(11) NOT NULL default '0',
  last_event_status int(11) NOT NULL default '0',
  event_status int(11) NOT NULL default '0',
  created int(11) NOT NULL default '0',
  modified int(11) NOT NULL default '0',
  activation_date int(11) default NULL,
  event_state int(11) default NULL,
  status int(11) default NULL,
  parameters text,
  memento_key varchar(32) default NULL,
  PRIMARY KEY  (id),
  KEY ezworkflow_process_process_key (process_key)
) TYPE=MyISAM;

--
-- Dumping data for table 'ezworkflow_process'
--



