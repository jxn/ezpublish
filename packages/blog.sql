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


INSERT INTO ezcontentbrowserecent VALUES (1,14,44,1076514936,'Setup');
INSERT INTO ezcontentbrowserecent VALUES (2,14,200,1076515013,'Ini settings');
INSERT INTO ezcontentbrowserecent VALUES (3,14,46,1076516926,'Setup links');

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


INSERT INTO ezcontentclass VALUES (1,0,'Folder','folder','<name>',14,14,1024392098,1068804191);
INSERT INTO ezcontentclass VALUES (2,0,'Article','article','<title>',14,14,1024392098,1066907423);
INSERT INTO ezcontentclass VALUES (3,0,'User group','user_group','<name>',14,14,1024392098,1048494743);
INSERT INTO ezcontentclass VALUES (4,0,'User','user','<first_name> <last_name>',14,14,1024392098,1068123024);
INSERT INTO ezcontentclass VALUES (5,0,'Image','image','<name>',8,14,1031484992,1048494784);
INSERT INTO ezcontentclass VALUES (10,0,'Info page','info_page','<name>',14,14,1052385274,1052385353);
INSERT INTO ezcontentclass VALUES (12,0,'File','file','<name>',14,14,1052385472,1052385669);
INSERT INTO ezcontentclass VALUES (14,0,'Setup link','setup_link','<title>',14,14,1066383719,1066383885);
INSERT INTO ezcontentclass VALUES (15,0,'Template look','template_look','<title>',14,14,1066390045,1069677671);
INSERT INTO ezcontentclass VALUES (25,0,'Poll','poll','<name>',14,14,1068716373,1068717758);
INSERT INTO ezcontentclass VALUES (24,0,'Link','link','<name>',14,14,1068716182,1068716360);
INSERT INTO ezcontentclass VALUES (23,0,'Log','log','<title>',14,14,1068710873,1068718967);
INSERT INTO ezcontentclass VALUES (26,0,'Comment','comment','<name>',14,14,1068716787,1068716858);
INSERT INTO ezcontentclass VALUES (27,0,'Common ini settings','common_ini_settings','<name>',14,14,1076514530,1076514715);

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


INSERT INTO ezcontentclass_attribute VALUES (116,0,5,'name','Name','ezstring',1,1,1,150,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (6,0,3,'name','Name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (7,0,3,'description','Description','ezstring',1,0,2,255,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (118,0,5,'image','Image','ezimage',0,0,3,2,0,0,0,0,0,0,0,'','','','',NULL,0,1);
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
INSERT INTO ezcontentclass_attribute VALUES (214,0,1,'list_title','List title','ezstring',0,1,4,0,0,0,0,0,0,0,0,'Recent items','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (1,0,2,'title','Title','ezstring',1,1,1,255,0,0,0,0,0,0,0,'New article','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (177,0,2,'frontpage_image','Frontpage image','ezinteger',0,0,6,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (123,0,2,'enable_comments','Enable comments','ezboolean',0,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (122,0,2,'thumbnail','Thumbnail','ezimage',0,0,4,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (121,0,2,'body','Body','ezxmltext',1,0,3,20,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (120,0,2,'intro','Intro','ezxmltext',1,1,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (198,0,4,'location','Location','ezstring',1,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (199,0,4,'signature','Signature','eztext',1,0,6,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (203,0,23,'log','Log','ezxmltext',1,0,2,15,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (207,0,25,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (208,0,25,'option','Option','ezoption',0,1,2,0,0,0,0,0,0,0,0,'','','','','',1,1);
INSERT INTO ezcontentclass_attribute VALUES (205,0,24,'description','Description','ezxmltext',1,0,2,5,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (206,0,24,'url','URL','ezurl',0,1,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (204,0,24,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (202,0,23,'title','Title','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (212,0,26,'comment','Comment','eztext',1,0,4,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (200,0,4,'user_image','User image','ezimage',0,0,7,1,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (197,0,4,'title','Title','ezstring',1,0,4,25,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (12,0,4,'user_account','User account','ezuser',1,1,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (9,0,4,'last_name','Last name','ezstring',1,1,2,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (8,0,4,'first_name','First name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (213,0,23,'enable_comments','Enable comments','ezboolean',1,0,3,0,0,1,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (211,0,26,'url','URL','ezstring',1,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (210,0,26,'email','E-mail','ezstring',1,0,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (209,0,26,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (215,0,1,'category_list_title','Category list title','ezstring',0,1,5,0,0,0,0,0,0,0,0,'All Categories','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (196,0,15,'siteurl','Site URL','ezinisetting',0,0,7,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteURL','0;1;2;3;4;5','override;user;admin;demo;blog_admin;blog_user',0,1);
INSERT INTO ezcontentclass_attribute VALUES (216,0,1,'archive_title','Archive Title','ezstring',0,1,3,0,0,0,0,0,0,0,0,'Item Archive','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (119,0,1,'description','Description','ezxmltext',1,0,2,5,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (4,0,1,'name','Name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'Folder','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (159,0,15,'image','Image','ezimage',0,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (160,0,15,'sitestyle','Sitestyle','ezpackage',0,0,4,1,0,0,0,0,0,0,0,'sitestyle','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (161,0,15,'id','id','ezstring',1,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (157,0,15,'title','Title','ezinisetting',0,0,1,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteName','0;1;2;3;4;5','override;user;admin;demo;blog_admin;blog_user',0,1);
INSERT INTO ezcontentclass_attribute VALUES (180,0,15,'email','Email','ezinisetting',0,0,6,1,0,0,0,0,0,0,0,'site.ini','MailSettings','AdminEmail','0;1;2;3;4;5','override;user;admin;demo;blog_admin;blog_user',0,1);
INSERT INTO ezcontentclass_attribute VALUES (158,0,15,'meta_data','Meta data','ezinisetting',0,0,2,6,0,0,0,0,0,0,0,'site.ini','SiteSettings','MetaDataArray','0;1;2;3;4;5','override;user;admin;demo;blog_admin;blog_user',0,1);
INSERT INTO ezcontentclass_attribute VALUES (229,0,27,'imagelarge','Image Large Size','ezinisetting',0,0,13,6,0,0,0,0,0,0,0,'image.ini','large','Filters','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (228,0,27,'imagemedium','Image Medium Size','ezinisetting',0,0,12,6,0,0,0,0,0,0,0,'image.ini','medium','Filters','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (227,0,27,'imagesmall','Image Small Size','ezinisetting',0,0,11,6,0,0,0,0,0,0,0,'image.ini','small','Filters','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (226,0,27,'templatecompile','Template Compile','ezinisetting',0,0,10,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCompile','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (225,0,27,'templatecache','Template Cache','ezinisetting',0,0,9,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCache','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (224,0,27,'viewcaching','View Caching','ezinisetting',0,0,8,2,0,0,0,0,0,0,0,'site.ini','ContentSettings','ViewCaching','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (223,0,27,'debugredirection','Debug Redirection','ezinisetting',0,0,7,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugRedirection','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (220,0,27,'debugoutput','Debug Output','ezinisetting',0,0,4,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugOutput','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (221,0,27,'debugbyip','Debug By IP','ezinisetting',0,0,5,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugByIP','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (222,0,27,'debugiplist','Debug IP List','ezinisetting',0,0,6,6,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugIPList','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (219,0,27,'defaultpage','Default Page','ezinisetting',0,0,3,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','DefaultPage','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (217,0,27,'name','Name','ezstring',1,0,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (218,0,27,'indexpage','Index Page','ezinisetting',0,0,2,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','IndexPage','2;3','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);

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
INSERT INTO ezcontentclass_classgroup VALUES (25,1,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (23,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (26,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (24,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (25,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (14,1,4,'Setup');
INSERT INTO ezcontentclass_classgroup VALUES (26,1,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (27,0,4,'Setup');

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


INSERT INTO ezcontentobject VALUES (1,14,1,1,'Blog',6,0,1033917596,1068710485,1,'');
INSERT INTO ezcontentobject VALUES (4,14,2,3,'Users',1,0,1033917596,1033917596,1,NULL);
INSERT INTO ezcontentobject VALUES (10,14,2,4,'Anonymous User',2,0,1033920665,1072180618,1,'');
INSERT INTO ezcontentobject VALUES (11,14,2,3,'Guest accounts',1,0,1033920746,1033920746,1,NULL);
INSERT INTO ezcontentobject VALUES (12,14,2,3,'Administrator users',1,0,1033920775,1033920775,1,NULL);
INSERT INTO ezcontentobject VALUES (13,14,2,3,'Editors',1,0,1033920794,1033920794,1,NULL);
INSERT INTO ezcontentobject VALUES (14,14,2,4,'Administrator User',5,0,1033920830,1068468219,1,'');
INSERT INTO ezcontentobject VALUES (41,14,3,1,'Media',1,0,1060695457,1060695457,1,'');
INSERT INTO ezcontentobject VALUES (42,14,11,1,'Setup',1,0,1066383068,1066383068,1,'');
INSERT INTO ezcontentobject VALUES (43,14,11,14,'Classes',9,0,1066384365,1068729357,1,'');
INSERT INTO ezcontentobject VALUES (44,14,11,1,'Setup links',1,0,1066384457,1066384457,1,'');
INSERT INTO ezcontentobject VALUES (45,14,11,14,'Look and feel',10,0,1066388816,1068729376,1,'');
INSERT INTO ezcontentobject VALUES (46,14,11,1,'Look and feel',2,0,1066389805,1066389902,1,'');
INSERT INTO ezcontentobject VALUES (47,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (122,14,1,5,'New Image',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (49,14,13,1,'Blogs',5,0,1066398020,1068804689,1,'');
INSERT INTO ezcontentobject VALUES (51,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (53,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (56,14,11,15,'Blog',70,0,1066643397,1069839484,1,'');
INSERT INTO ezcontentobject VALUES (214,14,13,23,'Today I got my new car!',2,0,1068711140,1069770036,1,'');
INSERT INTO ezcontentobject VALUES (215,14,13,23,'Special things happened today',1,0,1068713677,1068713677,2,'');
INSERT INTO ezcontentobject VALUES (212,14,13,1,'Personal',2,0,1068711069,1068717667,1,'');
INSERT INTO ezcontentobject VALUES (161,14,1,10,'About me',3,0,1068047603,1069770484,1,'');
INSERT INTO ezcontentobject VALUES (129,14,1,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (127,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (83,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (84,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (85,14,5,1,'New Folder',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (87,14,5,16,'New Company',1,0,0,0,2,'');
INSERT INTO ezcontentobject VALUES (88,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (91,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (213,14,13,1,'Computers',2,0,1068711091,1068717696,1,'');
INSERT INTO ezcontentobject VALUES (96,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (126,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (103,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (104,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (105,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (106,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (220,14,13,26,'b�b�b',1,0,1068716967,1068716967,2,'');
INSERT INTO ezcontentobject VALUES (115,14,11,14,'Cache',4,0,1066991725,1068729308,1,'');
INSERT INTO ezcontentobject VALUES (116,14,11,14,'URL translator',3,0,1066992054,1068729395,1,'');
INSERT INTO ezcontentobject VALUES (117,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (218,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (219,14,13,26,'B�rd Farstad',1,0,1068716920,1068716920,2,'');
INSERT INTO ezcontentobject VALUES (143,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (144,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (145,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (216,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (217,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (187,14,1,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (189,14,1,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (221,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (222,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (224,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (225,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (226,14,13,23,'For Posterity\'s Sake',1,0,1068717935,1068717935,2,'');
INSERT INTO ezcontentobject VALUES (227,14,1,25,'Which color do you like?',2,0,1068718128,1068719696,2,'');
INSERT INTO ezcontentobject VALUES (228,14,12,1,'Links',4,0,1068718629,1068804675,1,'');
INSERT INTO ezcontentobject VALUES (229,14,12,1,'Software',1,0,1068718672,1068718672,2,'');
INSERT INTO ezcontentobject VALUES (230,14,12,1,'Movie',1,0,1068718712,1068718712,2,'');
INSERT INTO ezcontentobject VALUES (231,14,12,1,'Downloads',2,0,1068718746,1069770638,1,'');
INSERT INTO ezcontentobject VALUES (232,14,12,24,'VG',1,0,1068718861,1068718861,2,'');
INSERT INTO ezcontentobject VALUES (233,14,13,26,'b�rd',1,0,1068718705,1068718705,2,'');
INSERT INTO ezcontentobject VALUES (234,14,12,24,'Sina',1,0,1068718957,1068718957,2,'');
INSERT INTO ezcontentobject VALUES (235,14,13,26,'kjh',1,0,1068718760,1068718760,2,'');
INSERT INTO ezcontentobject VALUES (236,14,12,24,'Soft house',1,0,1068719251,1068719251,2,'');
INSERT INTO ezcontentobject VALUES (237,14,13,23,'New big discovery today',1,0,1068719051,1068719051,2,'');
INSERT INTO ezcontentobject VALUES (238,14,13,23,'No comments on this one',1,0,1068719129,1068719129,2,'');
INSERT INTO ezcontentobject VALUES (239,14,13,26,'B�rd',1,0,1068719374,1068719374,2,'');
INSERT INTO ezcontentobject VALUES (240,14,1,1,'Polls',3,0,1068719643,1069172879,1,'');
INSERT INTO ezcontentobject VALUES (241,14,1,25,'Which one is the best of matrix movies?',1,0,1068720802,1068720802,1,'');
INSERT INTO ezcontentobject VALUES (242,14,13,26,'ghghj',1,0,1068720915,1068720915,2,'');
INSERT INTO ezcontentobject VALUES (243,14,13,1,'Entertainment',1,0,1068727871,1068727871,1,'');
INSERT INTO ezcontentobject VALUES (244,14,13,23,'A Pirate\'s Life',1,0,1068727918,1068727918,2,'');
INSERT INTO ezcontentobject VALUES (245,14,13,26,'kjlh',1,0,1068730476,1068730476,2,'');
INSERT INTO ezcontentobject VALUES (246,14,13,26,'kjhkjh',1,0,1068737197,1068737197,2,'');
INSERT INTO ezcontentobject VALUES (247,14,13,23,'I overslept today',1,0,1068796296,1068796296,2,'');
INSERT INTO ezcontentobject VALUES (248,10,13,26,'ete',1,0,1069409151,1069409151,2,'');
INSERT INTO ezcontentobject VALUES (252,14,13,23,'I overslept again',1,0,1069770140,1069770140,1,'');
INSERT INTO ezcontentobject VALUES (253,14,13,23,'Tonight I was at the movies',1,0,1069770254,1069770254,1,'');
INSERT INTO ezcontentobject VALUES (254,14,13,23,'Finally I got it',1,0,1069770356,1069770356,1,'');
INSERT INTO ezcontentobject VALUES (255,14,12,24,'eZ systems',1,0,1069770691,1069770691,1,'');
INSERT INTO ezcontentobject VALUES (256,14,12,24,'eZ publish at Freshmeat',1,0,1069770809,1069770809,1,'');
INSERT INTO ezcontentobject VALUES (257,14,12,1,'Movies',1,0,1069770849,1069770849,1,'');
INSERT INTO ezcontentobject VALUES (258,14,12,24,'The Matrix',1,0,1069770910,1069770910,1,'');
INSERT INTO ezcontentobject VALUES (259,14,12,24,'Lord of the Rings',1,0,1069770984,1069770984,1,'');
INSERT INTO ezcontentobject VALUES (260,14,12,1,'Sports',1,0,1069771040,1069771040,1,'');
INSERT INTO ezcontentobject VALUES (261,14,12,24,'Liverpool FC',1,0,1069771089,1069771089,1,'');
INSERT INTO ezcontentobject VALUES (262,14,1,25,'Which do you like the best: Matrix or Lord of the Rings?',1,0,1069771243,1069771243,1,'');
INSERT INTO ezcontentobject VALUES (263,14,13,23,'Party!',1,0,1069771496,1069771496,1,'');
INSERT INTO ezcontentobject VALUES (264,14,12,1,'Fun',1,0,1069773539,1069773539,1,'');
INSERT INTO ezcontentobject VALUES (265,14,12,24,'Pondus',1,0,1069773629,1069773629,1,'');
INSERT INTO ezcontentobject VALUES (266,10,13,26,'Tim',1,0,1069773783,1069773783,1,'');
INSERT INTO ezcontentobject VALUES (267,10,13,26,'Helene',1,0,1069773826,1069773826,1,'');
INSERT INTO ezcontentobject VALUES (268,14,2,3,'Anonymous Users',1,0,1072180551,1072180551,1,'');
INSERT INTO ezcontentobject VALUES (269,14,11,1,'Ini settings',1,0,1076514936,1076514936,1,'');
INSERT INTO ezcontentobject VALUES (270,14,11,27,'Common ini settings',2,0,1076515013,1076579452,1,'');
INSERT INTO ezcontentobject VALUES (271,14,11,14,'Common ini settings',1,0,1076516926,1076516926,1,'');

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


INSERT INTO ezcontentobject_attribute VALUES (1,'eng-GB',6,1,4,'Blog',0,0,0,0,'blog','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (2,'eng-GB',6,1,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (7,'eng-GB',1,4,7,'Main group',NULL,NULL,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (8,'eng-GB',1,4,6,'Users',NULL,NULL,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (22,'eng-GB',1,11,6,'Guest accounts',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (23,'eng-GB',1,11,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (24,'eng-GB',1,12,6,'Administrator users',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (25,'eng-GB',1,12,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (26,'eng-GB',1,13,6,'Editors',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (27,'eng-GB',1,13,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (98,'eng-GB',1,41,4,'Media',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (99,'eng-GB',1,41,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (100,'eng-GB',1,42,4,'Setup',0,0,0,0,'setup','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (101,'eng-GB',1,42,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (106,'eng-GB',1,44,4,'Setup links',0,0,0,0,'setup links','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (107,'eng-GB',1,44,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (112,'eng-GB',2,46,4,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (113,'eng-GB',2,46,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (810,'eng-GB',1,235,211,'kljh',0,0,0,0,'kljh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (811,'eng-GB',1,235,212,'< >\n\n:)\n\nhttp://ez.no',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (809,'eng-GB',1,235,210,'kjlh',0,0,0,0,'kjlh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (817,'eng-GB',1,226,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (816,'eng-GB',1,215,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (814,'eng-GB',1,236,206,'hzinfo',4,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (813,'eng-GB',1,236,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Download software here.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (812,'eng-GB',1,236,204,'Soft house',0,0,0,0,'soft house','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',4,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',5,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (767,'eng-GB',1,215,202,'Special things happened today',0,0,0,0,'special things happened today','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (768,'eng-GB',1,215,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <link id=\"1\">sd oifgu sdoiguosdiu gfosdfg d</link>dfg sdfg sdfg sdfg sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.</paragraph>\n  <paragraph>sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.</paragraph>\n  <paragraph>\n    <link id=\"1\">sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg</link> sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.sdfg sdfg sdfhsdjkghsdigfu iosdf g.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',7,56,159,'',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',7,56,160,'left_menu',0,0,0,0,'left_menu','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',7,56,161,'intranet888',0,0,0,0,'intranet888','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (923,'eng-GB',2,231,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (983,'eng-GB',1,253,202,'Tonight I was at the movies',0,0,0,0,'tonight i was at the movies','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (984,'eng-GB',1,253,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>My first date with Mia! We went to see the romantic Matrix:-) </paragraph>\n  <paragraph>It must have been a success since she let me follow here home. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (985,'eng-GB',1,253,213,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (820,'eng-GB',1,237,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (819,'eng-GB',1,237,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>I discovered the Internet, it&apos;s big - about 20meters. dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg </line>\n    <line>dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg </line>\n  </paragraph>\n  <paragraph>dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg v</paragraph>\n  <paragraph>dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg </paragraph>\n  <paragraph>dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg dsfg sdfg sdfg </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (818,'eng-GB',1,237,202,'New big discovery today',0,0,0,0,'new big discovery today','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (808,'eng-GB',1,235,209,'kjh',0,0,0,0,'kjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (986,'eng-GB',1,254,202,'Finally I got it',0,0,0,0,'finally i got it','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (987,'eng-GB',1,254,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>After such a long time with pulling my hair I finally got the latest edition of my software working. Perhaps the way to fortune in not that long anymore?</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (980,'eng-GB',1,252,202,'I overslept again',0,0,0,0,'i overslept again','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (981,'eng-GB',1,252,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Somehow I must have turned of the alarm in my sleep. I woke up three hours to late and missed a meeting with what will hopefully be my girlfriend. She was not very happy about this.  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (982,'eng-GB',1,252,213,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (815,'eng-GB',2,214,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (323,'eng-GB',4,115,152,'Cache',0,0,0,0,'cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (324,'eng-GB',4,115,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"cache.png\"\n         suffix=\"png\"\n         basename=\"cache\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache.png\"\n         original_filename=\"gnome-ccperiph.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"324\"\n            attribute_version=\"3\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"cache_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069429665\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"cache_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"1069429665\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"cache_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (772,'eng-GB',1,219,209,'B�rd Farstad',0,0,0,0,'b�rd farstad','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (773,'eng-GB',1,219,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (774,'eng-GB',1,219,211,'http://ez.no',0,0,0,0,'http://ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (775,'eng-GB',1,219,212,'I\'ve seen more speacial things.. dsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gf\n\ndsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gf',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (992,'eng-GB',1,256,204,'eZ publish at Freshmeat',0,0,0,0,'ez publish at freshmeat','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (993,'eng-GB',1,256,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Visit eZ publish at Freshmeat</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (995,'eng-GB',1,257,4,'Movies',0,0,0,0,'movies','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (996,'eng-GB',1,257,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (997,'eng-GB',1,257,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (998,'eng-GB',1,257,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (999,'eng-GB',1,257,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1000,'eng-GB',1,258,204,'The Matrix',0,0,0,0,'the matrix','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1001,'eng-GB',1,258,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Best movies ever. This is the homepage for the movie</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1002,'eng-GB',1,258,206,'',7,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (824,'eng-GB',1,239,209,'B�rd',0,0,0,0,'b�rd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (823,'eng-GB',1,238,213,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (822,'eng-GB',1,238,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>dsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gf</paragraph>\n  <paragraph>dsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gf</paragraph>\n  <paragraph>dsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gfdsgf iosdufg iosdufgo idsfg sdgf sd gf</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (821,'eng-GB',1,238,202,'No comments on this one',0,0,0,0,'no comments on this one','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (797,'eng-GB',2,231,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Links for news site.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',70,56,159,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"blog.gif\"\n         suffix=\"gif\"\n         basename=\"blog\"\n         dirpath=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB\"\n         url=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog.gif\"\n         original_filename=\"weblog.gif\"\n         mime_type=\"original\"\n         width=\"165\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069838835\">\n  <original attribute_id=\"152\"\n            attribute_version=\"69\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"blog_reference.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB\"\n         url=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_reference.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069838837\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"blog_medium.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB\"\n         url=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_medium.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"1069838837\"\n         is_valid=\"1\" />\n  <alias name=\"logo\"\n         filename=\"blog_logo.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB\"\n         url=\"var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_logo.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-447475028\"\n         timestamp=\"1069843716\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',70,56,160,'blog_blue',0,0,0,0,'blog_blue','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',70,56,161,'blog_package',0,0,0,0,'blog_package','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (524,'eng-GB',3,161,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"about_me.\"\n         suffix=\"\"\n         basename=\"about_me\"\n         dirpath=\"var/blog/storage/images/about_me/524-3-eng-GB\"\n         url=\"var/blog/storage/images/about_me/524-3-eng-GB/about_me.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"524\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (766,'eng-GB',2,214,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>It is an old Volkswagen Beetle from 1982. It has a lot more charm that it cost me money. </paragraph>\n  <paragraph>I bought it from a friend for �30 and even got the old original wheels. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (765,'eng-GB',2,214,202,'Today I got my new car!',0,0,0,0,'today i got my new car!','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (850,'eng-GB',1,247,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>sdgj sdlgjsdkfjlgh sdfg sdfg</line>\n    <line>sdfg</line>\n    <line>sdg</line>\n    <line>sdf</line>\n    <line>gds</line>\n  </paragraph>\n  <paragraph>\n    <line>sdfgsdfgsd</line>\n    <line>fg</line>\n    <line>sdfg</line>\n    <line>sdf</line>\n    <line>gsd</line>\n    <line>fg</line>\n    <line>sdg</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (851,'eng-GB',1,247,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (825,'eng-GB',1,239,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (802,'eng-GB',1,233,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (803,'eng-GB',1,233,211,'http://ez.no',0,0,0,0,'http://ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (804,'eng-GB',1,233,212,'dfgl sdflg sdiofg usdoigfu osdigu iosdgf sdgfsd\nfg\nsdfg\nsdfg\nsdg',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (437,'eng-GB',70,56,180,'nospam@ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (871,'eng-GB',2,231,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (896,'eng-GB',2,231,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (989,'eng-GB',1,255,204,'eZ systems',0,0,0,0,'ez systems','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (990,'eng-GB',1,255,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Creators of eZ publish content management system</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (991,'eng-GB',1,255,206,'',1,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (807,'eng-GB',1,234,206,'sina',3,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (806,'eng-GB',1,234,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>A famous chinese news site.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (805,'eng-GB',1,234,204,'Sina ',0,0,0,0,'sina','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (28,'eng-GB',5,14,8,'Administrator',0,0,0,0,'administrator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (29,'eng-GB',5,14,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (30,'eng-GB',5,14,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (695,'eng-GB',5,14,197,'Uberguru',0,0,0,0,'uberguru','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (707,'eng-GB',5,14,198,'Skien/Norway',0,0,0,0,'skien/norway','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (719,'eng-GB',5,14,199,'developer... ;)',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (731,'eng-GB',5,14,200,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"administrator_user.jpg\"\n         suffix=\"jpg\"\n         basename=\"administrator_user\"\n         dirpath=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB\"\n         url=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB/administrator_user.jpg\"\n         original_filename=\"dscn9308.jpg\"\n         mime_type=\"original\"\n         width=\"1600\"\n         height=\"1200\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"731\"\n            attribute_version=\"4\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"administrator_user_reference.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB\"\n         url=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB/administrator_user_reference.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"600\"\n         height=\"450\"\n         alias_key=\"-294625821\"\n         is_valid=\"1\" />\n  <alias name=\"small\"\n         filename=\"administrator_user_small.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB\"\n         url=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB/administrator_user_small.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"100\"\n         height=\"75\"\n         alias_key=\"-164556570\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"administrator_user_medium.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB\"\n         url=\"var/forum/storage/images/users/administrator_users/administrator_user/731-5-eng-GB/administrator_user_medium.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"200\"\n         height=\"150\"\n         alias_key=\"1874955560\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (792,'eng-GB',1,229,4,'Software',0,0,0,0,'software','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (793,'eng-GB',1,229,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Links about software..</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (794,'eng-GB',1,230,4,'Movie',0,0,0,0,'movie','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (795,'eng-GB',1,230,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Links to movie sites.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (798,'eng-GB',1,232,204,'VG',0,0,0,0,'vg','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (799,'eng-GB',1,232,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Know norwegian news from here.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (800,'eng-GB',1,232,206,'VG',2,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (801,'eng-GB',1,233,209,'b�rd',0,0,0,0,'b�rd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (838,'eng-GB',1,244,202,'A Pirate\'s Life',0,0,0,0,'a pirate\'s life','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (839,'eng-GB',1,244,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Pirates of the Caribbean wasn&apos;t on my list of movies to see until I read what a few others were saying about it. Now I can&apos;t recommend it enough. This movie is an excellent 2.5 hours of pure escapism. Great sets, intriguing cinematography, fun characters, and a downright entertaining story. A good blend of action, humor, and a small dose of Disney-esque romance. As [Capt&apos;n!] Jack Sparrow, Johnny Depp gives us another brilliant performance, holding the audience with his charm and swagger throughout the film&apos;s entirety. He continues to impress me with his wide range of ability and the consistently strong characters of his recent career. And need I say what nice visuals Keira Knightley adds to this film?</paragraph>\n  <paragraph>Without giving anything away, my favorite parts of this movie were the over-obvious tie-ins with Disney&apos;s original ride. Anyone who remembers even a portion of the scenes which float by are bound to have a few chuckles over the way they&apos;re cleverly integrated into the movie. The pirates&apos; movements in and out of moonlight make for nicely added effects which I don&apos;t remember the ride revealing. (Note: The film is rated PG-13 for a reason: the pirates&apos; true identity and their violence may give small children nightmares, so think twice if ye have little ones.)</paragraph>\n  <paragraph>Aside from a few lengthy sword fights, I can&apos;t think of any reason not to say: you should run, not walk, to your nearest theater and see this movie as soon as possible. If you&apos;re not rambling out loud when you walk out of the theater, you&apos;ll at least be mumbling to yourself like a pirate, and hopefully you&apos;ll have had as good a time as I did.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (840,'eng-GB',1,244,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (834,'eng-GB',1,242,211,'fghvmbnmbvnm',0,0,0,0,'fghvmbnmbvnm','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (835,'eng-GB',1,242,212,'fgn fdgh fdgh fdgh\nkl��\n�l�\nl��\nl��\nl��\nhjlh\nhj',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (836,'eng-GB',1,243,4,'Entertainment',0,0,0,0,'entertainment','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (837,'eng-GB',1,243,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Music, books, film, television, shopping, travel, and many other fine escapes and vices. If it&apos;s downright fun, it probably belongs here.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (826,'eng-GB',1,239,211,'sdfgsd',0,0,0,0,'sdfgsd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (827,'eng-GB',1,239,212,'sdfgsdgsd\nsdg\nsdf',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (788,'eng-GB',2,227,207,'Which color do you like?',0,0,0,0,'which color do you like?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (789,'eng-GB',2,227,208,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezoption>\n  <name></name>\n  <options>\n    <option id=\"0\"\n            additional_price=\"\">Blue</option>\n    <option id=\"1\"\n            additional_price=\"\">Yellow</option>\n    <option id=\"2\"\n            additional_price=\"\">Red</option>\n    <option id=\"3\"\n            additional_price=\"\">Orange</option>\n    <option id=\"4\"\n            additional_price=\"\">Green</option>\n  </options>\n</ezoption>',0,0,0,0,'','ezoption');
INSERT INTO ezcontentobject_attribute VALUES (830,'eng-GB',1,241,207,'Which one is the best of matrix movies?',0,0,0,0,'which one is the best of matrix movies?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (831,'eng-GB',1,241,208,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezoption>\n  <name></name>\n  <options>\n    <option id=\"0\"\n            additional_price=\"\">Matrix</option>\n    <option id=\"1\"\n            additional_price=\"\">Matrix reloaded</option>\n    <option id=\"2\"\n            additional_price=\"\">Matrix revoluaton</option>\n  </options>\n</ezoption>',0,0,0,0,'','ezoption');
INSERT INTO ezcontentobject_attribute VALUES (832,'eng-GB',1,242,209,'ghghj',0,0,0,0,'ghghj','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (833,'eng-GB',1,242,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (776,'eng-GB',1,220,209,'b�b�b',0,0,0,0,'b�b�b','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (777,'eng-GB',1,220,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (778,'eng-GB',1,220,211,'http://piranha.no',0,0,0,0,'http://piranha.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (779,'eng-GB',1,220,212,'sdfgsd fgsdgsd\ngf\nsdfg\nsdfgdsg\nsdgf\n',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (786,'eng-GB',1,226,202,'For Posterity\'s Sake',0,0,0,0,'for posterity\'s sake','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (787,'eng-GB',1,226,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Seven years ago, yesterday, I packed up everything I owned, left many friends behind in San Diego, and moved to San Francisco, (where I knew absolutely no one) to start my job at HotWired on August 12, 1996. The Creative Director hired me as a junior designer, since I knew very little about design for the Web, despite the fact that I had more print design experience than almost every other designer there at the time.</paragraph>\n  <paragraph>Three months after starting the low-paying job, I was depressed, out of money, missed my friends in San Diego, and was convinced I had made the wrong move. I gave notice, told my landlord I was moving out, and arranged to go back to my old job at a design agency in San Diego. Two days before I was to leave HotWired, Jonathan Louie (Design Director at the time) convinced me otherwise, offering me a new position and my first promotion of many more to come. I stayed, and lost a girlfriend in San Diego as a result.</paragraph>\n  <paragraph>Fast-forward to the present?</paragraph>\n  <paragraph>In two days, it will have been 9 months since I left Wired to go out on my own. Friends who know the journey and my initial intimidation of taking the job at HotWired say to me, &quot;?and look where you are now.&quot;</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (761,'eng-GB',2,212,4,'Personal',0,0,0,0,'personal','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (762,'eng-GB',2,212,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>A glimpse into the life of me.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (763,'eng-GB',2,213,4,'Computers',0,0,0,0,'computers','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (764,'eng-GB',2,213,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Computers, handhelds, electronic gadgets, and the software which connects them all. I&apos;m an early adopter, which means I often end up paying the price, in more than one way.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (988,'eng-GB',1,254,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (325,'eng-GB',4,115,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (326,'eng-GB',4,115,155,'setup/cache',0,0,0,0,'setup/cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (102,'eng-GB',9,43,152,'Classes',0,0,0,0,'classes','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (103,'eng-GB',9,43,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"classes.png\"\n         suffix=\"png\"\n         basename=\"classes\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes.png\"\n         original_filename=\"gnome-settings.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"103\"\n            attribute_version=\"8\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"classes_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069429664\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"classes_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"1069429664\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"classes_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (104,'eng-GB',9,43,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (105,'eng-GB',9,43,155,'class/grouplist',0,0,0,0,'class/grouplist','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (108,'eng-GB',10,45,152,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (109,'eng-GB',10,45,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"look_and_feel.png\"\n         suffix=\"png\"\n         basename=\"look_and_feel\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel.png\"\n         original_filename=\"gnome-color-browser.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"109\"\n            attribute_version=\"9\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"look_and_feel_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069429665\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"look_and_feel_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n  <alias name=\"icon\"\n         filename=\"look_and_feel_icon.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_icon.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1993047904\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"look_and_feel_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"1069429665\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (110,'eng-GB',10,45,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (111,'eng-GB',10,45,155,'content/edit/56',0,0,0,0,'content/edit/56','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (327,'eng-GB',3,116,152,'URL translator',0,0,0,0,'url translator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (328,'eng-GB',3,116,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"url_translator.png\"\n         suffix=\"png\"\n         basename=\"url_translator\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator.png\"\n         original_filename=\"gnome-globe.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"328\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"url_translator_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069429665\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"url_translator_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"1069429665\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"url_translator_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (329,'eng-GB',3,116,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (330,'eng-GB',3,116,155,'content/urltranslator/',0,0,0,0,'content/urltranslator/','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (841,'eng-GB',1,245,209,'kjlh',0,0,0,0,'kjlh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (842,'eng-GB',1,245,210,'kjh',0,0,0,0,'kjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (843,'eng-GB',1,245,211,'kjh',0,0,0,0,'kjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (844,'eng-GB',1,245,212,'kjlhkhkjhklhj',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (845,'eng-GB',1,246,209,'kjhkjh',0,0,0,0,'kjhkjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (846,'eng-GB',1,246,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (847,'eng-GB',1,246,211,'sdfgsdfg',0,0,0,0,'sdfgsdfg','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (848,'eng-GB',1,246,212,'sdfgsdfgsdfgds\nfgsd\nfg\nsdfg',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (849,'eng-GB',1,247,202,'I overslept today',0,0,0,0,'i overslept today','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (856,'eng-GB',6,1,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (857,'eng-GB',1,41,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (858,'eng-GB',1,42,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (859,'eng-GB',1,44,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (861,'eng-GB',2,46,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (865,'eng-GB',2,212,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (867,'eng-GB',2,213,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (869,'eng-GB',1,229,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (870,'eng-GB',1,230,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (874,'eng-GB',1,243,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (879,'eng-GB',6,1,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (880,'eng-GB',1,41,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (881,'eng-GB',1,42,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (882,'eng-GB',1,44,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (884,'eng-GB',2,46,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (889,'eng-GB',2,212,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (891,'eng-GB',2,213,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (894,'eng-GB',1,229,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (895,'eng-GB',1,230,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (899,'eng-GB',1,243,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (904,'eng-GB',6,1,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (905,'eng-GB',1,41,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (906,'eng-GB',1,42,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (907,'eng-GB',1,44,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (909,'eng-GB',2,46,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (915,'eng-GB',2,212,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (917,'eng-GB',2,213,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (921,'eng-GB',1,229,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (922,'eng-GB',1,230,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (926,'eng-GB',1,243,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (790,'eng-GB',4,228,4,'Links',0,0,0,0,'links','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (791,'eng-GB',4,228,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>Worthwhile websites, weblogs, journals, news pubs, and the like</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (920,'eng-GB',4,228,216,'Link Archive',0,0,0,0,'link archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (868,'eng-GB',4,228,214,'Recent Links',0,0,0,0,'recent links','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (893,'eng-GB',4,228,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (125,'eng-GB',5,49,4,'Blogs',0,0,0,0,'blogs','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (126,'eng-GB',5,49,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>Parenthetical thoughts, concepts, and brainstorms</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (913,'eng-GB',5,49,216,'Log Archive',0,0,0,0,'log archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (863,'eng-GB',5,49,214,'Excerpts from Recent Entries',0,0,0,0,'excerpts from recent entries','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (887,'eng-GB',5,49,215,'Entry Categories',0,0,0,0,'entry categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (828,'eng-GB',3,240,4,'Polls',0,0,0,0,'polls','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (829,'eng-GB',3,240,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (925,'eng-GB',3,240,216,'Poll Archive',0,0,0,0,'poll archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (873,'eng-GB',3,240,214,'Recent polls',0,0,0,0,'recent polls','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (898,'eng-GB',3,240,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (796,'eng-GB',2,231,4,'Downloads',0,0,0,0,'downloads','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (151,'eng-GB',70,56,158,'author=eZ systems package team\ncopyright=eZ systems as\ndescription=Content Management System\nkeywords=cms',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (150,'eng-GB',70,56,157,'Blog',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (956,'eng-GB',1,248,209,'ete',0,0,0,0,'ete','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (957,'eng-GB',1,248,210,'ete',0,0,0,0,'ete','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (958,'eng-GB',1,248,211,'ete',0,0,0,0,'ete','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (959,'eng-GB',1,248,212,'te',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (522,'eng-GB',3,161,140,'About me',0,0,0,0,'about me','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (523,'eng-GB',3,161,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Anyway: this is me:</paragraph>\n  <paragraph>\n    <line>To short</line>\n    <line>To young</line>\n    <line>To smart</line>\n    <line>Not smart enough</line>\n    <line>Pimples</line>\n    <line>Boy</line>\n    <line>Totally girl addicted</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (994,'eng-GB',1,256,206,'',6,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (1003,'eng-GB',1,259,204,'Lord of the Rings',0,0,0,0,'lord of the rings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1004,'eng-GB',1,259,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Can&apos;t wait for number three even if I know what will happen</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1005,'eng-GB',1,259,206,'',8,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (1006,'eng-GB',1,260,4,'Sports',0,0,0,0,'sports','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1007,'eng-GB',1,260,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1008,'eng-GB',1,260,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1009,'eng-GB',1,260,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1010,'eng-GB',1,260,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1011,'eng-GB',1,261,204,'Liverpool FC',0,0,0,0,'liverpool fc','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1012,'eng-GB',1,261,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The best team ever</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1013,'eng-GB',1,261,206,'',9,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (1014,'eng-GB',1,262,207,'Which do you like the best: Matrix or Lord of the Rings?',0,0,0,0,'which do you like the best: matrix or lord of the','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1015,'eng-GB',1,262,208,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezoption>\n  <name></name>\n  <options>\n    <option id=\"0\"\n            additional_price=\"\">Matrix</option>\n    <option id=\"1\"\n            additional_price=\"\">Lord of the Rings </option>\n    <option id=\"2\"\n            additional_price=\"\">None</option>\n  </options>\n</ezoption>',0,0,0,0,'','ezoption');
INSERT INTO ezcontentobject_attribute VALUES (1016,'eng-GB',1,263,202,'Party!',0,0,0,0,'party!','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1017,'eng-GB',1,263,203,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>I was invited to a party at a friends house this weekend. And I was told that the girl of my dreams will also be there. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1018,'eng-GB',1,263,213,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1019,'eng-GB',1,264,4,'Fun',0,0,0,0,'fun','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1020,'eng-GB',1,264,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1021,'eng-GB',1,264,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1022,'eng-GB',1,264,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1023,'eng-GB',1,264,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1024,'eng-GB',1,265,204,'Pondus',0,0,0,0,'pondus','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1025,'eng-GB',1,265,205,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Have you ever discovered the football fanatic? He is available in several languages but this site is in Norwegian only.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1026,'eng-GB',1,265,206,'',10,0,0,0,'','ezurl');
INSERT INTO ezcontentobject_attribute VALUES (1027,'eng-GB',1,266,209,'Tim',0,0,0,0,'tim','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1028,'eng-GB',1,266,210,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1029,'eng-GB',1,266,211,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1030,'eng-GB',1,266,212,'When will you share it with the rest of us?',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (1031,'eng-GB',1,267,209,'Helene',0,0,0,0,'helene','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1032,'eng-GB',1,267,210,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1033,'eng-GB',1,267,211,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1034,'eng-GB',1,267,212,'Can I come? What\'s the address?',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (671,'eng-GB',70,56,196,'myblog.dvh1.ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1035,'eng-GB',1,268,6,'Anonymous Users',0,0,0,0,'anonymous users','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1036,'eng-GB',1,268,7,'User group for the anonymous user',0,0,0,0,'user group for the anonymous user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (19,'eng-GB',2,10,8,'Anonymous',0,0,0,0,'anonymous','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (20,'eng-GB',2,10,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (21,'eng-GB',2,10,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (692,'eng-GB',2,10,197,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (704,'eng-GB',2,10,198,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (716,'eng-GB',2,10,199,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (728,'eng-GB',2,10,200,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"anonymous_user.\"\n         suffix=\"\"\n         basename=\"anonymous_user\"\n         dirpath=\"var/storage/images/users/anonymous_users/anonymous_user/728-2-eng-GB\"\n         url=\"var/storage/images/users/anonymous_users/anonymous_user/728-2-eng-GB/anonymous_user.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1072180557\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1037,'eng-GB',1,269,4,'Ini settings',0,0,0,0,'ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1038,'eng-GB',1,269,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1039,'eng-GB',1,269,216,'Item Archive',0,0,0,0,'item archive','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1040,'eng-GB',1,269,214,'Recent items',0,0,0,0,'recent items','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1041,'eng-GB',1,269,215,'All Categories',0,0,0,0,'all categories','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1042,'eng-GB',1,270,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1043,'eng-GB',1,270,218,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1044,'eng-GB',1,270,219,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1045,'eng-GB',1,270,220,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1046,'eng-GB',1,270,221,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1047,'eng-GB',1,270,222,'=1.2.3.4',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1048,'eng-GB',1,270,223,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1049,'eng-GB',1,270,224,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1050,'eng-GB',1,270,225,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1051,'eng-GB',1,270,226,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1052,'eng-GB',1,270,227,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1053,'eng-GB',1,270,228,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1054,'eng-GB',1,270,229,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1055,'eng-GB',1,271,152,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1056,'eng-GB',1,271,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"common_ini_settings1.png\"\n         suffix=\"png\"\n         basename=\"common_ini_settings1\"\n         dirpath=\"var/blog/storage/images-versioned/1056/1-eng-GB\"\n         url=\"var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1.png\"\n         original_filename=\"exec.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1076516926\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"common_ini_settings1_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images-versioned/1056/1-eng-GB\"\n         url=\"var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1_reference.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"183954394\"\n         timestamp=\"1076516927\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"common_ini_settings1_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images-versioned/1056/1-eng-GB\"\n         url=\"var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1_medium.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"472385770\"\n         timestamp=\"1076516927\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"common_ini_settings1_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/blog/storage/images-versioned/1056/1-eng-GB\"\n         url=\"var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1_large.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"-958410206\"\n         timestamp=\"1076578683\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1057,'eng-GB',1,271,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (1058,'eng-GB',1,271,155,'content/edit/270',0,0,0,0,'content/edit/270','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1042,'eng-GB',2,270,217,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1043,'eng-GB',2,270,218,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1044,'eng-GB',2,270,219,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1045,'eng-GB',2,270,220,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1046,'eng-GB',2,270,221,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1047,'eng-GB',2,270,222,'=1.2.3.4',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1048,'eng-GB',2,270,223,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1049,'eng-GB',2,270,224,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1050,'eng-GB',2,270,225,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1051,'eng-GB',2,270,226,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1052,'eng-GB',2,270,227,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1053,'eng-GB',2,270,228,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1054,'eng-GB',2,270,229,'',0,0,0,0,'','ezinisetting');

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
INSERT INTO ezcontentobject_name VALUES (233,'b�rd',1,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (49,'News',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',37,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (235,'kjh',1,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (236,'Soft house',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (237,'New big discovery today',1,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (87,'New Company',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (88,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',33,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranetyy',31,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',32,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',12,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',13,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (91,'New Template look',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',18,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (214,'Today I got my new car!',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (215,'Special things happened today',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',39,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (96,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (213,'Computers',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (234,'Sina',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',34,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',20,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (212,'Personal',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (103,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (104,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (240,'Polls',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (105,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (106,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Corporate',2,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (240,'Polls',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (227,'Which color do you like?',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (221,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (143,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (144,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (145,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (239,'B�rd',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',44,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (216,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (49,'Blogs',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (238,'No comments on this one',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (187,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (189,'test2 test2',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (228,'Links',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',46,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (231,'News',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (232,'VG',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (227,'Which color do you like?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (226,'For Posterity\'s Sake',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (212,'Personal',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (213,'Computers',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (230,'Movie',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (229,'Software',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (224,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (222,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (225,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (218,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (219,'B�rd Farstad',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (220,'b�b�b',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (217,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Blog',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About me',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (241,'Which one is the best of matrix movies?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (242,'ghghj',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (243,'Entertainment',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (244,'A Pirate\'s Life',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',43,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',47,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (245,'kjlh',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',48,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (246,'kjhkjh',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',49,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (247,'I overslept today',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (228,'Links',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (49,'Blogs',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (228,'Links',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (49,'Blogs',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (228,'Links',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (49,'Blogs',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',50,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',51,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (240,'Polls',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',52,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',55,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',56,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',57,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',58,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',59,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',60,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (248,'ete',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog test',63,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About me',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',61,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',62,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog test',64,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog test',65,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',66,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',67,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',68,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (214,'Today I got my new car!',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (252,'I overslept again',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (253,'Tonight I was at the movies',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (254,'Finally I got it',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (231,'Downloads',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (255,'eZ systems',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (256,'eZ publish at Freshmeat',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (257,'Movies',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (258,'The Matrix',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (259,'Lord of the Rings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (260,'Sports',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (261,'Liverpool FC',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (241,'Which one is the best of matrix movies?',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (262,'Which do you like the best: Matrix or Lord of the Rings?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (263,'Party!',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (264,'Fun',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (265,'Pondus',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (266,'Tim',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (267,'Helene',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',69,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',70,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (268,'Anonymous Users',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (10,'Anonymous User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (269,'Ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (270,'',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (271,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (270,'Common ini settings',2,'eng-GB','eng-GB');

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


INSERT INTO ezcontentobject_tree VALUES (1,1,0,1,1,0,'/1/',1,1,0,NULL,1,1076579452);
INSERT INTO ezcontentobject_tree VALUES (2,1,1,6,1,1,'/1/2/',9,1,0,'',2,1069773826);
INSERT INTO ezcontentobject_tree VALUES (5,1,4,1,0,1,'/1/5/',1,1,0,'users',5,1072180618);
INSERT INTO ezcontentobject_tree VALUES (11,199,10,2,1,3,'/1/5/199/11/',9,1,0,'users/anonymous_users/anonymous_user',11,1072180618);
INSERT INTO ezcontentobject_tree VALUES (12,5,11,1,1,2,'/1/5/12/',1,1,0,'users/guest_accounts',12,1033920746);
INSERT INTO ezcontentobject_tree VALUES (13,5,12,1,1,2,'/1/5/13/',1,1,0,'users/administrator_users',13,1068468219);
INSERT INTO ezcontentobject_tree VALUES (14,5,13,1,1,2,'/1/5/14/',1,1,0,'users/editors',14,1033920794);
INSERT INTO ezcontentobject_tree VALUES (15,13,14,5,1,3,'/1/5/13/15/',9,1,0,'users/administrator_users/administrator_user',15,1068468219);
INSERT INTO ezcontentobject_tree VALUES (43,1,41,1,1,1,'/1/43/',9,1,0,'media',43,1060695457);
INSERT INTO ezcontentobject_tree VALUES (44,1,42,1,1,1,'/1/44/',9,1,0,'setup',44,1076579452);
INSERT INTO ezcontentobject_tree VALUES (45,46,43,9,1,3,'/1/44/46/45/',9,1,0,'setup/setup_links/classes',45,1068729357);
INSERT INTO ezcontentobject_tree VALUES (46,44,44,1,1,2,'/1/44/46/',9,1,0,'setup/setup_links',46,1076516926);
INSERT INTO ezcontentobject_tree VALUES (47,46,45,10,1,3,'/1/44/46/47/',9,1,0,'setup/setup_links/look_and_feel',47,1068729376);
INSERT INTO ezcontentobject_tree VALUES (48,44,46,2,1,2,'/1/44/48/',9,1,0,'setup/look_and_feel',48,1069839484);
INSERT INTO ezcontentobject_tree VALUES (50,2,49,5,1,2,'/1/2/50/',9,1,0,'blogs',50,1069773826);
INSERT INTO ezcontentobject_tree VALUES (54,48,56,70,1,3,'/1/44/48/54/',9,1,0,'setup/look_and_feel/blog',54,1069839484);
INSERT INTO ezcontentobject_tree VALUES (95,46,115,4,1,3,'/1/44/46/95/',9,1,0,'setup/setup_links/cache',95,1068729308);
INSERT INTO ezcontentobject_tree VALUES (96,46,116,3,1,3,'/1/44/46/96/',9,1,0,'setup/setup_links/url_translator',96,1068729395);
INSERT INTO ezcontentobject_tree VALUES (127,2,161,3,1,2,'/1/2/127/',9,1,0,'about_me',127,1069770484);
INSERT INTO ezcontentobject_tree VALUES (153,50,212,2,1,3,'/1/2/50/153/',9,1,0,'blogs/personal',153,1069773826);
INSERT INTO ezcontentobject_tree VALUES (154,50,213,2,1,3,'/1/2/50/154/',9,1,0,'blogs/computers',154,1069773783);
INSERT INTO ezcontentobject_tree VALUES (155,153,214,2,1,4,'/1/2/50/153/155/',9,1,0,'blogs/personal/today_i_got_my_new_car',155,1069770036);
INSERT INTO ezcontentobject_tree VALUES (161,2,228,4,1,2,'/1/2/161/',9,1,0,'links',161,1069773629);
INSERT INTO ezcontentobject_tree VALUES (164,161,231,2,1,3,'/1/2/161/164/',9,1,0,'links/downloads',164,1069770809);
INSERT INTO ezcontentobject_tree VALUES (173,2,240,3,1,2,'/1/2/173/',8,1,0,'polls',173,1069771243);
INSERT INTO ezcontentobject_tree VALUES (174,173,241,1,1,3,'/1/2/173/174/',9,1,1,'polls/which_one_is_the_best_of_matrix_movies',174,1068720802);
INSERT INTO ezcontentobject_tree VALUES (176,50,243,1,1,3,'/1/2/50/176/',9,1,0,'blogs/entertainment',176,1069770254);
INSERT INTO ezcontentobject_tree VALUES (183,153,252,1,1,4,'/1/2/50/153/183/',9,1,0,'blogs/personal/i_overslept_again',183,1069770140);
INSERT INTO ezcontentobject_tree VALUES (184,176,253,1,1,4,'/1/2/50/176/184/',9,1,0,'blogs/entertainment/tonight_i_was_at_the_movies',184,1069770254);
INSERT INTO ezcontentobject_tree VALUES (185,154,254,1,1,4,'/1/2/50/154/185/',9,1,0,'blogs/computers/finally_i_got_it',185,1069773783);
INSERT INTO ezcontentobject_tree VALUES (186,164,255,1,1,4,'/1/2/161/164/186/',9,1,0,'links/downloads/ez_systems',186,1069770691);
INSERT INTO ezcontentobject_tree VALUES (187,164,256,1,1,4,'/1/2/161/164/187/',9,1,0,'links/downloads/ez_publish_at_freshmeat',187,1069770809);
INSERT INTO ezcontentobject_tree VALUES (188,161,257,1,1,3,'/1/2/161/188/',9,1,0,'links/movies',188,1069770984);
INSERT INTO ezcontentobject_tree VALUES (189,188,258,1,1,4,'/1/2/161/188/189/',9,1,0,'links/movies/the_matrix',189,1069770910);
INSERT INTO ezcontentobject_tree VALUES (190,188,259,1,1,4,'/1/2/161/188/190/',9,1,0,'links/movies/lord_of_the_rings',190,1069770984);
INSERT INTO ezcontentobject_tree VALUES (191,161,260,1,1,3,'/1/2/161/191/',9,1,0,'links/sports',191,1069771089);
INSERT INTO ezcontentobject_tree VALUES (192,191,261,1,1,4,'/1/2/161/191/192/',9,1,0,'links/sports/liverpool_fc',192,1069771089);
INSERT INTO ezcontentobject_tree VALUES (193,173,262,1,1,3,'/1/2/173/193/',9,1,0,'polls/which_do_you_like_the_best_matrix_or_lord_of_the_rings',193,1069771243);
INSERT INTO ezcontentobject_tree VALUES (194,153,263,1,1,4,'/1/2/50/153/194/',9,1,0,'blogs/personal/party',194,1069773826);
INSERT INTO ezcontentobject_tree VALUES (195,161,264,1,1,3,'/1/2/161/195/',9,1,0,'links/fun',195,1069773629);
INSERT INTO ezcontentobject_tree VALUES (196,195,265,1,1,4,'/1/2/161/195/196/',9,1,0,'links/fun/pondus',196,1069773629);
INSERT INTO ezcontentobject_tree VALUES (197,185,266,1,1,5,'/1/2/50/154/185/197/',1,1,0,'blogs/computers/finally_i_got_it/tim',197,1069773783);
INSERT INTO ezcontentobject_tree VALUES (198,194,267,1,1,5,'/1/2/50/153/194/198/',1,1,0,'blogs/personal/party/helene',198,1069773826);
INSERT INTO ezcontentobject_tree VALUES (199,5,268,1,1,2,'/1/5/199/',9,1,0,'users/anonymous_users',199,1072180618);
INSERT INTO ezcontentobject_tree VALUES (200,44,269,1,1,2,'/1/44/200/',9,1,0,'setup/ini_settings',200,1076579452);
INSERT INTO ezcontentobject_tree VALUES (201,200,270,2,1,3,'/1/44/200/201/',9,1,0,'setup/ini_settings/common_ini_settings',201,1076579452);
INSERT INTO ezcontentobject_tree VALUES (202,46,271,1,1,3,'/1/44/46/202/',9,1,0,'setup/setup_links/common_ini_settings',202,1076516926);

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


INSERT INTO ezcontentobject_version VALUES (804,1,14,6,1068710443,1068710484,1,1,0);
INSERT INTO ezcontentobject_version VALUES (4,4,14,1,0,0,1,1,0);
INSERT INTO ezcontentobject_version VALUES (439,11,14,1,1033920737,1033920746,1,0,0);
INSERT INTO ezcontentobject_version VALUES (440,12,14,1,1033920760,1033920775,1,0,0);
INSERT INTO ezcontentobject_version VALUES (441,13,14,1,1033920786,1033920794,1,0,0);
INSERT INTO ezcontentobject_version VALUES (831,235,14,1,1068718746,1068718760,1,0,0);
INSERT INTO ezcontentobject_version VALUES (472,41,14,1,1060695450,1060695457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (473,42,14,1,1066383039,1066383068,1,0,0);
INSERT INTO ezcontentobject_version VALUES (475,44,14,1,1066384403,1066384457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (482,46,14,2,1066389882,1066389902,1,0,0);
INSERT INTO ezcontentobject_version VALUES (896,260,14,1,1069771033,1069771040,1,0,0);
INSERT INTO ezcontentobject_version VALUES (895,259,14,1,1069770938,1069770983,1,0,0);
INSERT INTO ezcontentobject_version VALUES (832,236,14,1,1068718999,1068719250,1,0,0);
INSERT INTO ezcontentobject_version VALUES (833,237,14,1,1068718996,1068719051,1,0,0);
INSERT INTO ezcontentobject_version VALUES (885,214,14,2,1069769855,1069770036,1,0,0);
INSERT INTO ezcontentobject_version VALUES (894,258,14,1,1069770876,1069770910,1,0,0);
INSERT INTO ezcontentobject_version VALUES (842,244,14,1,1068727900,1068727917,1,0,0);
INSERT INTO ezcontentobject_version VALUES (845,43,14,9,1068729346,1068729356,1,0,0);
INSERT INTO ezcontentobject_version VALUES (809,215,14,1,1068713628,1068713677,1,0,0);
INSERT INTO ezcontentobject_version VALUES (906,56,14,70,1069839457,1069839484,1,0,0);
INSERT INTO ezcontentobject_version VALUES (835,239,14,1,1068719292,1068719374,1,0,0);
INSERT INTO ezcontentobject_version VALUES (834,238,14,1,1068719106,1068719128,1,0,0);
INSERT INTO ezcontentobject_version VALUES (848,245,14,1,1068730464,1068730475,1,0,0);
INSERT INTO ezcontentobject_version VALUES (844,115,14,4,1068729296,1068729308,1,0,0);
INSERT INTO ezcontentobject_version VALUES (813,219,14,1,1068716892,1068716920,1,0,0);
INSERT INTO ezcontentobject_version VALUES (893,257,14,1,1069770837,1069770849,1,0,0);
INSERT INTO ezcontentobject_version VALUES (892,256,14,1,1069770742,1069770809,1,0,0);
INSERT INTO ezcontentobject_version VALUES (891,255,14,1,1069770648,1069770690,1,0,0);
INSERT INTO ezcontentobject_version VALUES (840,242,14,1,1068720892,1068720915,1,0,0);
INSERT INTO ezcontentobject_version VALUES (841,243,14,1,1068727844,1068727871,1,0,0);
INSERT INTO ezcontentobject_version VALUES (890,231,14,2,1069770628,1069770638,1,0,0);
INSERT INTO ezcontentobject_version VALUES (839,241,14,1,1068720708,1068720802,1,0,0);
INSERT INTO ezcontentobject_version VALUES (837,227,14,2,1068719654,1068719695,1,0,0);
INSERT INTO ezcontentobject_version VALUES (889,161,14,3,1069770402,1069770484,1,0,0);
INSERT INTO ezcontentobject_version VALUES (888,254,14,1,1069770267,1069770356,1,0,0);
INSERT INTO ezcontentobject_version VALUES (825,229,14,1,1068718643,1068718672,1,0,0);
INSERT INTO ezcontentobject_version VALUES (830,234,14,1,1068718886,1068718957,1,0,0);
INSERT INTO ezcontentobject_version VALUES (829,233,14,1,1068718686,1068718705,1,0,0);
INSERT INTO ezcontentobject_version VALUES (887,253,14,1,1069770176,1069770254,1,0,0);
INSERT INTO ezcontentobject_version VALUES (819,213,14,2,1068717682,1068717696,1,0,0);
INSERT INTO ezcontentobject_version VALUES (818,212,14,2,1068717602,1068717667,1,0,0);
INSERT INTO ezcontentobject_version VALUES (828,232,14,1,1068718770,1068718860,1,0,0);
INSERT INTO ezcontentobject_version VALUES (886,252,14,1,1069770048,1069770140,1,0,0);
INSERT INTO ezcontentobject_version VALUES (822,226,14,1,1068717922,1068717934,1,0,0);
INSERT INTO ezcontentobject_version VALUES (826,230,14,1,1068718683,1068718712,1,0,0);
INSERT INTO ezcontentobject_version VALUES (796,14,14,5,1068468183,1068468218,1,0,0);
INSERT INTO ezcontentobject_version VALUES (814,220,14,1,1068716938,1068716967,1,0,0);
INSERT INTO ezcontentobject_version VALUES (847,116,14,3,1068729385,1068729395,1,0,0);
INSERT INTO ezcontentobject_version VALUES (852,247,14,1,1068796274,1068796296,1,0,0);
INSERT INTO ezcontentobject_version VALUES (850,246,14,1,1068737185,1068737197,1,0,0);
INSERT INTO ezcontentobject_version VALUES (846,45,14,10,1068729368,1068729376,1,0,0);
INSERT INTO ezcontentobject_version VALUES (872,248,10,1,1069408745,1069408767,1,0,0);
INSERT INTO ezcontentobject_version VALUES (857,228,14,4,1068804664,1068804675,1,0,0);
INSERT INTO ezcontentobject_version VALUES (858,49,14,5,1068804682,1068804689,1,0,0);
INSERT INTO ezcontentobject_version VALUES (861,240,14,3,1069172829,1069172878,1,0,0);
INSERT INTO ezcontentobject_version VALUES (897,261,14,1,1069771057,1069771089,1,0,0);
INSERT INTO ezcontentobject_version VALUES (899,262,14,1,1069771197,1069771243,1,0,0);
INSERT INTO ezcontentobject_version VALUES (900,263,14,1,1069771432,1069771496,1,0,0);
INSERT INTO ezcontentobject_version VALUES (901,264,14,1,1069773530,1069773539,1,0,0);
INSERT INTO ezcontentobject_version VALUES (902,265,14,1,1069773548,1069773629,1,0,0);
INSERT INTO ezcontentobject_version VALUES (903,266,10,1,1069773747,1069773783,1,0,0);
INSERT INTO ezcontentobject_version VALUES (904,267,10,1,1069773805,1069773826,1,0,0);
INSERT INTO ezcontentobject_version VALUES (907,268,14,1,1072180537,1072180551,1,0,0);
INSERT INTO ezcontentobject_version VALUES (908,10,14,2,1072180557,1072180618,1,0,0);
INSERT INTO ezcontentobject_version VALUES (909,269,14,1,1076514908,1076514935,1,0,0);
INSERT INTO ezcontentobject_version VALUES (910,270,14,1,1076514954,1076515013,3,0,0);
INSERT INTO ezcontentobject_version VALUES (911,271,14,1,1076516888,1076516926,1,0,0);
INSERT INTO ezcontentobject_version VALUES (912,270,14,2,1076579250,1076579452,1,0,0);

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


INSERT INTO ezimagefile VALUES (43,152,'var/blog/storage/images/setup/look_and_feel/blog/152-62-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (42,152,'var/blog/storage/images/setup/look_and_feel/blog/152-62-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (41,152,'var/blog/storage/images/setup/look_and_feel/blog/152-62-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (5,152,'var/blog/storage/images/setup/look_and_feel/blog/152-52-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (6,152,'var/blog/storage/images/setup/look_and_feel/blog/152-55-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (7,152,'var/blog/storage/images/setup/look_and_feel/blog/152-55-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (8,152,'var/blog/storage/images/setup/look_and_feel/blog/152-55-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (9,152,'var/blog/storage/images/setup/look_and_feel/blog/152-55-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (10,152,'var/blog/storage/images/setup/look_and_feel/blog/152-56-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (11,152,'var/blog/storage/images/setup/look_and_feel/blog/152-56-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (12,152,'var/blog/storage/images/setup/look_and_feel/blog/152-56-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (13,152,'var/blog/storage/images/setup/look_and_feel/blog/152-56-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (14,152,'var/blog/storage/images/setup/look_and_feel/blog/152-57-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (15,152,'var/blog/storage/images/setup/look_and_feel/blog/152-57-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (16,152,'var/blog/storage/images/setup/look_and_feel/blog/152-57-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (17,152,'var/blog/storage/images/setup/look_and_feel/blog/152-57-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (18,152,'var/blog/storage/images/setup/look_and_feel/blog/152-58-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (19,152,'var/blog/storage/images/setup/look_and_feel/blog/152-58-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (20,152,'var/blog/storage/images/setup/look_and_feel/blog/152-58-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (21,152,'var/blog/storage/images/setup/look_and_feel/blog/152-58-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (22,152,'var/blog/storage/images/setup/look_and_feel/blog/152-59-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (23,152,'var/blog/storage/images/setup/look_and_feel/blog/152-59-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (24,152,'var/blog/storage/images/setup/look_and_feel/blog/152-59-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (25,152,'var/blog/storage/images/setup/look_and_feel/blog/152-59-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (26,152,'var/blog/storage/images/setup/look_and_feel/blog/152-60-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (27,152,'var/blog/storage/images/setup/look_and_feel/blog/152-60-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (28,152,'var/blog/storage/images/setup/look_and_feel/blog/152-60-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (29,152,'var/blog/storage/images/setup/look_and_feel/blog/152-60-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (30,152,'var/blog/storage/images/setup/look_and_feel/blog/152-61-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (31,152,'var/blog/storage/images/setup/look_and_feel/blog/152-61-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (32,152,'var/blog/storage/images/setup/look_and_feel/blog/152-61-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (33,103,'var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_reference.png');
INSERT INTO ezimagefile VALUES (34,103,'var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_large.png');
INSERT INTO ezimagefile VALUES (35,109,'var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_reference.png');
INSERT INTO ezimagefile VALUES (36,109,'var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_large.png');
INSERT INTO ezimagefile VALUES (37,324,'var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_reference.png');
INSERT INTO ezimagefile VALUES (38,324,'var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_large.png');
INSERT INTO ezimagefile VALUES (39,328,'var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_reference.png');
INSERT INTO ezimagefile VALUES (40,328,'var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_large.png');
INSERT INTO ezimagefile VALUES (44,152,'var/blog/storage/images/setup/look_and_feel/blog/152-62-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (45,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-63-eng-GB/blog_test.gif');
INSERT INTO ezimagefile VALUES (46,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-63-eng-GB/blog_test_reference.gif');
INSERT INTO ezimagefile VALUES (47,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-63-eng-GB/blog_test_medium.gif');
INSERT INTO ezimagefile VALUES (48,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-64-eng-GB/blog_test.gif');
INSERT INTO ezimagefile VALUES (49,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-64-eng-GB/blog_test_reference.gif');
INSERT INTO ezimagefile VALUES (50,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-64-eng-GB/blog_test_medium.gif');
INSERT INTO ezimagefile VALUES (51,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-65-eng-GB/blog_test.gif');
INSERT INTO ezimagefile VALUES (52,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-65-eng-GB/blog_test_reference.gif');
INSERT INTO ezimagefile VALUES (53,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-65-eng-GB/blog_test_medium.gif');
INSERT INTO ezimagefile VALUES (54,152,'var/blog/storage/images/setup/look_and_feel/blog_test/152-65-eng-GB/blog_test_logo.gif');
INSERT INTO ezimagefile VALUES (55,152,'var/blog/storage/images/setup/look_and_feel/blog/152-66-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (56,152,'var/blog/storage/images/setup/look_and_feel/blog/152-66-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (57,152,'var/blog/storage/images/setup/look_and_feel/blog/152-66-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (58,152,'var/blog/storage/images/setup/look_and_feel/blog/152-66-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (59,152,'var/blog/storage/images/setup/look_and_feel/blog/152-67-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (60,152,'var/blog/storage/images/setup/look_and_feel/blog/152-67-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (61,152,'var/blog/storage/images/setup/look_and_feel/blog/152-67-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (62,152,'var/blog/storage/images/setup/look_and_feel/blog/152-67-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (63,152,'var/blog/storage/images/setup/look_and_feel/blog/152-68-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (64,152,'var/blog/storage/images/setup/look_and_feel/blog/152-68-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (65,152,'var/blog/storage/images/setup/look_and_feel/blog/152-68-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (66,524,'var/blog/storage/images/about_me/524-3-eng-GB/about_me.');
INSERT INTO ezimagefile VALUES (68,152,'var/blog/storage/images/setup/look_and_feel/blog/152-69-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (69,152,'var/blog/storage/images/setup/look_and_feel/blog/152-69-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (70,152,'var/blog/storage/images/setup/look_and_feel/blog/152-69-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (71,152,'var/blog/storage/images/setup/look_and_feel/blog/152-69-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (72,152,'var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog.gif');
INSERT INTO ezimagefile VALUES (73,152,'var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_reference.gif');
INSERT INTO ezimagefile VALUES (74,152,'var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_medium.gif');
INSERT INTO ezimagefile VALUES (75,152,'var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_logo.gif');
INSERT INTO ezimagefile VALUES (76,728,'var/storage/images/users/anonymous_users/anonymous_user/728-2-eng-GB/anonymous_user.');
INSERT INTO ezimagefile VALUES (77,109,'var/storage/original/image/phpvzmRGW.png');
INSERT INTO ezimagefile VALUES (78,109,'var/storage/original/image/phppIJtoa.jpg');
INSERT INTO ezimagefile VALUES (79,109,'var/storage/original/image/phpAhcEu9.png');
INSERT INTO ezimagefile VALUES (80,103,'var/storage/original/image/phpWJgae7.png');
INSERT INTO ezimagefile VALUES (81,109,'var/storage/original/image/phpbVfzkm.png');
INSERT INTO ezimagefile VALUES (82,103,'var/storage/original/image/php7ZhvcB.png');
INSERT INTO ezimagefile VALUES (83,103,'var/storage/original/image/phpXz5esv.jpg');
INSERT INTO ezimagefile VALUES (84,1056,'var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1.png');
INSERT INTO ezimagefile VALUES (85,1056,'var/blog/storage/images/setup/setup_links/common_ini_settings/1056-1-eng-GB/common_ini_settings.png');
INSERT INTO ezimagefile VALUES (86,1056,'var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1_reference.png');
INSERT INTO ezimagefile VALUES (87,1056,'var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1_medium.png');
INSERT INTO ezimagefile VALUES (88,1056,'var/blog/storage/images-versioned/1056/1-eng-GB/common_ini_settings1_large.png');

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


INSERT INTO eznode_assignment VALUES (510,1,6,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (4,8,2,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (144,4,1,1,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (593,257,1,161,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (148,9,1,2,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (150,11,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (151,12,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (152,13,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (603,266,1,185,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (182,41,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (183,42,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (185,44,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (193,46,2,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (541,243,1,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (586,252,1,153,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (544,115,4,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (589,161,3,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (606,56,70,48,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (545,43,9,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (546,45,10,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (588,254,1,154,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (561,240,3,2,8,1,1,0,0);
INSERT INTO eznode_assignment VALUES (519,212,2,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (600,263,1,153,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (587,253,1,176,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (547,116,3,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (601,264,1,161,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (539,241,1,173,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (595,259,1,188,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (602,265,1,195,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (591,255,1,164,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (597,261,1,191,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (590,231,2,161,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (592,256,1,164,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (594,258,1,188,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (596,260,1,161,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (604,267,1,194,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (500,14,5,13,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (520,213,2,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (558,49,5,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (585,214,2,153,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (557,228,4,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (599,262,1,173,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (607,268,1,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (609,10,2,199,9,1,1,5,0);
INSERT INTO eznode_assignment VALUES (610,269,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (611,270,1,200,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (612,271,1,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (613,270,2,200,9,1,1,0,0);

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


INSERT INTO eznotificationevent VALUES (1,0,'ezpublish',269,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (2,0,'ezpublish',270,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (3,0,'ezpublish',271,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (4,0,'ezpublish',270,2,0,0,'','','','');

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
INSERT INTO ezpolicy VALUES (341,8,'read','content','*');
INSERT INTO ezpolicy VALUES (388,1,'read','content','');
INSERT INTO ezpolicy VALUES (387,1,'login','user','*');
INSERT INTO ezpolicy VALUES (389,1,'create','content','');
INSERT INTO ezpolicy VALUES (390,1,'edit','content','');
INSERT INTO ezpolicy VALUES (391,1,'versionread','content','');

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


INSERT INTO ezpolicy_limitation VALUES (306,388,'Class',0,'read','content');
INSERT INTO ezpolicy_limitation VALUES (307,389,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (308,390,'Class',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (309,391,'Class',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (310,391,'Owner',0,'versionread','content');

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


INSERT INTO ezpolicy_limitation_value VALUES (633,306,'5');
INSERT INTO ezpolicy_limitation_value VALUES (632,306,'26');
INSERT INTO ezpolicy_limitation_value VALUES (631,306,'25');
INSERT INTO ezpolicy_limitation_value VALUES (630,306,'24');
INSERT INTO ezpolicy_limitation_value VALUES (629,306,'23');
INSERT INTO ezpolicy_limitation_value VALUES (628,306,'2');
INSERT INTO ezpolicy_limitation_value VALUES (627,306,'12');
INSERT INTO ezpolicy_limitation_value VALUES (626,306,'10');
INSERT INTO ezpolicy_limitation_value VALUES (625,306,'1');
INSERT INTO ezpolicy_limitation_value VALUES (634,307,'26');
INSERT INTO ezpolicy_limitation_value VALUES (635,308,'26');
INSERT INTO ezpolicy_limitation_value VALUES (636,309,'26');
INSERT INTO ezpolicy_limitation_value VALUES (637,310,'1');

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
INSERT INTO ezrole VALUES (8,0,'Guest',NULL);

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


INSERT INTO ezsearch_object_word_link VALUES (3537,161,989,0,0,0,990,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3538,161,990,0,1,989,989,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3539,161,989,0,2,990,990,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3540,161,990,0,3,989,991,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3541,161,991,0,4,990,992,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3542,161,992,0,5,991,993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3543,161,993,0,6,992,990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3544,161,990,0,7,993,994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3545,161,994,0,8,990,995,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3546,161,995,0,9,994,994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3547,161,994,0,10,995,996,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3548,161,996,0,11,994,994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3549,161,994,0,12,996,997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3550,161,997,0,13,994,998,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3551,161,998,0,14,997,997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3552,161,997,0,15,998,999,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3553,161,999,0,16,997,1000,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3554,161,1000,0,17,999,1001,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3555,161,1001,0,18,1000,1002,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3556,161,1002,0,19,1001,1003,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3557,161,1003,0,20,1002,1004,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3558,161,1004,0,21,1003,991,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3559,161,991,0,22,1004,992,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3560,161,992,0,23,991,993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3561,161,993,0,24,992,990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3562,161,990,0,25,993,994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3563,161,994,0,26,990,995,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3564,161,995,0,27,994,994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3565,161,994,0,28,995,996,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3566,161,996,0,29,994,994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3567,161,994,0,30,996,997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3568,161,997,0,31,994,998,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3569,161,998,0,32,997,997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3570,161,997,0,33,998,999,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3571,161,999,0,34,997,1000,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3572,161,1000,0,35,999,1001,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3573,161,1001,0,36,1000,1002,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3574,161,1002,0,37,1001,1003,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3575,161,1003,0,38,1002,1004,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3576,161,1004,0,39,1003,0,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3577,228,1005,0,0,0,1005,1,1068718629,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3578,228,1005,0,1,1005,1006,1,1068718629,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3579,228,1006,0,2,1005,1007,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3580,228,1007,0,3,1006,1008,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3581,228,1008,0,4,1007,1009,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3582,228,1009,0,5,1008,1010,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3583,228,1010,0,6,1009,1011,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3584,228,1011,0,7,1010,1012,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3585,228,1012,0,8,1011,1013,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3586,228,1013,0,9,1012,1014,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3587,228,1014,0,10,1013,1006,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3588,228,1006,0,11,1014,1007,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3589,228,1007,0,12,1006,1008,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3590,228,1008,0,13,1007,1009,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3591,228,1009,0,14,1008,1010,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3592,228,1010,0,15,1009,1011,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3593,228,1011,0,16,1010,1012,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3594,228,1012,0,17,1011,1013,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3595,228,1013,0,18,1012,1014,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3596,228,1014,0,19,1013,0,1,1068718629,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3597,231,1015,0,0,0,1015,1,1068718746,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3598,231,1015,0,1,1015,1005,1,1068718746,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3599,231,1005,0,2,1015,1016,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3600,231,1016,0,3,1005,1010,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3601,231,1010,0,4,1016,1017,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3602,231,1017,0,5,1010,1005,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3603,231,1005,0,6,1017,1016,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3604,231,1016,0,7,1005,1010,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3605,231,1010,0,8,1016,1017,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3606,231,1017,0,9,1010,0,1,1068718746,12,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3607,255,1018,0,0,0,1019,24,1069770691,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3608,255,1019,0,1,1018,1018,24,1069770691,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3609,255,1018,0,2,1019,1019,24,1069770691,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3610,255,1019,0,3,1018,1020,24,1069770691,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3611,255,1020,0,4,1019,1021,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3612,255,1021,0,5,1020,1018,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3613,255,1018,0,6,1021,1022,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3614,255,1022,0,7,1018,1023,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3615,255,1023,0,8,1022,1024,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3616,255,1024,0,9,1023,1025,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3617,255,1025,0,10,1024,1020,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3618,255,1020,0,11,1025,1021,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3619,255,1021,0,12,1020,1018,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3620,255,1018,0,13,1021,1022,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3621,255,1022,0,14,1018,1023,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3622,255,1023,0,15,1022,1024,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3623,255,1024,0,16,1023,1025,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3624,255,1025,0,17,1024,0,24,1069770691,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3625,256,1018,0,0,0,1022,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3626,256,1022,0,1,1018,1026,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3627,256,1026,0,2,1022,1027,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3628,256,1027,0,3,1026,1018,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3629,256,1018,0,4,1027,1022,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3630,256,1022,0,5,1018,1026,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3631,256,1026,0,6,1022,1027,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3632,256,1027,0,7,1026,1028,24,1069770809,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3633,256,1028,0,8,1027,1018,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3634,256,1018,0,9,1028,1022,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3635,256,1022,0,10,1018,1026,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3636,256,1026,0,11,1022,1027,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3637,256,1027,0,12,1026,1028,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3638,256,1028,0,13,1027,1018,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3639,256,1018,0,14,1028,1022,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3640,256,1022,0,15,1018,1026,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3641,256,1026,0,16,1022,1027,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3642,256,1027,0,17,1026,0,24,1069770809,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3643,257,1029,0,0,0,1029,1,1069770849,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3644,257,1029,0,1,1029,0,1,1069770849,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3645,258,1013,0,0,0,1030,24,1069770910,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3646,258,1030,0,1,1013,1013,24,1069770910,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3647,258,1013,0,2,1030,1030,24,1069770910,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3648,258,1030,0,3,1013,1031,24,1069770910,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3649,258,1031,0,4,1030,1029,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3650,258,1029,0,5,1031,1032,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3651,258,1032,0,6,1029,992,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3652,258,992,0,7,1032,993,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3653,258,993,0,8,992,1013,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3654,258,1013,0,9,993,1033,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3655,258,1033,0,10,1013,1016,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3656,258,1016,0,11,1033,1013,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3657,258,1013,0,12,1016,1034,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3658,258,1034,0,13,1013,1031,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3659,258,1031,0,14,1034,1029,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3660,258,1029,0,15,1031,1032,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3661,258,1032,0,16,1029,992,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3662,258,992,0,17,1032,993,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3663,258,993,0,18,992,1013,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3664,258,1013,0,19,993,1033,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3665,258,1033,0,20,1013,1016,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3666,258,1016,0,21,1033,1013,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3667,258,1013,0,22,1016,1034,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3668,258,1034,0,23,1013,0,24,1069770910,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3669,259,1035,0,0,0,1021,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3670,259,1021,0,1,1035,1013,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3671,259,1013,0,2,1021,1036,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3672,259,1036,0,3,1013,1035,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3673,259,1035,0,4,1036,1021,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3674,259,1021,0,5,1035,1013,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3675,259,1013,0,6,1021,1036,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3676,259,1036,0,7,1013,1037,24,1069770984,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3677,259,1037,0,8,1036,1038,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3678,259,1038,0,9,1037,1039,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3679,259,1039,0,10,1038,1016,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3680,259,1016,0,11,1039,1040,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3681,259,1040,0,12,1016,1041,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3682,259,1041,0,13,1040,1042,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3683,259,1042,0,14,1041,1043,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3684,259,1043,0,15,1042,1044,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3685,259,1044,0,16,1043,1045,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3686,259,1045,0,17,1044,1046,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3687,259,1046,0,18,1045,1047,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3688,259,1047,0,19,1046,1048,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3689,259,1048,0,20,1047,1037,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3690,259,1037,0,21,1048,1038,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3691,259,1038,0,22,1037,1039,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3692,259,1039,0,23,1038,1016,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3693,259,1016,0,24,1039,1040,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3694,259,1040,0,25,1016,1041,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3695,259,1041,0,26,1040,1042,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3696,259,1042,0,27,1041,1043,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3697,259,1043,0,28,1042,1044,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3698,259,1044,0,29,1043,1045,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3699,259,1045,0,30,1044,1046,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3700,259,1046,0,31,1045,1047,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3701,259,1047,0,32,1046,1048,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3702,259,1048,0,33,1047,0,24,1069770984,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3703,260,1049,0,0,0,1049,1,1069771040,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3704,260,1049,0,1,1049,0,1,1069771040,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3705,261,1050,0,0,0,1051,24,1069771089,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3706,261,1051,0,1,1050,1050,24,1069771089,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3707,261,1050,0,2,1051,1051,24,1069771089,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3708,261,1051,0,3,1050,1013,24,1069771089,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3709,261,1013,0,4,1051,1031,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3710,261,1031,0,5,1013,1052,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3711,261,1052,0,6,1031,1032,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3712,261,1032,0,7,1052,1013,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3713,261,1013,0,8,1032,1031,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3714,261,1031,0,9,1013,1052,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3715,261,1052,0,10,1031,1032,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3716,261,1032,0,11,1052,0,24,1069771089,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3717,264,1053,0,0,0,1053,1,1069773539,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3718,264,1053,0,1,1053,0,1,1069773539,12,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3719,265,1054,0,0,0,1054,24,1069773629,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3720,265,1054,0,1,1054,1055,24,1069773629,12,204,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3721,265,1055,0,2,1054,1056,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3722,265,1056,0,3,1055,1032,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3723,265,1032,0,4,1056,1057,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3724,265,1057,0,5,1032,1013,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3725,265,1013,0,6,1057,1058,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3726,265,1058,0,7,1013,1059,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3727,265,1059,0,8,1058,1060,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3728,265,1060,0,9,1059,993,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3729,265,993,0,10,1060,1061,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3730,265,1061,0,11,993,1062,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3731,265,1062,0,12,1061,1063,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3732,265,1063,0,13,1062,1064,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3733,265,1064,0,14,1063,1065,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3734,265,1065,0,15,1064,992,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3735,265,992,0,16,1065,1017,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3736,265,1017,0,17,992,993,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3737,265,993,0,18,1017,1062,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3738,265,1062,0,19,993,1066,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3739,265,1066,0,20,1062,1067,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3740,265,1067,0,21,1066,1055,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3741,265,1055,0,22,1067,1056,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3742,265,1056,0,23,1055,1032,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3743,265,1032,0,24,1056,1057,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3744,265,1057,0,25,1032,1013,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3745,265,1013,0,26,1057,1058,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3746,265,1058,0,27,1013,1059,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3747,265,1059,0,28,1058,1060,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3748,265,1060,0,29,1059,993,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3749,265,993,0,30,1060,1061,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3750,265,1061,0,31,993,1062,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3751,265,1062,0,32,1061,1063,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3752,265,1063,0,33,1062,1064,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3753,265,1064,0,34,1063,1065,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3754,265,1065,0,35,1064,992,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3755,265,992,0,36,1065,1017,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3756,265,1017,0,37,992,993,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3757,265,993,0,38,1017,1062,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3758,265,1062,0,39,993,1066,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3759,265,1066,0,40,1062,1067,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3760,265,1067,0,41,1066,0,24,1069773629,12,205,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3761,240,1068,0,0,0,1068,1,1068719643,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3762,240,1068,0,1,1068,0,1,1068719643,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3763,241,1069,0,0,0,1070,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3764,241,1070,0,1,1069,993,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3765,241,993,0,2,1070,1013,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3766,241,1013,0,3,993,1031,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3767,241,1031,0,4,1013,1021,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3768,241,1021,0,5,1031,1030,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3769,241,1030,0,6,1021,1029,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3770,241,1029,0,7,1030,1069,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3771,241,1069,0,8,1029,1070,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3772,241,1070,0,9,1069,993,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3773,241,993,0,10,1070,1013,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3774,241,1013,0,11,993,1031,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3775,241,1031,0,12,1013,1021,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3776,241,1021,0,13,1031,1030,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3777,241,1030,0,14,1021,1029,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3778,241,1029,0,15,1030,0,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3779,262,1069,0,0,0,1071,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3780,262,1071,0,1,1069,1056,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3781,262,1056,0,2,1071,1014,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3782,262,1014,0,3,1056,1013,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3783,262,1013,0,4,1014,1031,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3784,262,1031,0,5,1013,1030,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3785,262,1030,0,6,1031,1072,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3786,262,1072,0,7,1030,1035,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3787,262,1035,0,8,1072,1021,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3788,262,1021,0,9,1035,1013,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3789,262,1013,0,10,1021,1036,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3790,262,1036,0,11,1013,1069,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3791,262,1069,0,12,1036,1071,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3792,262,1071,0,13,1069,1056,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3793,262,1056,0,14,1071,1014,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3794,262,1014,0,15,1056,1013,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3795,262,1013,0,16,1014,1031,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3796,262,1031,0,17,1013,1030,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3797,262,1030,0,18,1031,1072,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3798,262,1072,0,19,1030,1035,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3799,262,1035,0,20,1072,1021,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3800,262,1021,0,21,1035,1013,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3801,262,1013,0,22,1021,1036,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3802,262,1036,0,23,1013,0,25,1069771243,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3803,49,1073,0,0,0,1073,1,1066398020,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3804,49,1073,0,1,1073,1074,1,1066398020,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3805,49,1074,0,2,1073,1075,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3806,49,1075,0,3,1074,1076,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3807,49,1076,0,4,1075,1012,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3808,49,1012,0,5,1076,1077,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3809,49,1077,0,6,1012,1074,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3810,49,1074,0,7,1077,1075,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3811,49,1075,0,8,1074,1076,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3812,49,1076,0,9,1075,1012,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3813,49,1012,0,10,1076,1077,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3814,49,1077,0,11,1012,0,1,1066398020,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3815,212,1078,0,0,0,1078,1,1068711069,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3816,212,1078,0,1,1078,1079,1,1068711069,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3817,212,1079,0,2,1078,1080,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3818,212,1080,0,3,1079,1081,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3819,212,1081,0,4,1080,1013,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3820,212,1013,0,5,1081,1082,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3821,212,1082,0,6,1013,1021,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3822,212,1021,0,7,1082,990,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3823,212,990,0,8,1021,1079,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3824,212,1079,0,9,990,1080,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3825,212,1080,0,10,1079,1081,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3826,212,1081,0,11,1080,1013,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3827,212,1013,0,12,1081,1082,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3828,212,1082,0,13,1013,1021,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3829,212,1021,0,14,1082,990,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3830,212,990,0,15,1021,0,1,1068711069,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3831,214,1083,0,0,0,1044,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3832,214,1044,0,1,1083,1084,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3833,214,1084,0,2,1044,1085,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3834,214,1085,0,3,1084,1086,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3835,214,1086,0,4,1085,1087,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3836,214,1087,0,5,1086,1083,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3837,214,1083,0,6,1087,1044,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3838,214,1044,0,7,1083,1084,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3839,214,1084,0,8,1044,1085,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3840,214,1085,0,9,1084,1086,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3841,214,1086,0,10,1085,1087,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3842,214,1087,0,11,1086,1088,23,1068711140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3843,214,1088,0,12,1087,993,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3844,214,993,0,13,1088,1089,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3845,214,1089,0,14,993,1090,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3846,214,1090,0,15,1089,1091,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3847,214,1091,0,16,1090,1092,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3848,214,1092,0,17,1091,1093,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3849,214,1093,0,18,1092,1094,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3850,214,1094,0,19,1093,1088,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3851,214,1088,0,20,1094,1095,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3852,214,1095,0,21,1088,1079,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3853,214,1079,0,22,1095,1096,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3854,214,1096,0,23,1079,1097,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3855,214,1097,0,24,1096,1098,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3856,214,1098,0,25,1097,1099,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3857,214,1099,0,26,1098,1088,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3858,214,1088,0,27,1099,1100,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3859,214,1100,0,28,1088,990,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3860,214,990,0,29,1100,1101,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3861,214,1101,0,30,990,1044,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3862,214,1044,0,31,1101,1102,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3863,214,1102,0,32,1044,1088,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3864,214,1088,0,33,1102,1093,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3865,214,1093,0,34,1088,1079,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3866,214,1079,0,35,1093,1103,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3867,214,1103,0,36,1079,1016,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3868,214,1016,0,37,1103,1104,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3869,214,1104,0,38,1016,1012,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3870,214,1012,0,39,1104,1042,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3871,214,1042,0,40,1012,1084,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3872,214,1084,0,41,1042,1013,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3873,214,1013,0,42,1084,1090,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3874,214,1090,0,43,1013,1105,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3875,214,1105,0,44,1090,1106,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3876,214,1106,0,45,1105,1088,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3877,214,1088,0,46,1106,993,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3878,214,993,0,47,1088,1089,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3879,214,1089,0,48,993,1090,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3880,214,1090,0,49,1089,1091,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3881,214,1091,0,50,1090,1092,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3882,214,1092,0,51,1091,1093,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3883,214,1093,0,52,1092,1094,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3884,214,1094,0,53,1093,1088,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3885,214,1088,0,54,1094,1095,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3886,214,1095,0,55,1088,1079,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3887,214,1079,0,56,1095,1096,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3888,214,1096,0,57,1079,1097,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3889,214,1097,0,58,1096,1098,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3890,214,1098,0,59,1097,1099,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3891,214,1099,0,60,1098,1088,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3892,214,1088,0,61,1099,1100,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3893,214,1100,0,62,1088,990,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3894,214,990,0,63,1100,1101,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3895,214,1101,0,64,990,1044,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3896,214,1044,0,65,1101,1102,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3897,214,1102,0,66,1044,1088,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3898,214,1088,0,67,1102,1093,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3899,214,1093,0,68,1088,1079,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3900,214,1079,0,69,1093,1103,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3901,214,1103,0,70,1079,1016,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3902,214,1016,0,71,1103,1104,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3903,214,1104,0,72,1016,1012,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3904,214,1012,0,73,1104,1042,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3905,214,1042,0,74,1012,1084,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3906,214,1084,0,75,1042,1013,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3907,214,1013,0,76,1084,1090,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3908,214,1090,0,77,1013,1105,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3909,214,1105,0,78,1090,1106,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3910,214,1106,0,79,1105,1107,23,1068711140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3911,214,1107,0,80,1106,1107,23,1068711140,13,213,'',1);
INSERT INTO ezsearch_object_word_link VALUES (3912,214,1107,0,81,1107,0,23,1068711140,13,213,'',1);
INSERT INTO ezsearch_object_word_link VALUES (3913,252,1044,0,0,0,1108,23,1069770140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3914,252,1108,0,1,1044,1109,23,1069770140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3915,252,1109,0,2,1108,1044,23,1069770140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3916,252,1044,0,3,1109,1108,23,1069770140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3917,252,1108,0,4,1044,1109,23,1069770140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3918,252,1109,0,5,1108,1110,23,1069770140,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3919,252,1110,0,6,1109,1044,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3920,252,1044,0,7,1110,1111,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3921,252,1111,0,8,1044,1055,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3922,252,1055,0,9,1111,1112,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3923,252,1112,0,10,1055,1021,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3924,252,1021,0,11,1112,1013,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3925,252,1013,0,12,1021,1113,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3926,252,1113,0,13,1013,1062,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3927,252,1062,0,14,1113,1085,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3928,252,1085,0,15,1062,1114,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3929,252,1114,0,16,1085,1044,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3930,252,1044,0,17,1114,1115,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3931,252,1115,0,18,1044,1116,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3932,252,1116,0,19,1115,1041,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3933,252,1041,0,20,1116,1117,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3934,252,1117,0,21,1041,994,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3935,252,994,0,22,1117,1118,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3936,252,1118,0,23,994,1012,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3937,252,1012,0,24,1118,1119,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3938,252,1119,0,25,1012,1079,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3939,252,1079,0,26,1119,1120,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3940,252,1120,0,27,1079,1121,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3941,252,1121,0,28,1120,1046,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3942,252,1046,0,29,1121,1047,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3943,252,1047,0,30,1046,1122,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3944,252,1122,0,31,1047,1123,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3945,252,1123,0,32,1122,1085,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3946,252,1085,0,33,1123,1124,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3947,252,1124,0,34,1085,1125,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3948,252,1125,0,35,1124,1126,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3949,252,1126,0,36,1125,998,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3950,252,998,0,37,1126,1127,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3951,252,1127,0,38,998,1128,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3952,252,1128,0,39,1127,989,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3953,252,989,0,40,1128,992,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3954,252,992,0,41,989,1110,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3955,252,1110,0,42,992,1044,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3956,252,1044,0,43,1110,1111,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3957,252,1111,0,44,1044,1055,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3958,252,1055,0,45,1111,1112,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3959,252,1112,0,46,1055,1021,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3960,252,1021,0,47,1112,1013,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3961,252,1013,0,48,1021,1113,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3962,252,1113,0,49,1013,1062,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3963,252,1062,0,50,1113,1085,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3964,252,1085,0,51,1062,1114,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3965,252,1114,0,52,1085,1044,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3966,252,1044,0,53,1114,1115,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3967,252,1115,0,54,1044,1116,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3968,252,1116,0,55,1115,1041,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3969,252,1041,0,56,1116,1117,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3970,252,1117,0,57,1041,994,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3971,252,994,0,58,1117,1118,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3972,252,1118,0,59,994,1012,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3973,252,1012,0,60,1118,1119,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3974,252,1119,0,61,1012,1079,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3975,252,1079,0,62,1119,1120,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3976,252,1120,0,63,1079,1121,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3977,252,1121,0,64,1120,1046,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3978,252,1046,0,65,1121,1047,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3979,252,1047,0,66,1046,1122,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3980,252,1122,0,67,1047,1123,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3981,252,1123,0,68,1122,1085,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3982,252,1085,0,69,1123,1124,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3983,252,1124,0,70,1085,1125,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3984,252,1125,0,71,1124,1126,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3985,252,1126,0,72,1125,998,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3986,252,998,0,73,1126,1127,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3987,252,1127,0,74,998,1128,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3988,252,1128,0,75,1127,989,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3989,252,989,0,76,1128,992,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3990,252,992,0,77,989,1129,23,1069770140,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3991,252,1129,0,78,992,1129,23,1069770140,13,213,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3992,252,1129,0,79,1129,0,23,1069770140,13,213,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3993,263,1130,0,0,0,1130,23,1069771496,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3994,263,1130,0,1,1130,1044,23,1069771496,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3995,263,1044,0,2,1130,1126,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3996,263,1126,0,3,1044,1131,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3997,263,1131,0,4,1126,994,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3998,263,994,0,5,1131,1079,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (3999,263,1079,0,6,994,1130,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4000,263,1130,0,7,1079,1026,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4001,263,1026,0,8,1130,1079,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4002,263,1079,0,9,1026,1132,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4003,263,1132,0,10,1079,1133,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4004,263,1133,0,11,1132,992,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4005,263,992,0,12,1133,1134,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4006,263,1134,0,13,992,1012,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4007,263,1012,0,14,1134,1044,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4008,263,1044,0,15,1012,1126,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4009,263,1126,0,16,1044,1135,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4010,263,1135,0,17,1126,1099,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4011,263,1099,0,18,1135,1013,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4012,263,1013,0,19,1099,1003,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4013,263,1003,0,20,1013,1021,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4014,263,1021,0,21,1003,1085,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4015,263,1085,0,22,1021,1136,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4016,263,1136,0,23,1085,1047,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4017,263,1047,0,24,1136,1137,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4018,263,1137,0,25,1047,1123,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4019,263,1123,0,26,1137,1138,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4020,263,1138,0,27,1123,1044,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4021,263,1044,0,28,1138,1126,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4022,263,1126,0,29,1044,1131,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4023,263,1131,0,30,1126,994,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4024,263,994,0,31,1131,1079,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4025,263,1079,0,32,994,1130,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4026,263,1130,0,33,1079,1026,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4027,263,1026,0,34,1130,1079,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4028,263,1079,0,35,1026,1132,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4029,263,1132,0,36,1079,1133,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4030,263,1133,0,37,1132,992,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4031,263,992,0,38,1133,1134,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4032,263,1134,0,39,992,1012,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4033,263,1012,0,40,1134,1044,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4034,263,1044,0,41,1012,1126,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4035,263,1126,0,42,1044,1135,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4036,263,1135,0,43,1126,1099,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4037,263,1099,0,44,1135,1013,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4038,263,1013,0,45,1099,1003,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4039,263,1003,0,46,1013,1021,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4040,263,1021,0,47,1003,1085,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4041,263,1085,0,48,1021,1136,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4042,263,1136,0,49,1085,1047,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4043,263,1047,0,50,1136,1137,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4044,263,1137,0,51,1047,1123,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4045,263,1123,0,52,1137,1138,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4046,263,1138,0,53,1123,1107,23,1069771496,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4047,263,1107,0,54,1138,1107,23,1069771496,13,213,'',1);
INSERT INTO ezsearch_object_word_link VALUES (4048,263,1107,0,55,1107,0,23,1069771496,13,213,'',1);
INSERT INTO ezsearch_object_word_link VALUES (4049,267,1139,0,0,0,1139,26,1069773826,13,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4050,267,1139,0,1,1139,1037,26,1069773826,13,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4051,267,1037,0,2,1139,1044,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4052,267,1044,0,3,1037,1140,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4053,267,1140,0,4,1044,1046,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4054,267,1046,0,5,1140,1141,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4055,267,1141,0,6,1046,1013,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4056,267,1013,0,7,1141,1142,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4057,267,1142,0,8,1013,1037,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4058,267,1037,0,9,1142,1044,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4059,267,1044,0,10,1037,1140,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4060,267,1140,0,11,1044,1046,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4061,267,1046,0,12,1140,1141,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4062,267,1141,0,13,1046,1013,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4063,267,1013,0,14,1141,1142,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4064,267,1142,0,15,1013,0,26,1069773826,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4065,213,1143,0,0,0,1143,1,1068711091,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4066,213,1143,0,1,1143,1143,1,1068711091,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4067,213,1143,0,2,1143,1144,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4068,213,1144,0,3,1143,1145,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4069,213,1145,0,4,1144,1146,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4070,213,1146,0,5,1145,1012,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4071,213,1012,0,6,1146,1013,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4072,213,1013,0,7,1012,1147,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4073,213,1147,0,8,1013,1069,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4074,213,1069,0,9,1147,1148,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4075,213,1148,0,10,1069,1149,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4076,213,1149,0,11,1148,1150,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4077,213,1150,0,12,1149,1044,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4078,213,1044,0,13,1150,1151,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4079,213,1151,0,14,1044,1089,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4080,213,1089,0,15,1151,1152,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4081,213,1152,0,16,1089,1153,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4082,213,1153,0,17,1152,1069,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4083,213,1069,0,18,1153,1154,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4084,213,1154,0,19,1069,1044,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4085,213,1044,0,20,1154,1155,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4086,213,1155,0,21,1044,1156,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4087,213,1156,0,22,1155,1116,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4088,213,1116,0,23,1156,1157,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4089,213,1157,0,24,1116,1013,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4090,213,1013,0,25,1157,1158,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4091,213,1158,0,26,1013,1062,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4092,213,1062,0,27,1158,1097,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4093,213,1097,0,28,1062,1159,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4094,213,1159,0,29,1097,1070,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4095,213,1070,0,30,1159,1160,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4096,213,1160,0,31,1070,1143,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4097,213,1143,0,32,1160,1144,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4098,213,1144,0,33,1143,1145,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4099,213,1145,0,34,1144,1146,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4100,213,1146,0,35,1145,1012,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4101,213,1012,0,36,1146,1013,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4102,213,1013,0,37,1012,1147,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4103,213,1147,0,38,1013,1069,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4104,213,1069,0,39,1147,1148,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4105,213,1148,0,40,1069,1149,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4106,213,1149,0,41,1148,1150,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4107,213,1150,0,42,1149,1044,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4108,213,1044,0,43,1150,1151,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4109,213,1151,0,44,1044,1089,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4110,213,1089,0,45,1151,1152,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4111,213,1152,0,46,1089,1153,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4112,213,1153,0,47,1152,1069,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4113,213,1069,0,48,1153,1154,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4114,213,1154,0,49,1069,1044,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4115,213,1044,0,50,1154,1155,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4116,213,1155,0,51,1044,1156,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4117,213,1156,0,52,1155,1116,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4118,213,1116,0,53,1156,1157,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4119,213,1157,0,54,1116,1013,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4120,213,1013,0,55,1157,1158,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4121,213,1158,0,56,1013,1062,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4122,213,1062,0,57,1158,1097,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4123,213,1097,0,58,1062,1159,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4124,213,1159,0,59,1097,1070,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4125,213,1070,0,60,1159,1160,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4126,213,1160,0,61,1070,0,1,1068711091,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4127,254,1161,0,0,0,1044,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4128,254,1044,0,1,1161,1084,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4129,254,1084,0,2,1044,1088,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4130,254,1088,0,3,1084,1161,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4131,254,1161,0,4,1088,1044,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4132,254,1044,0,5,1161,1084,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4133,254,1084,0,6,1044,1088,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4134,254,1088,0,7,1084,1162,23,1069770356,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4135,254,1162,0,8,1088,1163,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4136,254,1163,0,9,1162,1079,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4137,254,1079,0,10,1163,1164,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4138,254,1164,0,11,1079,1165,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4139,254,1165,0,12,1164,1121,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4140,254,1121,0,13,1165,1166,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4141,254,1166,0,14,1121,1085,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4142,254,1085,0,15,1166,1167,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4143,254,1167,0,16,1085,1044,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4144,254,1044,0,17,1167,1161,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4145,254,1161,0,18,1044,1084,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4146,254,1084,0,19,1161,1013,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4147,254,1013,0,20,1084,1168,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4148,254,1168,0,21,1013,1169,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4149,254,1169,0,22,1168,1021,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4150,254,1021,0,23,1169,1085,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4151,254,1085,0,24,1021,1147,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4152,254,1147,0,25,1085,1170,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4153,254,1170,0,26,1147,1171,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4154,254,1171,0,27,1170,1013,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4155,254,1013,0,28,1171,1160,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4156,254,1160,0,29,1013,994,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4157,254,994,0,30,1160,1172,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4158,254,1172,0,31,994,1062,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4159,254,1062,0,32,1172,998,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4160,254,998,0,33,1062,1099,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4161,254,1099,0,34,998,1164,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4162,254,1164,0,35,1099,1173,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4163,254,1173,0,36,1164,1162,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4164,254,1162,0,37,1173,1163,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4165,254,1163,0,38,1162,1079,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4166,254,1079,0,39,1163,1164,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4167,254,1164,0,40,1079,1165,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4168,254,1165,0,41,1164,1121,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4169,254,1121,0,42,1165,1166,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4170,254,1166,0,43,1121,1085,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4171,254,1085,0,44,1166,1167,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4172,254,1167,0,45,1085,1044,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4173,254,1044,0,46,1167,1161,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4174,254,1161,0,47,1044,1084,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4175,254,1084,0,48,1161,1013,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4176,254,1013,0,49,1084,1168,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4177,254,1168,0,50,1013,1169,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4178,254,1169,0,51,1168,1021,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4179,254,1021,0,52,1169,1085,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4180,254,1085,0,53,1021,1147,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4181,254,1147,0,54,1085,1170,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4182,254,1170,0,55,1147,1171,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4183,254,1171,0,56,1170,1013,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4184,254,1013,0,57,1171,1160,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4185,254,1160,0,58,1013,994,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4186,254,994,0,59,1160,1172,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4187,254,1172,0,60,994,1062,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4188,254,1062,0,61,1172,998,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4189,254,998,0,62,1062,1099,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4190,254,1099,0,63,998,1164,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4191,254,1164,0,64,1099,1173,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4192,254,1173,0,65,1164,1107,23,1069770356,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4193,254,1107,0,66,1173,1107,23,1069770356,13,213,'',1);
INSERT INTO ezsearch_object_word_link VALUES (4194,254,1107,0,67,1107,0,23,1069770356,13,213,'',1);
INSERT INTO ezsearch_object_word_link VALUES (4195,266,1174,0,0,0,1174,26,1069773783,13,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4196,266,1174,0,1,1174,1175,26,1069773783,13,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4197,266,1175,0,2,1174,1047,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4198,266,1047,0,3,1175,1056,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4199,266,1056,0,4,1047,1176,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4200,266,1176,0,5,1056,1088,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4201,266,1088,0,6,1176,1121,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4202,266,1121,0,7,1088,1013,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4203,266,1013,0,8,1121,1177,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4204,266,1177,0,9,1013,1021,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4205,266,1021,0,10,1177,1178,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4206,266,1178,0,11,1021,1175,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4207,266,1175,0,12,1178,1047,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4208,266,1047,0,13,1175,1056,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4209,266,1056,0,14,1047,1176,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4210,266,1176,0,15,1056,1088,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4211,266,1088,0,16,1176,1121,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4212,266,1121,0,17,1088,1013,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4213,266,1013,0,18,1121,1177,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4214,266,1177,0,19,1013,1021,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4215,266,1021,0,20,1177,1178,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4216,266,1178,0,21,1021,0,26,1069773783,13,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4217,243,1179,0,0,0,1179,1,1068727871,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4218,243,1179,0,1,1179,1180,1,1068727871,13,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4219,243,1180,0,2,1179,1181,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4220,243,1181,0,3,1180,1182,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4221,243,1182,0,4,1181,1183,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4222,243,1183,0,5,1182,1184,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4223,243,1184,0,6,1183,1185,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4224,243,1185,0,7,1184,1012,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4225,243,1012,0,8,1185,1186,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4226,243,1186,0,9,1012,1187,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4227,243,1187,0,10,1186,1188,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4228,243,1188,0,11,1187,1189,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4229,243,1189,0,12,1188,1012,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4230,243,1012,0,13,1189,1190,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4231,243,1190,0,14,1012,1043,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4232,243,1043,0,15,1190,1088,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4233,243,1088,0,16,1043,1141,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4234,243,1141,0,17,1088,1191,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4235,243,1191,0,18,1141,1053,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4236,243,1053,0,19,1191,1088,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4237,243,1088,0,20,1053,1192,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4238,243,1192,0,21,1088,1193,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4239,243,1193,0,22,1192,1194,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4240,243,1194,0,23,1193,1180,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4241,243,1180,0,24,1194,1181,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4242,243,1181,0,25,1180,1182,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4243,243,1182,0,26,1181,1183,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4244,243,1183,0,27,1182,1184,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4245,243,1184,0,28,1183,1185,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4246,243,1185,0,29,1184,1012,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4247,243,1012,0,30,1185,1186,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4248,243,1186,0,31,1012,1187,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4249,243,1187,0,32,1186,1188,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4250,243,1188,0,33,1187,1189,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4251,243,1189,0,34,1188,1012,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4252,243,1012,0,35,1189,1190,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4253,243,1190,0,36,1012,1043,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4254,243,1043,0,37,1190,1088,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4255,243,1088,0,38,1043,1141,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4256,243,1141,0,39,1088,1191,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4257,243,1191,0,40,1141,1053,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4258,243,1053,0,41,1191,1088,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4259,243,1088,0,42,1053,1192,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4260,243,1192,0,43,1088,1193,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4261,243,1193,0,44,1192,1194,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4262,243,1194,0,45,1193,0,1,1068727871,13,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4263,253,1195,0,0,0,1044,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4264,253,1044,0,1,1195,1126,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4265,253,1126,0,2,1044,1026,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4266,253,1026,0,3,1126,1013,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4267,253,1013,0,4,1026,1029,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4268,253,1029,0,5,1013,1195,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4269,253,1195,0,6,1029,1044,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4270,253,1044,0,7,1195,1126,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4271,253,1126,0,8,1044,1026,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4272,253,1026,0,9,1126,1013,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4273,253,1013,0,10,1026,1029,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4274,253,1029,0,11,1013,1085,23,1069770254,13,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4275,253,1085,0,12,1029,1196,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4276,253,1196,0,13,1085,1197,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4277,253,1197,0,14,1196,1121,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4278,253,1121,0,15,1197,1198,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4279,253,1198,0,16,1121,1199,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4280,253,1199,0,17,1198,1200,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4281,253,1200,0,18,1199,994,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4282,253,994,0,19,1200,1201,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4283,253,1201,0,20,994,1013,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4284,253,1013,0,21,1201,1202,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4285,253,1202,0,22,1013,1030,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4286,253,1030,0,23,1202,1088,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4287,253,1088,0,24,1030,1111,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4288,253,1111,0,25,1088,1055,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4289,253,1055,0,26,1111,1203,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4290,253,1203,0,27,1055,1079,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4291,253,1079,0,28,1203,1204,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4292,253,1204,0,29,1079,1205,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4293,253,1205,0,30,1204,1125,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4294,253,1125,0,31,1205,1206,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4295,253,1206,0,32,1125,990,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4296,253,990,0,33,1206,1207,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4297,253,1207,0,34,990,1194,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4298,253,1194,0,35,1207,1208,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4299,253,1208,0,36,1194,1085,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4300,253,1085,0,37,1208,1196,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4301,253,1196,0,38,1085,1197,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4302,253,1197,0,39,1196,1121,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4303,253,1121,0,40,1197,1198,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4304,253,1198,0,41,1121,1199,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4305,253,1199,0,42,1198,1200,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4306,253,1200,0,43,1199,994,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4307,253,994,0,44,1200,1201,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4308,253,1201,0,45,994,1013,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4309,253,1013,0,46,1201,1202,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4310,253,1202,0,47,1013,1030,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4311,253,1030,0,48,1202,1088,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4312,253,1088,0,49,1030,1111,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4313,253,1111,0,50,1088,1055,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4314,253,1055,0,51,1111,1203,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4315,253,1203,0,52,1055,1079,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4316,253,1079,0,53,1203,1204,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4317,253,1204,0,54,1079,1205,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4318,253,1205,0,55,1204,1125,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4319,253,1125,0,56,1205,1206,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4320,253,1206,0,57,1125,990,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4321,253,990,0,58,1206,1207,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4322,253,1207,0,59,990,1194,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4323,253,1194,0,60,1207,1208,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4324,253,1208,0,61,1194,1129,23,1069770254,13,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4325,253,1129,0,62,1208,1129,23,1069770254,13,213,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4326,253,1129,0,63,1129,0,23,1069770254,13,213,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4327,11,1209,0,0,0,1210,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4328,11,1210,0,1,1209,1209,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4329,11,1209,0,2,1210,1210,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4330,11,1210,0,3,1209,0,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4331,12,1211,0,0,0,1212,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4332,12,1212,0,1,1211,1211,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4333,12,1211,0,2,1212,1212,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4334,12,1212,0,3,1211,0,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4335,14,1211,0,0,0,1211,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4336,14,1211,0,1,1211,1213,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4337,14,1213,0,2,1211,1213,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4338,14,1213,0,3,1213,1214,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4339,14,1214,0,4,1213,1215,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4340,14,1215,0,5,1214,1214,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4341,14,1214,0,6,1215,1215,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4342,14,1215,0,7,1214,1216,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4343,14,1216,0,8,1215,1216,4,1033920830,2,197,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4344,14,1216,0,9,1216,1217,4,1033920830,2,197,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4345,14,1217,0,10,1216,1218,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4346,14,1218,0,11,1217,1217,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4347,14,1217,0,12,1218,1218,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4348,14,1218,0,13,1217,1219,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4349,14,1219,0,14,1218,1219,4,1033920830,2,199,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4350,14,1219,0,15,1219,0,4,1033920830,2,199,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4351,13,1220,0,0,0,1220,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4352,13,1220,0,1,1220,0,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4353,268,1221,0,0,0,1212,3,1072180551,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4354,268,1212,0,1,1221,1221,3,1072180551,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4355,268,1221,0,2,1212,1212,3,1072180551,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4356,268,1212,0,3,1221,1213,3,1072180551,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4357,268,1213,0,4,1212,1222,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4358,268,1222,0,5,1213,1016,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4359,268,1016,0,6,1222,1013,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4360,268,1013,0,7,1016,1221,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4361,268,1221,0,8,1013,1213,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4362,268,1213,0,9,1221,1213,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4363,268,1213,0,10,1213,1222,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4364,268,1222,0,11,1213,1016,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4365,268,1016,0,12,1222,1013,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4366,268,1013,0,13,1016,1221,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4367,268,1221,0,14,1013,1213,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4368,268,1213,0,15,1221,0,3,1072180551,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4369,10,1221,0,0,0,1221,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4370,10,1221,0,1,1221,1213,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4371,10,1213,0,2,1221,1213,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4372,10,1213,0,3,1213,1221,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4373,10,1221,0,4,1213,1215,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4374,10,1215,0,5,1221,1221,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4375,10,1221,0,6,1215,1215,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4376,10,1215,0,7,1221,0,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4377,44,1223,0,0,0,1005,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4378,44,1005,0,1,1223,1223,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4379,44,1223,0,2,1005,1005,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4380,44,1005,0,3,1223,0,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4381,43,1224,0,0,0,1224,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4382,43,1224,0,1,1224,1225,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4383,43,1225,0,2,1224,1226,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4384,43,1226,0,3,1225,1225,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4385,43,1225,0,4,1226,1226,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4386,43,1226,0,5,1225,0,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4387,45,1227,0,0,0,1012,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4388,45,1012,0,1,1227,1228,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4389,45,1228,0,2,1012,1227,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4390,45,1227,0,3,1228,1012,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4391,45,1012,0,4,1227,1228,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4392,45,1228,0,5,1012,1023,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4393,45,1023,0,6,1228,1229,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4394,45,1229,0,7,1023,1230,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4395,45,1230,0,8,1229,1023,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4396,45,1023,0,9,1230,1229,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4397,45,1229,0,10,1023,1230,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4398,45,1230,0,11,1229,0,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4399,115,1231,0,0,0,1231,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4400,115,1231,0,1,1231,1223,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4401,115,1223,0,2,1231,1231,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4402,115,1231,0,3,1223,1223,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4403,115,1223,0,4,1231,1231,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4404,115,1231,0,5,1223,0,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4405,116,1232,0,0,0,1233,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4406,116,1233,0,1,1232,1232,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4407,116,1232,0,2,1233,1233,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4408,116,1233,0,3,1232,1023,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4409,116,1023,0,4,1233,1234,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4410,116,1234,0,5,1023,1023,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4411,116,1023,0,6,1234,1234,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4412,116,1234,0,7,1023,0,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4413,46,1227,0,0,0,1012,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4414,46,1012,0,1,1227,1228,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4415,46,1228,0,2,1012,1227,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4416,46,1227,0,3,1228,1012,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4417,46,1012,0,4,1227,1228,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4418,46,1228,0,5,1012,0,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4419,56,1235,0,0,0,1235,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4420,56,1235,0,1,1235,0,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4421,269,1236,0,0,0,1237,1,1076514936,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4422,269,1237,0,1,1236,1236,1,1076514936,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4423,269,1236,0,2,1237,1237,1,1076514936,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4424,269,1237,0,3,1236,0,1,1076514936,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4425,271,1238,0,0,0,1236,14,1076516926,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4426,271,1236,0,1,1238,1237,14,1076516926,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4427,271,1237,0,2,1236,1238,14,1076516926,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4428,271,1238,0,3,1237,1236,14,1076516926,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4429,271,1236,0,4,1238,1237,14,1076516926,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4430,271,1237,0,5,1236,1023,14,1076516926,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4431,271,1023,0,6,1237,1229,14,1076516926,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4432,271,1229,0,7,1023,1239,14,1076516926,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4433,271,1239,0,8,1229,1023,14,1076516926,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4434,271,1023,0,9,1239,1229,14,1076516926,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4435,271,1229,0,10,1023,1239,14,1076516926,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4436,271,1239,0,11,1229,0,14,1076516926,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4437,270,1238,0,0,0,1236,27,1076515013,11,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4438,270,1236,0,1,1238,1237,27,1076515013,11,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4439,270,1237,0,2,1236,1238,27,1076515013,11,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4440,270,1238,0,3,1237,1236,27,1076515013,11,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4441,270,1236,0,4,1238,1237,27,1076515013,11,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (4442,270,1237,0,5,1236,0,27,1076515013,11,217,'',0);

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


INSERT INTO ezsearch_word VALUES (989,'about',2);
INSERT INTO ezsearch_word VALUES (990,'me',4);
INSERT INTO ezsearch_word VALUES (991,'anyway',1);
INSERT INTO ezsearch_word VALUES (992,'this',5);
INSERT INTO ezsearch_word VALUES (993,'is',5);
INSERT INTO ezsearch_word VALUES (994,'to',5);
INSERT INTO ezsearch_word VALUES (995,'short',1);
INSERT INTO ezsearch_word VALUES (996,'young',1);
INSERT INTO ezsearch_word VALUES (997,'smart',1);
INSERT INTO ezsearch_word VALUES (998,'not',3);
INSERT INTO ezsearch_word VALUES (999,'enough',1);
INSERT INTO ezsearch_word VALUES (1000,'pimples',1);
INSERT INTO ezsearch_word VALUES (1001,'boy',1);
INSERT INTO ezsearch_word VALUES (1002,'totally',1);
INSERT INTO ezsearch_word VALUES (1003,'girl',2);
INSERT INTO ezsearch_word VALUES (1004,'addicted',1);
INSERT INTO ezsearch_word VALUES (1005,'links',3);
INSERT INTO ezsearch_word VALUES (1006,'worthwhile',1);
INSERT INTO ezsearch_word VALUES (1007,'websites',1);
INSERT INTO ezsearch_word VALUES (1008,'weblogs',1);
INSERT INTO ezsearch_word VALUES (1009,'journals',1);
INSERT INTO ezsearch_word VALUES (1010,'news',2);
INSERT INTO ezsearch_word VALUES (1011,'pubs',1);
INSERT INTO ezsearch_word VALUES (1012,'and',9);
INSERT INTO ezsearch_word VALUES (1013,'the',17);
INSERT INTO ezsearch_word VALUES (1014,'like',2);
INSERT INTO ezsearch_word VALUES (1015,'downloads',1);
INSERT INTO ezsearch_word VALUES (1016,'for',5);
INSERT INTO ezsearch_word VALUES (1017,'site',2);
INSERT INTO ezsearch_word VALUES (1018,'ez',2);
INSERT INTO ezsearch_word VALUES (1019,'systems',1);
INSERT INTO ezsearch_word VALUES (1020,'creators',1);
INSERT INTO ezsearch_word VALUES (1021,'of',9);
INSERT INTO ezsearch_word VALUES (1022,'publish',2);
INSERT INTO ezsearch_word VALUES (1023,'content',4);
INSERT INTO ezsearch_word VALUES (1024,'management',1);
INSERT INTO ezsearch_word VALUES (1025,'system',1);
INSERT INTO ezsearch_word VALUES (1026,'at',3);
INSERT INTO ezsearch_word VALUES (1027,'freshmeat',1);
INSERT INTO ezsearch_word VALUES (1028,'visit',1);
INSERT INTO ezsearch_word VALUES (1029,'movies',4);
INSERT INTO ezsearch_word VALUES (1030,'matrix',4);
INSERT INTO ezsearch_word VALUES (1031,'best',4);
INSERT INTO ezsearch_word VALUES (1032,'ever',3);
INSERT INTO ezsearch_word VALUES (1033,'homepage',1);
INSERT INTO ezsearch_word VALUES (1034,'movie',1);
INSERT INTO ezsearch_word VALUES (1035,'lord',2);
INSERT INTO ezsearch_word VALUES (1036,'rings',2);
INSERT INTO ezsearch_word VALUES (1037,'can',2);
INSERT INTO ezsearch_word VALUES (1038,'t',1);
INSERT INTO ezsearch_word VALUES (1039,'wait',1);
INSERT INTO ezsearch_word VALUES (1040,'number',1);
INSERT INTO ezsearch_word VALUES (1041,'three',2);
INSERT INTO ezsearch_word VALUES (1042,'even',2);
INSERT INTO ezsearch_word VALUES (1043,'if',2);
INSERT INTO ezsearch_word VALUES (1044,'i',8);
INSERT INTO ezsearch_word VALUES (1045,'know',1);
INSERT INTO ezsearch_word VALUES (1046,'what',3);
INSERT INTO ezsearch_word VALUES (1047,'will',4);
INSERT INTO ezsearch_word VALUES (1048,'happen',1);
INSERT INTO ezsearch_word VALUES (1049,'sports',1);
INSERT INTO ezsearch_word VALUES (1050,'liverpool',1);
INSERT INTO ezsearch_word VALUES (1051,'fc',1);
INSERT INTO ezsearch_word VALUES (1052,'team',1);
INSERT INTO ezsearch_word VALUES (1053,'fun',2);
INSERT INTO ezsearch_word VALUES (1054,'pondus',1);
INSERT INTO ezsearch_word VALUES (1055,'have',3);
INSERT INTO ezsearch_word VALUES (1056,'you',3);
INSERT INTO ezsearch_word VALUES (1057,'discovered',1);
INSERT INTO ezsearch_word VALUES (1058,'football',1);
INSERT INTO ezsearch_word VALUES (1059,'fanatic',1);
INSERT INTO ezsearch_word VALUES (1060,'he',1);
INSERT INTO ezsearch_word VALUES (1061,'available',1);
INSERT INTO ezsearch_word VALUES (1062,'in',4);
INSERT INTO ezsearch_word VALUES (1063,'several',1);
INSERT INTO ezsearch_word VALUES (1064,'languages',1);
INSERT INTO ezsearch_word VALUES (1065,'but',1);
INSERT INTO ezsearch_word VALUES (1066,'norwegian',1);
INSERT INTO ezsearch_word VALUES (1067,'only',1);
INSERT INTO ezsearch_word VALUES (1068,'polls',1);
INSERT INTO ezsearch_word VALUES (1069,'which',3);
INSERT INTO ezsearch_word VALUES (1070,'one',2);
INSERT INTO ezsearch_word VALUES (1071,'do',1);
INSERT INTO ezsearch_word VALUES (1072,'or',1);
INSERT INTO ezsearch_word VALUES (1073,'blogs',1);
INSERT INTO ezsearch_word VALUES (1074,'parenthetical',1);
INSERT INTO ezsearch_word VALUES (1075,'thoughts',1);
INSERT INTO ezsearch_word VALUES (1076,'concepts',1);
INSERT INTO ezsearch_word VALUES (1077,'brainstorms',1);
INSERT INTO ezsearch_word VALUES (1078,'personal',1);
INSERT INTO ezsearch_word VALUES (1079,'a',6);
INSERT INTO ezsearch_word VALUES (1080,'glimpse',1);
INSERT INTO ezsearch_word VALUES (1081,'into',1);
INSERT INTO ezsearch_word VALUES (1082,'life',1);
INSERT INTO ezsearch_word VALUES (1083,'today',1);
INSERT INTO ezsearch_word VALUES (1084,'got',2);
INSERT INTO ezsearch_word VALUES (1085,'my',5);
INSERT INTO ezsearch_word VALUES (1086,'new',1);
INSERT INTO ezsearch_word VALUES (1087,'car',1);
INSERT INTO ezsearch_word VALUES (1088,'it',5);
INSERT INTO ezsearch_word VALUES (1089,'an',2);
INSERT INTO ezsearch_word VALUES (1090,'old',1);
INSERT INTO ezsearch_word VALUES (1091,'volkswagen',1);
INSERT INTO ezsearch_word VALUES (1092,'beetle',1);
INSERT INTO ezsearch_word VALUES (1093,'from',1);
INSERT INTO ezsearch_word VALUES (1094,'1982',1);
INSERT INTO ezsearch_word VALUES (1095,'has',1);
INSERT INTO ezsearch_word VALUES (1096,'lot',1);
INSERT INTO ezsearch_word VALUES (1097,'more',2);
INSERT INTO ezsearch_word VALUES (1098,'charm',1);
INSERT INTO ezsearch_word VALUES (1099,'that',3);
INSERT INTO ezsearch_word VALUES (1100,'cost',1);
INSERT INTO ezsearch_word VALUES (1101,'money',1);
INSERT INTO ezsearch_word VALUES (1102,'bought',1);
INSERT INTO ezsearch_word VALUES (1103,'friend',1);
INSERT INTO ezsearch_word VALUES (1104,'�30',1);
INSERT INTO ezsearch_word VALUES (1105,'original',1);
INSERT INTO ezsearch_word VALUES (1106,'wheels',1);
INSERT INTO ezsearch_word VALUES (1107,'1',3);
INSERT INTO ezsearch_word VALUES (1108,'overslept',1);
INSERT INTO ezsearch_word VALUES (1109,'again',1);
INSERT INTO ezsearch_word VALUES (1110,'somehow',1);
INSERT INTO ezsearch_word VALUES (1111,'must',2);
INSERT INTO ezsearch_word VALUES (1112,'turned',1);
INSERT INTO ezsearch_word VALUES (1113,'alarm',1);
INSERT INTO ezsearch_word VALUES (1114,'sleep',1);
INSERT INTO ezsearch_word VALUES (1115,'woke',1);
INSERT INTO ezsearch_word VALUES (1116,'up',2);
INSERT INTO ezsearch_word VALUES (1117,'hours',1);
INSERT INTO ezsearch_word VALUES (1118,'late',1);
INSERT INTO ezsearch_word VALUES (1119,'missed',1);
INSERT INTO ezsearch_word VALUES (1120,'meeting',1);
INSERT INTO ezsearch_word VALUES (1121,'with',4);
INSERT INTO ezsearch_word VALUES (1122,'hopefully',1);
INSERT INTO ezsearch_word VALUES (1123,'be',2);
INSERT INTO ezsearch_word VALUES (1124,'girlfriend',1);
INSERT INTO ezsearch_word VALUES (1125,'she',2);
INSERT INTO ezsearch_word VALUES (1126,'was',3);
INSERT INTO ezsearch_word VALUES (1127,'very',1);
INSERT INTO ezsearch_word VALUES (1128,'happy',1);
INSERT INTO ezsearch_word VALUES (1129,'0',2);
INSERT INTO ezsearch_word VALUES (1130,'party',1);
INSERT INTO ezsearch_word VALUES (1131,'invited',1);
INSERT INTO ezsearch_word VALUES (1132,'friends',1);
INSERT INTO ezsearch_word VALUES (1133,'house',1);
INSERT INTO ezsearch_word VALUES (1134,'weekend',1);
INSERT INTO ezsearch_word VALUES (1135,'told',1);
INSERT INTO ezsearch_word VALUES (1136,'dreams',1);
INSERT INTO ezsearch_word VALUES (1137,'also',1);
INSERT INTO ezsearch_word VALUES (1138,'there',1);
INSERT INTO ezsearch_word VALUES (1139,'helene',1);
INSERT INTO ezsearch_word VALUES (1140,'come',1);
INSERT INTO ezsearch_word VALUES (1141,'s',2);
INSERT INTO ezsearch_word VALUES (1142,'address',1);
INSERT INTO ezsearch_word VALUES (1143,'computers',1);
INSERT INTO ezsearch_word VALUES (1144,'handhelds',1);
INSERT INTO ezsearch_word VALUES (1145,'electronic',1);
INSERT INTO ezsearch_word VALUES (1146,'gadgets',1);
INSERT INTO ezsearch_word VALUES (1147,'software',2);
INSERT INTO ezsearch_word VALUES (1148,'connects',1);
INSERT INTO ezsearch_word VALUES (1149,'them',1);
INSERT INTO ezsearch_word VALUES (1150,'all',1);
INSERT INTO ezsearch_word VALUES (1151,'m',1);
INSERT INTO ezsearch_word VALUES (1152,'early',1);
INSERT INTO ezsearch_word VALUES (1153,'adopter',1);
INSERT INTO ezsearch_word VALUES (1154,'means',1);
INSERT INTO ezsearch_word VALUES (1155,'often',1);
INSERT INTO ezsearch_word VALUES (1156,'end',1);
INSERT INTO ezsearch_word VALUES (1157,'paying',1);
INSERT INTO ezsearch_word VALUES (1158,'price',1);
INSERT INTO ezsearch_word VALUES (1159,'than',1);
INSERT INTO ezsearch_word VALUES (1160,'way',2);
INSERT INTO ezsearch_word VALUES (1161,'finally',1);
INSERT INTO ezsearch_word VALUES (1162,'after',1);
INSERT INTO ezsearch_word VALUES (1163,'such',1);
INSERT INTO ezsearch_word VALUES (1164,'long',1);
INSERT INTO ezsearch_word VALUES (1165,'time',1);
INSERT INTO ezsearch_word VALUES (1166,'pulling',1);
INSERT INTO ezsearch_word VALUES (1167,'hair',1);
INSERT INTO ezsearch_word VALUES (1168,'latest',1);
INSERT INTO ezsearch_word VALUES (1169,'edition',1);
INSERT INTO ezsearch_word VALUES (1170,'working',1);
INSERT INTO ezsearch_word VALUES (1171,'perhaps',1);
INSERT INTO ezsearch_word VALUES (1172,'fortune',1);
INSERT INTO ezsearch_word VALUES (1173,'anymore',1);
INSERT INTO ezsearch_word VALUES (1174,'tim',1);
INSERT INTO ezsearch_word VALUES (1175,'when',1);
INSERT INTO ezsearch_word VALUES (1176,'share',1);
INSERT INTO ezsearch_word VALUES (1177,'rest',1);
INSERT INTO ezsearch_word VALUES (1178,'us',1);
INSERT INTO ezsearch_word VALUES (1179,'entertainment',1);
INSERT INTO ezsearch_word VALUES (1180,'music',1);
INSERT INTO ezsearch_word VALUES (1181,'books',1);
INSERT INTO ezsearch_word VALUES (1182,'film',1);
INSERT INTO ezsearch_word VALUES (1183,'television',1);
INSERT INTO ezsearch_word VALUES (1184,'shopping',1);
INSERT INTO ezsearch_word VALUES (1185,'travel',1);
INSERT INTO ezsearch_word VALUES (1186,'many',1);
INSERT INTO ezsearch_word VALUES (1187,'other',1);
INSERT INTO ezsearch_word VALUES (1188,'fine',1);
INSERT INTO ezsearch_word VALUES (1189,'escapes',1);
INSERT INTO ezsearch_word VALUES (1190,'vices',1);
INSERT INTO ezsearch_word VALUES (1191,'downright',1);
INSERT INTO ezsearch_word VALUES (1192,'probably',1);
INSERT INTO ezsearch_word VALUES (1193,'belongs',1);
INSERT INTO ezsearch_word VALUES (1194,'here',2);
INSERT INTO ezsearch_word VALUES (1195,'tonight',1);
INSERT INTO ezsearch_word VALUES (1196,'first',1);
INSERT INTO ezsearch_word VALUES (1197,'date',1);
INSERT INTO ezsearch_word VALUES (1198,'mia',1);
INSERT INTO ezsearch_word VALUES (1199,'we',1);
INSERT INTO ezsearch_word VALUES (1200,'went',1);
INSERT INTO ezsearch_word VALUES (1201,'see',1);
INSERT INTO ezsearch_word VALUES (1202,'romantic',1);
INSERT INTO ezsearch_word VALUES (1203,'been',1);
INSERT INTO ezsearch_word VALUES (1204,'success',1);
INSERT INTO ezsearch_word VALUES (1205,'since',1);
INSERT INTO ezsearch_word VALUES (1206,'let',1);
INSERT INTO ezsearch_word VALUES (1207,'follow',1);
INSERT INTO ezsearch_word VALUES (1208,'home',1);
INSERT INTO ezsearch_word VALUES (1209,'guest',1);
INSERT INTO ezsearch_word VALUES (1210,'accounts',1);
INSERT INTO ezsearch_word VALUES (1211,'administrator',2);
INSERT INTO ezsearch_word VALUES (1212,'users',2);
INSERT INTO ezsearch_word VALUES (1213,'user',3);
INSERT INTO ezsearch_word VALUES (1214,'admin',1);
INSERT INTO ezsearch_word VALUES (1215,'nospam@ez.no',2);
INSERT INTO ezsearch_word VALUES (1216,'uberguru',1);
INSERT INTO ezsearch_word VALUES (1217,'skien',1);
INSERT INTO ezsearch_word VALUES (1218,'norway',1);
INSERT INTO ezsearch_word VALUES (1219,'developer',1);
INSERT INTO ezsearch_word VALUES (1220,'editors',1);
INSERT INTO ezsearch_word VALUES (1221,'anonymous',2);
INSERT INTO ezsearch_word VALUES (1222,'group',1);
INSERT INTO ezsearch_word VALUES (1223,'setup',2);
INSERT INTO ezsearch_word VALUES (1224,'classes',1);
INSERT INTO ezsearch_word VALUES (1225,'class',1);
INSERT INTO ezsearch_word VALUES (1226,'grouplist',1);
INSERT INTO ezsearch_word VALUES (1227,'look',2);
INSERT INTO ezsearch_word VALUES (1228,'feel',2);
INSERT INTO ezsearch_word VALUES (1229,'edit',2);
INSERT INTO ezsearch_word VALUES (1230,'56',1);
INSERT INTO ezsearch_word VALUES (1231,'cache',1);
INSERT INTO ezsearch_word VALUES (1232,'url',1);
INSERT INTO ezsearch_word VALUES (1233,'translator',1);
INSERT INTO ezsearch_word VALUES (1234,'urltranslator',1);
INSERT INTO ezsearch_word VALUES (1235,'blog_package',1);
INSERT INTO ezsearch_word VALUES (1236,'ini',3);
INSERT INTO ezsearch_word VALUES (1237,'settings',3);
INSERT INTO ezsearch_word VALUES (1238,'common',2);
INSERT INTO ezsearch_word VALUES (1239,'270',1);

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


INSERT INTO ezsession VALUES ('58c1156f4d83dfd838ec374bdf1e359c',1076776131,'LastAccessesURI|s:21:\"/content/view/full/46\";eZUserInfoCache_Timestamp|i:1076514426;eZUserGroupsCache_Timestamp|i:1076514426;eZUserLoggedInID|s:2:\"14\";eZUserInfoCache|a:1:{i:14;a:5:{s:16:\"contentobject_id\";s:2:\"14\";s:5:\"login\";s:5:\"admin\";s:5:\"email\";s:12:\"nospam@ez.no\";s:13:\"password_hash\";s:32:\"c78e3b0f3d9244ed8c6d1c29464bdff9\";s:18:\"password_hash_type\";s:1:\"2\";}}eZUserGroupsCache|a:1:{i:14;a:1:{i:0;a:1:{s:2:\"id\";s:2:\"12\";}}}PermissionCachedForUserID|s:2:\"14\";PermissionCachedForUserIDTimestamp|i:1076514426;UserRoles|a:1:{i:0;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:13:\"Administrator\";}}UserPolicies|a:1:{i:2;a:1:{i:0;a:5:{s:2:\"id\";s:3:\"308\";s:7:\"role_id\";s:1:\"2\";s:11:\"module_name\";s:1:\"*\";s:13:\"function_name\";s:1:\"*\";s:10:\"limitation\";s:1:\"*\";}}}eZUserDiscountRulesTimestamp|i:1076514427;eZUserDiscountRules14|a:0:{}eZGlobalSection|a:1:{s:2:\"id\";s:2:\"11\";}eZPreferences|a:3:{s:13:\"bookmark_menu\";b:0;s:12:\"history_menu\";b:0;s:13:\"advanced_menu\";s:2:\"on\";}CanInstantiateClassesCachedForUser|s:2:\"14\";ClassesCachedTimestamp|i:1076514718;CanInstantiateClasses|i:1;ClassesCachedForUser|s:2:\"14\";CanInstantiateClassList|a:14:{i:0;a:2:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Folder\";}i:1;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:7:\"Article\";}i:2;a:2:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:10:\"User group\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:4:\"User\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:5:\"Image\";}i:5;a:2:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:9:\"Info page\";}i:6;a:2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:4:\"File\";}i:7;a:2:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:10:\"Setup link\";}i:8;a:2:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:13:\"Template look\";}i:9;a:2:{s:2:\"id\";s:2:\"23\";s:4:\"name\";s:3:\"Log\";}i:10;a:2:{s:2:\"id\";s:2:\"24\";s:4:\"name\";s:4:\"Link\";}i:11;a:2:{s:2:\"id\";s:2:\"25\";s:4:\"name\";s:4:\"Poll\";}i:12;a:2:{s:2:\"id\";s:2:\"26\";s:4:\"name\";s:7:\"Comment\";}i:13;a:2:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:19:\"Common ini settings\";}}FromGroupID|b:0;');
INSERT INTO ezsession VALUES ('ba5f08fa44ca7fc4bea8a0a6a2892d62',1076838683,'eZUserGroupsCache_Timestamp|i:1076578663;eZUserLoggedInID|s:2:\"14\";eZUserInfoCache_Timestamp|i:1076578663;eZUserInfoCache|a:1:{i:14;a:5:{s:16:\"contentobject_id\";s:2:\"14\";s:5:\"login\";s:5:\"admin\";s:5:\"email\";s:12:\"nospam@ez.no\";s:13:\"password_hash\";s:32:\"c78e3b0f3d9244ed8c6d1c29464bdff9\";s:18:\"password_hash_type\";s:1:\"2\";}}eZUserGroupsCache|a:1:{i:14;a:1:{i:0;a:1:{s:2:\"id\";s:2:\"12\";}}}PermissionCachedForUserID|s:2:\"14\";PermissionCachedForUserIDTimestamp|i:1076578663;UserRoles|a:1:{i:0;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:13:\"Administrator\";}}UserPolicies|a:1:{i:2;a:1:{i:0;a:5:{s:2:\"id\";s:3:\"308\";s:7:\"role_id\";s:1:\"2\";s:11:\"module_name\";s:1:\"*\";s:13:\"function_name\";s:1:\"*\";s:10:\"limitation\";s:1:\"*\";}}}CanInstantiateClassesCachedForUser|s:2:\"14\";ClassesCachedTimestamp|i:1076578665;CanInstantiateClasses|i:1;ClassesCachedForUser|s:2:\"14\";CanInstantiateClassList|a:14:{i:0;a:2:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Folder\";}i:1;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:7:\"Article\";}i:2;a:2:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:10:\"User group\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:4:\"User\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:5:\"Image\";}i:5;a:2:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:9:\"Info page\";}i:6;a:2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:4:\"File\";}i:7;a:2:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:10:\"Setup link\";}i:8;a:2:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:13:\"Template look\";}i:9;a:2:{s:2:\"id\";s:2:\"23\";s:4:\"name\";s:3:\"Log\";}i:10;a:2:{s:2:\"id\";s:2:\"24\";s:4:\"name\";s:4:\"Link\";}i:11;a:2:{s:2:\"id\";s:2:\"25\";s:4:\"name\";s:4:\"Poll\";}i:12;a:2:{s:2:\"id\";s:2:\"26\";s:4:\"name\";s:7:\"Comment\";}i:13;a:2:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:19:\"Common ini settings\";}}eZPreferences|a:3:{s:13:\"bookmark_menu\";b:0;s:12:\"history_menu\";b:0;s:13:\"advanced_menu\";s:2:\"on\";}eZGlobalSection|a:1:{s:2:\"id\";s:2:\"11\";}LastAccessesURI|s:22:\"/content/view/full/201\";eZUserDiscountRulesTimestamp|i:1076579456;eZUserDiscountRules14|a:0:{}');

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
INSERT INTO ezurl VALUES (2,'http://www.vg.no',1068718860,1068718860,1,0,'26f1033e463720ae68742157890bc752');
INSERT INTO ezurl VALUES (3,'http://www.sina.com.cn',1068718957,1068718957,1,0,'4f12a25ee6cc3d6123be77df850e343e');
INSERT INTO ezurl VALUES (4,'http://download.hzinfo.com',1068719250,1068719250,1,0,'4c9c884a40d63b7d9555ffb77fe75466');
INSERT INTO ezurl VALUES (5,'http://vg.no',1069407573,1069407573,1,0,'5d85f44aadfc8b160572da41691d0162');
INSERT INTO ezurl VALUES (6,'http://freshmeat.net/projects/ezpublish/?topic_id=92%2C243%2C234%2C87%2C96',1069770809,1069770809,1,0,'d85ef15ed11d5ac7c04896ad03afb12d');
INSERT INTO ezurl VALUES (7,'http://whatisthematrix.warnerbros.com/',1069770910,1069770910,1,0,'12a254b2a3a7390dbc7fbc4db47b62ac');
INSERT INTO ezurl VALUES (8,'http://www.lordoftherings.net/',1069770983,1069770983,1,0,'3132ce6558475654ae838771140f480c');
INSERT INTO ezurl VALUES (9,'http://liverpoolfc.tv/',1069771089,1069771089,1,0,'967039f689cc4043aadbd2525f6d4e17');
INSERT INTO ezurl VALUES (10,'http://www.start.no/pondus/',1069773629,1069773629,1,0,'1403d356d0dd0fd838927ddb32cc06e1');

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
INSERT INTO ezurl_object_link VALUES (1,991,1);
INSERT INTO ezurl_object_link VALUES (2,800,1);
INSERT INTO ezurl_object_link VALUES (3,807,1);
INSERT INTO ezurl_object_link VALUES (4,814,1);
INSERT INTO ezurl_object_link VALUES (5,945,57);
INSERT INTO ezurl_object_link VALUES (6,994,1);
INSERT INTO ezurl_object_link VALUES (7,1002,1);
INSERT INTO ezurl_object_link VALUES (8,1005,1);
INSERT INTO ezurl_object_link VALUES (9,1013,1);
INSERT INTO ezurl_object_link VALUES (10,1026,1);

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
INSERT INTO ezurlalias VALUES (14,'users/anonymous_user','a37b7463e2c21098fa1a729dad4b4437','content/view/full/11',1,208,0);
INSERT INTO ezurlalias VALUES (15,'users/guest_accounts','02d4e844e3a660857a3f81585995ffe1','content/view/full/12',1,0,0);
INSERT INTO ezurlalias VALUES (16,'users/administrator_users','1b1d79c16700fd6003ea7be233e754ba','content/view/full/13',1,0,0);
INSERT INTO ezurlalias VALUES (17,'users/editors','0bb9dd665c96bbc1cf36b79180786dea','content/view/full/14',1,0,0);
INSERT INTO ezurlalias VALUES (18,'users/administrator_users/administrator_user','f1305ac5f327a19b451d82719e0c3f5d','content/view/full/15',1,0,0);
INSERT INTO ezurlalias VALUES (19,'users/guest_accounts/test_test','27a1813763d43de613bf05c31df7a6ef','content/view/full/42',1,0,0);
INSERT INTO ezurlalias VALUES (20,'media','62933a2951ef01f4eafd9bdf4d3cd2f0','content/view/full/43',1,0,0);
INSERT INTO ezurlalias VALUES (21,'setup','a0f848942ce863cf53c0fa6cc684007d','content/view/full/44',1,0,0);
INSERT INTO ezurlalias VALUES (22,'setup/classes','9e8c46c1357285763cd49ea56c57312d','content/view/full/45',1,24,0);
INSERT INTO ezurlalias VALUES (23,'setup/setup_links','675a9c5ab6fb3f5fdfaa609b7ef9d997','content/view/full/46',1,0,0);
INSERT INTO ezurlalias VALUES (24,'setup/setup_links/classes','75b3e86b0bb8a74fcb38f10fd02945e8','content/view/full/45',1,0,0);
INSERT INTO ezurlalias VALUES (25,'setup/setup_links/setup_objects','a695bd42e59634b44441ca4e4548e94a','content/view/full/47',1,80,0);
INSERT INTO ezurlalias VALUES (26,'setup/fonts_and_colors','db4641c5ea979dba4cfd99ea3267a456','content/view/full/48',1,27,0);
INSERT INTO ezurlalias VALUES (27,'setup/look_and_feel','11f42026b65f2d1801679ba58e443944','content/view/full/48',1,0,0);
INSERT INTO ezurlalias VALUES (83,'contact/persons/yu_wenyue','fc401743c753cd52d41b8bbeffbda14a','content/view/full/85',1,0,0);
INSERT INTO ezurlalias VALUES (29,'news','508c75c8507a2ae5223dfd2faeb98122','content/view/full/50',1,154,0);
INSERT INTO ezurlalias VALUES (125,'discussions/forum_main_group/music_discussion/latest_msg_not_sticky','70cf693961dcdd67766bf941c3ed2202','content/view/full/130',1,0,0);
INSERT INTO ezurlalias VALUES (126,'discussions/forum_main_group/music_discussion/not_sticky_2','969f470c93e2131a0884648b91691d0b','content/view/full/131',1,0,0);
INSERT INTO ezurlalias VALUES (34,'setup/look_and_feel/intranet','6d6a9d6e8f6cadb080fffb1276dd1e5e','content/view/full/54',1,189,0);
INSERT INTO ezurlalias VALUES (124,'discussions/forum_main_group/music_discussion/new_topic_sticky/reply','f3dd8b6512a0b04b426ef7d7307b7229','content/view/full/129',1,0,0);
INSERT INTO ezurlalias VALUES (157,'blogs/computers','2f8fda683b5e2473a80187cbce012bb8','content/view/full/154',1,0,0);
INSERT INTO ezurlalias VALUES (122,'about_this_forum','55803ba2746d617ca86e2a61b1d32d8b','content/view/full/127',1,153,0);
INSERT INTO ezurlalias VALUES (123,'discussions/forum_main_group/music_discussion/new_topic_sticky','bf37b4a370ddb3935d0625a5b348dd20','content/view/full/128',1,0,0);
INSERT INTO ezurlalias VALUES (99,'setup/look_and_feel/corporate','ab9f681938bd76b97b3ab1256b61119e','content/view/full/54',1,189,0);
INSERT INTO ezurlalias VALUES (90,'contact/companies/foo_bar_corp/fido_barida','ce1be6fe76c4671d8616c8bf1b5365de','content/view/full/102',1,0,0);
INSERT INTO ezurlalias VALUES (93,'setup/look_and_feel/intranetyy','53849c55dbaf18cf2c0b278123c9a7b2','content/view/full/54',1,189,0);
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
INSERT INTO ezurlalias VALUES (155,'news/*','5319b79408bf223063ba67c14ad03ee0','blogs/{1}',1,0,1);
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
INSERT INTO ezurlalias VALUES (154,'blogs','51704a6cacf71c8d5211445d9e80515f','content/view/full/50',1,0,0);
INSERT INTO ezurlalias VALUES (113,'forum/*','94b1ef84913dabe113cb907c181ee300','discussions/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (115,'setup/look_and_feel/forum','00d91935e17d76f152f7aaf0c0defac2','content/view/full/54',1,189,0);
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
INSERT INTO ezurlalias VALUES (156,'blogs/personal','10a5d8f539ef0a468722f8327f7950ab','content/view/full/153',1,0,0);
INSERT INTO ezurlalias VALUES (146,'discussions/forum_main_group/music_discussion/hjg_dghsdjgf/dfghd_fghklj','460d30ba47855079ac8605e1c8085993','content/view/full/151',1,0,0);
INSERT INTO ezurlalias VALUES (158,'blogs/personal/today_i_got_my_new_car','ce9118c9b6c16328082445f6d8098a0d','content/view/full/155',1,0,0);
INSERT INTO ezurlalias VALUES (149,'discussions/forum_main_group/music_discussion','a1a79985f113d5b05b22c9686b46b175','content/view/full/114',1,0,0);
INSERT INTO ezurlalias VALUES (150,'discussions/music_discussion/*','2ec2a3bfcf01ad3f1323390ab26dfeac','discussions/forum_main_group/music_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (151,'discussions/forum_main_group/sports_discussion','b68c5a82b8b2035eeee5788cb223bb7e','content/view/full/115',1,0,0);
INSERT INTO ezurlalias VALUES (152,'discussions/sports_discussion/*','7acbf48218ca6e1d80c267911860d34f','discussions/forum_main_group/sports_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (153,'about_me','50793f253d2dc015e93a2f75163b0894','content/view/full/127',1,0,0);
INSERT INTO ezurlalias VALUES (190,'blogs/personal/i_overslept_again','61ab4dd49514d2031be3362827465fe4','content/view/full/183',1,0,0);
INSERT INTO ezurlalias VALUES (203,'links/fun','05aaf2bb0d72213e94a358284f184b79','content/view/full/195',1,0,0);
INSERT INTO ezurlalias VALUES (164,'links','807765384d9d5527da8848df14a4f02f','content/view/full/161',1,0,0);
INSERT INTO ezurlalias VALUES (196,'links/movies','bea720c2faeb616182aa095cb8a0e492','content/view/full/188',1,0,0);
INSERT INTO ezurlalias VALUES (197,'links/movies/the_matrix','14290cfd46a612082d7c56dffa1b1fff','content/view/full/189',1,0,0);
INSERT INTO ezurlalias VALUES (167,'links/news','61e2cd3056056408f1b41435a3f953c3','content/view/full/164',1,193,0);
INSERT INTO ezurlalias VALUES (194,'links/downloads/ez_systems','8fb0de95d1934b0fa54410c6fa9bb04f','content/view/full/186',1,0,0);
INSERT INTO ezurlalias VALUES (193,'links/downloads','1d3503542a171d9dfab9c7d3caec48e0','content/view/full/164',1,0,0);
INSERT INTO ezurlalias VALUES (195,'links/downloads/ez_publish_at_freshmeat','c26b6a315b8894db61eb9faff400400f','content/view/full/187',1,0,0);
INSERT INTO ezurlalias VALUES (201,'polls/which_do_you_like_the_best_matrix_or_lord_of_the_rings','25f0f61fbc5d84e469f858722040aa4c','content/view/full/193',1,0,0);
INSERT INTO ezurlalias VALUES (198,'links/movies/lord_of_the_rings','10e58e9e8a34b59f0a3feeaa77ab2fea','content/view/full/190',1,0,0);
INSERT INTO ezurlalias VALUES (199,'links/sports','414e65e1c520e395d334856f3dc2ea3e','content/view/full/191',1,0,0);
INSERT INTO ezurlalias VALUES (200,'links/sports/liverpool_fc','c7c457cae15412fdcc8326da47c4bb15','content/view/full/192',1,0,0);
INSERT INTO ezurlalias VALUES (176,'polls','952e8cf2c863b8ddc656bac6ad0b729b','content/view/full/173',1,0,0);
INSERT INTO ezurlalias VALUES (202,'blogs/personal/party','69c642bf0ff392505a114bb6288b0a04','content/view/full/194',1,0,0);
INSERT INTO ezurlalias VALUES (178,'polls/which_one_is_the_best_of_matrix_movies','bb0ff8ca87eb02ff2219a32c5c73b7f4','content/view/full/174',1,0,0);
INSERT INTO ezurlalias VALUES (180,'blogs/entertainment','9dd2cf029c6cfcddc067d936dc750b3d','content/view/full/176',1,0,0);
INSERT INTO ezurlalias VALUES (191,'blogs/entertainment/tonight_i_was_at_the_movies','12f1086f208d19b6868a93df108d8af6','content/view/full/184',1,0,0);
INSERT INTO ezurlalias VALUES (192,'blogs/computers/finally_i_got_it','5626ad47e7065dee9ad763069e24d225','content/view/full/185',1,0,0);
INSERT INTO ezurlalias VALUES (204,'links/fun/pondus','54e0c99d111d8d109261fef3d61b23eb','content/view/full/196',1,0,0);
INSERT INTO ezurlalias VALUES (205,'blogs/computers/finally_i_got_it/tim','341022e34eb81e5cd2d6ca4a626834bf','content/view/full/197',1,0,0);
INSERT INTO ezurlalias VALUES (206,'blogs/personal/party/helene','4f7f9b1b19f98bf98f649253c6bb2127','content/view/full/198',1,0,0);
INSERT INTO ezurlalias VALUES (188,'setup/look_and_feel/blog_test','6d9593beb391a932e45ca5823e3c6359','content/view/full/54',1,189,0);
INSERT INTO ezurlalias VALUES (189,'setup/look_and_feel/blog','a0aa455a1c24b5d1d0448546c83836cf','content/view/full/54',1,0,0);
INSERT INTO ezurlalias VALUES (207,'users/anonymous_users','3ae1aac958e1c82013689d917d34967a','content/view/full/199',1,0,0);
INSERT INTO ezurlalias VALUES (208,'users/anonymous_users/anonymous_user','aad93975f09371695ba08292fd9698db','content/view/full/11',1,0,0);
INSERT INTO ezurlalias VALUES (209,'setup/ini_settings','baacc3a9676c182946def9cf88501568','content/view/full/200',1,0,0);
INSERT INTO ezurlalias VALUES (210,'setup/ini_settings/node_201','ca916fb3454f83c45d0215bdcca71901','content/view/full/201',1,212,0);
INSERT INTO ezurlalias VALUES (211,'setup/setup_links/common_ini_settings','e85ca643d417d1d3b7459bc4eef7a1f0','content/view/full/202',1,0,0);
INSERT INTO ezurlalias VALUES (212,'setup/ini_settings/common_ini_settings','4a3dd9601781555746973795695492f8','content/view/full/201',1,0,0);

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



