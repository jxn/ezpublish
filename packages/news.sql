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


INSERT INTO ezcontentbrowserecent VALUES (1,14,44,1076580679,'Setup');
INSERT INTO ezcontentbrowserecent VALUES (2,14,213,1076580898,'Ini settings');
INSERT INTO ezcontentbrowserecent VALUES (3,14,46,1076581004,'Setup links');

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


INSERT INTO ezcontentclass VALUES (1,0,'Folder','folder','<name>',14,14,1024392098,1069069785);
INSERT INTO ezcontentclass VALUES (2,0,'Article','article','<title>',14,14,1024392098,1069239395);
INSERT INTO ezcontentclass VALUES (3,0,'User group','user_group','<name>',14,14,1024392098,1048494743);
INSERT INTO ezcontentclass VALUES (4,0,'User','user','<first_name> <last_name>',14,14,1024392098,1070977423);
INSERT INTO ezcontentclass VALUES (5,0,'Image','image','<name>',8,14,1031484992,1048494784);
INSERT INTO ezcontentclass VALUES (10,0,'Info page','info_page','<name>',14,14,1052385274,1052385353);
INSERT INTO ezcontentclass VALUES (12,0,'File','file','<name>',14,14,1052385472,1052385669);
INSERT INTO ezcontentclass VALUES (14,0,'Setup link','setup_link','<title>',14,14,1066383719,1066383885);
INSERT INTO ezcontentclass VALUES (15,0,'Template look','template_look','<title>',14,14,1066390045,1069416212);
INSERT INTO ezcontentclass VALUES (25,0,'Poll','poll','<name>',14,14,1068716373,1068717758);
INSERT INTO ezcontentclass VALUES (26,0,'Comment','comment','<subject>',14,14,1068716787,1069074842);
INSERT INTO ezcontentclass VALUES (27,0,'Common ini settings','common_ini_settings','<name>',14,14,1076580613,1076578126);

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
INSERT INTO ezcontentclass_attribute VALUES (220,0,15,'footer','Footer','ezstring',1,0,8,0,0,0,0,0,0,0,0,'Copyright &copy;','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (219,0,2,'show_on_frontpage','Show on frontpage','ezboolean',1,0,7,0,0,1,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (196,0,15,'siteurl','Site URL','ezinisetting',0,0,7,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteURL','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (207,0,25,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (208,0,25,'option','Option','ezoption',0,1,2,0,0,0,0,0,0,0,0,'','','','','',1,1);
INSERT INTO ezcontentclass_attribute VALUES (120,0,2,'intro','Intro','ezxmltext',1,1,3,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (121,0,2,'body','Body','ezxmltext',1,0,4,25,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (122,0,2,'thumbnail','Thumbnail','ezimage',0,0,5,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (123,0,2,'enable_comments','Enable comments','ezboolean',0,0,6,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (217,0,26,'subject','Subject','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (209,0,26,'name','Name','ezstring',1,1,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (210,0,26,'email','E-mail','ezstring',1,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (211,0,26,'url','URL','ezstring',1,0,4,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (212,0,26,'comment','Comment','eztext',1,0,5,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (159,0,15,'image','Image','ezimage',0,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (160,0,15,'sitestyle','Sitestyle','ezpackage',0,0,4,1,0,0,0,0,0,0,0,'sitestyle','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (161,0,15,'id','id','ezstring',1,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (180,0,15,'email','Email','ezinisetting',0,0,6,1,0,0,0,0,0,0,0,'site.ini','MailSettings','AdminEmail','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (4,0,1,'name','Name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'Folder','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (119,0,1,'description','Description','ezxmltext',1,0,2,5,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (218,0,2,'author','Author','ezstring',1,0,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (1,0,2,'title','Title','ezstring',1,1,1,255,0,0,0,0,0,0,0,'New article','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (158,0,15,'meta_data','Meta data','ezinisetting',0,0,2,6,0,0,0,0,0,0,0,'site.ini','SiteSettings','MetaDataArray','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (157,0,15,'title','Title','ezinisetting',0,0,1,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteName','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (8,0,4,'first_name','First name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (9,0,4,'last_name','Last name','ezstring',1,1,2,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (12,0,4,'user_account','User account','ezuser',1,1,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (233,0,27,'imagelarge','Image Large Size','ezinisetting',0,0,13,6,0,0,0,0,0,0,0,'image.ini','large','Filters','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (232,0,27,'imagemedium','Image Medium Size','ezinisetting',0,0,12,6,0,0,0,0,0,0,0,'image.ini','medium','Filters','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (231,0,27,'imagesmall','Image Small Size','ezinisetting',0,0,11,6,0,0,0,0,0,0,0,'image.ini','small','Filters','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (230,0,27,'templatecompile','Template Compile','ezinisetting',0,0,10,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCompile','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (229,0,27,'templatecache','Template Cache','ezinisetting',0,0,9,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCache','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (228,0,27,'viewcaching','View Caching','ezinisetting',0,0,8,2,0,0,0,0,0,0,0,'site.ini','ContentSettings','ViewCaching','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (227,0,27,'debugredirection','Debug Redirection','ezinisetting',0,0,7,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugRedirection','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (226,0,27,'debugiplist','Debug IP List','ezinisetting',0,0,6,6,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugIPList','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (225,0,27,'debugbyip','Debug By IP','ezinisetting',0,0,5,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugByIP','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (224,0,27,'debugoutput','Debug Output','ezinisetting',0,0,4,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugOutput','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (223,0,27,'defaultpage','Default Page','ezinisetting',0,0,3,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','DefaultPage','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (221,0,27,'name','Name','ezstring',1,0,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (222,0,27,'indexpage','Index Page','ezinisetting',0,0,2,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','IndexPage','6;7','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);

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
INSERT INTO ezcontentclass_classgroup VALUES (25,0,1,'Content');
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


INSERT INTO ezcontentobject VALUES (1,14,1,1,'News',7,0,1033917596,1069069747,1,'');
INSERT INTO ezcontentobject VALUES (4,14,2,3,'Users',1,0,1033917596,1033917596,1,NULL);
INSERT INTO ezcontentobject VALUES (10,14,2,4,'Anonymous User',3,0,1033920665,1072181094,1,'');
INSERT INTO ezcontentobject VALUES (11,14,2,3,'Guest accounts',1,0,1033920746,1033920746,1,NULL);
INSERT INTO ezcontentobject VALUES (12,14,2,3,'Administrator users',1,0,1033920775,1033920775,1,NULL);
INSERT INTO ezcontentobject VALUES (13,14,2,3,'Editors',2,0,1033920794,1070976858,1,'');
INSERT INTO ezcontentobject VALUES (14,14,2,4,'Administrator User',5,0,1033920830,1068468219,1,'');
INSERT INTO ezcontentobject VALUES (41,14,3,1,'Media',1,0,1060695457,1060695457,1,'');
INSERT INTO ezcontentobject VALUES (42,14,11,1,'Setup',1,0,1066383068,1066383068,1,'');
INSERT INTO ezcontentobject VALUES (43,14,11,14,'Classes',10,0,1066384365,1069159004,1,'');
INSERT INTO ezcontentobject VALUES (44,14,11,1,'Setup links',1,0,1066384457,1066384457,1,'');
INSERT INTO ezcontentobject VALUES (45,14,11,14,'Look and feel',11,0,1066388816,1069159022,1,'');
INSERT INTO ezcontentobject VALUES (46,14,11,1,'Look and feel',2,0,1066389805,1066389902,1,'');
INSERT INTO ezcontentobject VALUES (47,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (122,14,1,5,'New Image',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (252,14,1,26,'Kewl news',1,0,1069074891,1069074891,1,'');
INSERT INTO ezcontentobject VALUES (51,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (53,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (56,14,11,15,'News',65,0,1066643397,1069841357,1,'');
INSERT INTO ezcontentobject VALUES (161,14,1,10,'About this website',4,0,1068047603,1069683989,1,'');
INSERT INTO ezcontentobject VALUES (129,14,1,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (127,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (83,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (84,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (85,14,5,1,'New Folder',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (88,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (91,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (254,14,1,2,'Google indexes',3,0,1069077452,1069682589,1,'');
INSERT INTO ezcontentobject VALUES (96,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (126,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (103,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (104,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (105,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (106,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (220,14,13,26,'b�b�b',1,0,1068716967,1068716967,1,'');
INSERT INTO ezcontentobject VALUES (115,14,11,14,'Cache',5,0,1066991725,1069158933,1,'');
INSERT INTO ezcontentobject VALUES (116,14,11,14,'URL translator',4,0,1066992054,1069159040,1,'');
INSERT INTO ezcontentobject VALUES (117,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (218,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (219,14,13,26,'B�rd Farstad',1,0,1068716920,1068716920,1,'');
INSERT INTO ezcontentobject VALUES (143,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (144,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (145,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (216,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (217,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (221,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (222,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (224,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (225,14,1,25,'New Poll',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (278,14,1,2,'Entertainment weekly',1,0,1069680733,1069680733,1,'');
INSERT INTO ezcontentobject VALUES (248,14,1,1,'News',1,0,1069070990,1069070990,1,'');
INSERT INTO ezcontentobject VALUES (249,14,1,2,'Breaking news',5,0,1069071380,1069158606,1,'');
INSERT INTO ezcontentobject VALUES (250,14,1,2,'Leauge champion',3,0,1069072401,1069683166,1,'');
INSERT INTO ezcontentobject VALUES (233,14,13,26,'b�rd',1,0,1068718705,1068718705,1,'');
INSERT INTO ezcontentobject VALUES (235,14,13,26,'kjh',1,0,1068718760,1068718760,1,'');
INSERT INTO ezcontentobject VALUES (239,14,13,26,'B�rd',1,0,1068719374,1068719374,1,'');
INSERT INTO ezcontentobject VALUES (240,14,1,1,'Polls',2,0,1068719643,1068720665,1,'');
INSERT INTO ezcontentobject VALUES (241,14,1,25,'Which one is the best of matrix movies?',1,0,1068720802,1068720802,1,'');
INSERT INTO ezcontentobject VALUES (242,14,13,26,'ghghj',1,0,1068720915,1068720915,1,'');
INSERT INTO ezcontentobject VALUES (245,14,13,26,'kjlh',1,0,1068730476,1068730476,1,'');
INSERT INTO ezcontentobject VALUES (246,14,13,26,'kjhkjh',1,0,1068737197,1068737197,1,'');
INSERT INTO ezcontentobject VALUES (255,14,1,1,'Technology',1,0,1069145298,1069145298,1,'');
INSERT INTO ezcontentobject VALUES (256,14,1,1,'Politics',1,0,1069145327,1069145327,1,'');
INSERT INTO ezcontentobject VALUES (257,14,1,1,'Sports',1,0,1069145751,1069145751,1,'');
INSERT INTO ezcontentobject VALUES (258,14,1,1,'Business',1,0,1069146661,1069146661,1,'');
INSERT INTO ezcontentobject VALUES (259,14,1,1,'Entertainment',1,0,1069146733,1069146733,1,'');
INSERT INTO ezcontentobject VALUES (260,14,1,2,'Latest business update',4,0,1069147811,1069681784,1,'');
INSERT INTO ezcontentobject VALUES (261,14,1,2,'Arnold for governor',2,0,1069147950,1069682497,1,'');
INSERT INTO ezcontentobject VALUES (263,14,1,10,'Contact information',2,0,1069236942,1069684196,1,'');
INSERT INTO ezcontentobject VALUES (264,14,1,10,'Help',1,0,1069237025,1069237025,1,'');
INSERT INTO ezcontentobject VALUES (269,10,1,26,'Amazing',1,0,1069239748,1069239748,1,'');
INSERT INTO ezcontentobject VALUES (271,14,1,2,'Business as usual',2,0,1069243021,1069682292,1,'');
INSERT INTO ezcontentobject VALUES (272,10,1,26,'fgdfg',1,0,1069244422,1069244422,1,'');
INSERT INTO ezcontentobject VALUES (275,10,1,26,'sdsdd',1,0,1069245323,1069245323,1,'');
INSERT INTO ezcontentobject VALUES (279,14,1,2,'Will he become President?',1,0,1069680908,1069680908,1,'');
INSERT INTO ezcontentobject VALUES (281,14,1,2,'Final release of ABC',1,0,1069681297,1069681297,1,'');
INSERT INTO ezcontentobject VALUES (283,14,1,2,'Dons Jonas goes down',1,0,1069681443,1069681443,1,'');
INSERT INTO ezcontentobject VALUES (284,14,1,2,'Rider wins dart competition',2,0,1069683484,1069685384,1,'');
INSERT INTO ezcontentobject VALUES (290,14,1,2,'New top fair',2,0,1069685704,1069757298,1,'');
INSERT INTO ezcontentobject VALUES (289,14,1,25,'What season is the best?',1,0,1069684665,1069684665,1,'');
INSERT INTO ezcontentobject VALUES (291,14,2,3,'Content editors',2,0,1070976766,1070976835,1,'');
INSERT INTO ezcontentobject VALUES (292,14,2,4,'Editor User',1,0,1070977344,1070977344,1,'');
INSERT INTO ezcontentobject VALUES (293,14,2,4,'Content Editor',1,0,1070977383,1070977383,1,'');
INSERT INTO ezcontentobject VALUES (294,14,2,3,'Anonymous Users',1,0,1072181061,1072181061,1,'');
INSERT INTO ezcontentobject VALUES (295,14,11,1,'Ini settings',1,0,1076580679,1076580679,1,'');
INSERT INTO ezcontentobject VALUES (296,14,11,27,'Common ini settings',3,0,1076580897,1076578160,1,'');
INSERT INTO ezcontentobject VALUES (297,14,11,14,'Common ini settings',1,0,1076581004,1076581004,1,'');

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
INSERT INTO ezcontentobject_attribute VALUES (22,'eng-GB',1,11,6,'Guest accounts',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (23,'eng-GB',1,11,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (24,'eng-GB',1,12,6,'Administrator users',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (25,'eng-GB',1,12,7,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (98,'eng-GB',1,41,4,'Media',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (99,'eng-GB',1,41,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (100,'eng-GB',1,42,4,'Setup',0,0,0,0,'setup','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (101,'eng-GB',1,42,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (106,'eng-GB',1,44,4,'Setup links',0,0,0,0,'setup links','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (107,'eng-GB',1,44,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (109,'eng-GB',11,45,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"look_and_feel.png\"\n         suffix=\"png\"\n         basename=\"look_and_feel\"\n         dirpath=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel.png\"\n         original_filename=\"gnome-color-browser.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"109\"\n            attribute_version=\"10\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"look_and_feel_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"look_and_feel_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"icon\"\n         filename=\"look_and_feel_icon.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_icon.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1993047904\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"look_and_feel_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (108,'eng-GB',11,45,152,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (112,'eng-GB',2,46,4,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (113,'eng-GB',2,46,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (810,'eng-GB',1,235,211,'kljh',0,0,0,0,'kljh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (811,'eng-GB',1,235,212,'< >\n\n:)\n\nhttp://ez.no',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (809,'eng-GB',1,235,210,'kjlh',0,0,0,0,'kjlh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',4,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',5,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (957,'eng-GB',1,245,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (958,'eng-GB',1,246,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (959,'eng-GB',1,252,217,'Kewl news',0,0,0,0,'kewl news','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (949,'eng-GB',1,252,211,'http://ez.no',0,0,0,0,'http://ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (950,'eng-GB',1,252,212,'sdfg sdfgsdfg\nsdfg\nsdfg\nsdf\ngsdfg',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (951,'eng-GB',1,219,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (952,'eng-GB',1,220,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (953,'eng-GB',1,233,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (954,'eng-GB',1,235,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (929,'eng-GB',5,249,1,'Breaking news',0,0,0,0,'breaking news','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (996,'eng-GB',5,249,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',7,56,159,'',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',7,56,160,'left_menu',0,0,0,0,'left_menu','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',7,56,161,'intranet888',0,0,0,0,'intranet888','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1018,'eng-GB',5,249,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (808,'eng-GB',1,235,209,'kjh',0,0,0,0,'kjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (772,'eng-GB',1,219,209,'B�rd Farstad',0,0,0,0,'b�rd farstad','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (773,'eng-GB',1,219,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (774,'eng-GB',1,219,211,'http://ez.no',0,0,0,0,'http://ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (775,'eng-GB',1,219,212,'I\'ve seen more speacial things.. dsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gf\n\ndsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gfdsfgljk sdfg jsdklgj sdlfgj skldg sd gf',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (1090,'eng-GB',1,279,1,'Will he become President?',0,0,0,0,'will he become president?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1094,'eng-GB',1,279,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"will_he_become_president.\"\n         suffix=\"\"\n         basename=\"will_he_become_president\"\n         dirpath=\"var/news/storage/images/news/entertainment/will_he_become_president/1094-1-eng-GB\"\n         url=\"var/news/storage/images/news/entertainment/will_he_become_president/1094-1-eng-GB/will_he_become_president.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069680749\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1095,'eng-GB',1,279,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1096,'eng-GB',1,279,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1091,'eng-GB',1,279,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1092,'eng-GB',1,279,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The word is out there but it is not possible to say if it is a fact or not. Will he be the first to become president from his state?</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1063,'eng-GB',1,275,217,'sdsdd',0,0,0,0,'sdsdd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1064,'eng-GB',1,275,209,'ddd',0,0,0,0,'ddd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1065,'eng-GB',1,275,210,'sdfsdf@yahoo.com',0,0,0,0,'sdfsdf@yahoo.com','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1066,'eng-GB',1,275,211,'fsf',0,0,0,0,'fsf','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1067,'eng-GB',1,275,212,'sdfsdfsdf\nsd\nfsdf',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (824,'eng-GB',1,239,209,'B�rd',0,0,0,0,'b�rd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (933,'eng-GB',5,249,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (150,'eng-GB',65,56,157,'News',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (930,'eng-GB',5,249,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1048,'eng-GB',1,272,217,'fgdfg',0,0,0,0,'fgdfg','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1049,'eng-GB',1,272,209,'dgdf',0,0,0,0,'dgdf','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1050,'eng-GB',1,272,210,'dg',0,0,0,0,'dg','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1051,'eng-GB',1,272,211,'dfgd',0,0,0,0,'dfgd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1052,'eng-GB',1,272,212,'dfgfd',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (825,'eng-GB',1,239,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (802,'eng-GB',1,233,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (803,'eng-GB',1,233,211,'http://ez.no',0,0,0,0,'http://ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (804,'eng-GB',1,233,212,'dfgl sdflg sdiofg usdoigfu osdigu iosdgf sdgfsd\nfg\nsdfg\nsdfg\nsdg',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (1034,'eng-GB',1,269,211,'http://ez.no',0,0,0,0,'http://ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1035,'eng-GB',1,269,212,'jgslfjs\r\nsdfklsfl�sk\r\n',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (1033,'eng-GB',1,269,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1032,'eng-GB',1,269,209,'wenyue',0,0,0,0,'wenyue','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1031,'eng-GB',1,269,217,'Amazing',0,0,0,0,'amazing','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (28,'eng-GB',5,14,8,'Administrator',0,0,0,0,'administrator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (29,'eng-GB',5,14,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (30,'eng-GB',5,14,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (801,'eng-GB',1,233,209,'b�rd',0,0,0,0,'b�rd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1087,'eng-GB',1,278,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"entertainment_weekly.\"\n         suffix=\"\"\n         basename=\"entertainment_weekly\"\n         dirpath=\"var/news/storage/images/news/entertainment/entertainment_weekly/1087-1-eng-GB\"\n         url=\"var/news/storage/images/news/entertainment/entertainment_weekly/1087-1-eng-GB/entertainment_weekly.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069680587\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1088,'eng-GB',1,278,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1083,'eng-GB',1,278,1,'Entertainment weekly',0,0,0,0,'entertainment weekly','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1084,'eng-GB',1,278,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1085,'eng-GB',1,278,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Every week we will have an update of the news around in the entertainment world. For the latest gossip this is the place to be.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1086,'eng-GB',1,278,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The latest releases, the most beautiful faces, the best contracts, the best payed persons, the latest divorce etc. You will find it all here.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (834,'eng-GB',1,242,211,'fghvmbnmbvnm',0,0,0,0,'fghvmbnmbvnm','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (835,'eng-GB',1,242,212,'fgn fdgh fdgh fdgh\nkl��\n�l�\nl��\nl��\nl��\nhjlh\nhj',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (826,'eng-GB',1,239,211,'sdfgsd',0,0,0,0,'sdfgsd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (827,'eng-GB',1,239,212,'sdfgsdgsd\nsdg\nsdf',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (828,'eng-GB',2,240,4,'Polls',0,0,0,0,'polls','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (829,'eng-GB',2,240,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (830,'eng-GB',1,241,207,'Which one is the best of matrix movies?',0,0,0,0,'which one is the best of matrix movies?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (831,'eng-GB',1,241,208,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezoption>\n  <name></name>\n  <options>\n    <option id=\"0\"\n            additional_price=\"\">Matrix</option>\n    <option id=\"1\"\n            additional_price=\"\">Matrix reloaded</option>\n    <option id=\"2\"\n            additional_price=\"\">Matrix revoluaton</option>\n  </options>\n</ezoption>',0,0,0,0,'','ezoption');
INSERT INTO ezcontentobject_attribute VALUES (832,'eng-GB',1,242,209,'ghghj',0,0,0,0,'ghghj','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (833,'eng-GB',1,242,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (776,'eng-GB',1,220,209,'b�b�b',0,0,0,0,'b�b�b','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (777,'eng-GB',1,220,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (778,'eng-GB',1,220,211,'http://piranha.no',0,0,0,0,'http://piranha.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (779,'eng-GB',1,220,212,'sdfgsd fgsdgsd\ngf\nsdfg\nsdfgdsg\nsdgf\n',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (955,'eng-GB',1,239,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (956,'eng-GB',1,242,217,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (948,'eng-GB',1,252,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (947,'eng-GB',1,252,209,'B�rd',0,0,0,0,'b�rd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (841,'eng-GB',1,245,209,'kjlh',0,0,0,0,'kjlh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (842,'eng-GB',1,245,210,'kjh',0,0,0,0,'kjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (843,'eng-GB',1,245,211,'kjh',0,0,0,0,'kjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (844,'eng-GB',1,245,212,'kjlhkhkjhklhj',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (845,'eng-GB',1,246,209,'kjhkjh',0,0,0,0,'kjhkjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (846,'eng-GB',1,246,210,'nospam@ez.no',0,0,0,0,'nospam@ez.no','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (847,'eng-GB',1,246,211,'sdfgsdfg',0,0,0,0,'sdfgsdfg','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (848,'eng-GB',1,246,212,'sdfgsdfgsdfgds\nfgsd\nfg\nsdfg',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (2,'eng-GB',7,1,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1,'eng-GB',7,1,4,'News',0,0,0,0,'news','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (927,'eng-GB',1,248,4,'News',0,0,0,0,'news','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (928,'eng-GB',1,248,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (968,'eng-GB',1,255,4,'Technology',0,0,0,0,'technology','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (969,'eng-GB',1,255,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (970,'eng-GB',1,256,4,'Politics',0,0,0,0,'politics','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (971,'eng-GB',1,256,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (972,'eng-GB',1,257,4,'Sports',0,0,0,0,'sports','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (973,'eng-GB',1,257,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (974,'eng-GB',1,258,4,'Business',0,0,0,0,'business','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (975,'eng-GB',1,258,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (976,'eng-GB',1,259,4,'Entertainment',0,0,0,0,'entertainment','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (977,'eng-GB',1,259,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (931,'eng-GB',5,249,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf</paragraph>\n  <paragraph>latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf</paragraph>\n  <paragraph>\n    <line>latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf latest dfgds fgsdfg sdgf</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (932,'eng-GB',5,249,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"breaking_news.\"\n         suffix=\"\"\n         basename=\"breaking_news\"\n         dirpath=\"var/news/storage/images/news/politics/breaking_news/932-5-eng-GB\"\n         url=\"var/news/storage/images/news/politics/breaking_news/932-5-eng-GB/breaking_news.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069071356\">\n  <original attribute_id=\"932\"\n            attribute_version=\"4\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1093,'eng-GB',1,279,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>It is way to early to say but he is the name in all newspapers this week. Will he be able to do what nobody else has? </paragraph>\n  <paragraph>Stay tuned for more updates.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1089,'eng-GB',1,278,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (323,'eng-GB',5,115,152,'Cache',0,0,0,0,'cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (324,'eng-GB',5,115,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"cache.png\"\n         suffix=\"png\"\n         basename=\"cache\"\n         dirpath=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB/cache.png\"\n         original_filename=\"gnome-ccperiph.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"324\"\n            attribute_version=\"4\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"cache_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB/cache_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"cache_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB/cache_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"cache_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/cache/324-5-eng-GB/cache_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (325,'eng-GB',5,115,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (326,'eng-GB',5,115,155,'setup/cache',0,0,0,0,'setup/cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (102,'eng-GB',10,43,152,'Classes',0,0,0,0,'classes','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (103,'eng-GB',10,43,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"classes.png\"\n         suffix=\"png\"\n         basename=\"classes\"\n         dirpath=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB/classes.png\"\n         original_filename=\"gnome-settings.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"103\"\n            attribute_version=\"9\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"classes_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB/classes_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"classes_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB/classes_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"classes_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/classes/103-10-eng-GB/classes_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (104,'eng-GB',10,43,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (105,'eng-GB',10,43,155,'class/grouplist',0,0,0,0,'class/grouplist','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (110,'eng-GB',11,45,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (111,'eng-GB',11,45,155,'content/edit/56',0,0,0,0,'content/edit/56','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (327,'eng-GB',4,116,152,'URL translator',0,0,0,0,'url translator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (328,'eng-GB',4,116,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"url_translator.png\"\n         suffix=\"png\"\n         basename=\"url_translator\"\n         dirpath=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator.png\"\n         original_filename=\"gnome-globe.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"328\"\n            attribute_version=\"3\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"url_translator_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"url_translator_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"url_translator_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (329,'eng-GB',4,116,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (330,'eng-GB',4,116,155,'content/urltranslator/',0,0,0,0,'content/urltranslator/','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1006,'eng-GB',1,264,140,'Help',0,0,0,0,'help','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1007,'eng-GB',1,264,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Information on how to use this service.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1008,'eng-GB',1,264,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"help.\"\n         suffix=\"\"\n         basename=\"help\"\n         dirpath=\"var/news/storage/images/help/1008-1-eng-GB\"\n         url=\"var/news/storage/images/help/1008-1-eng-GB/help.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069236964\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',65,56,159,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"news.gif\"\n         suffix=\"gif\"\n         basename=\"news\"\n         dirpath=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB\"\n         url=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news.gif\"\n         original_filename=\"news.gif\"\n         mime_type=\"original\"\n         width=\"165\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069841357\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"news_reference.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB\"\n         url=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_reference.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069841359\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"news_medium.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB\"\n         url=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_medium.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"1069841360\"\n         is_valid=\"1\" />\n  <alias name=\"logo\"\n         filename=\"news_logo.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB\"\n         url=\"var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_logo.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-447475028\"\n         timestamp=\"1069841394\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (151,'eng-GB',65,56,158,'author=eZ systems package team\ncopyright=eZ systems\ndescription=Content Management System\nkeywords=cms',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1104,'eng-GB',1,281,1,'Final release of ABC',0,0,0,0,'final release of abc','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1105,'eng-GB',1,281,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1106,'eng-GB',1,281,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Publish ABC finally released their long awaited software last friday. But was it all worth waiting for? We will let you know right now.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1107,'eng-GB',1,281,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>We have been waiting for Publish ABC for more than five years and they have told us over and over again that this will be the best software ever. But how often have we heard this before? Publish ABC has nothing new to tell.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1108,'eng-GB',1,281,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"final_release_of_abc.\"\n         suffix=\"\"\n         basename=\"final_release_of_abc\"\n         dirpath=\"var/news/storage/images/news/technology/final_release_of_abc/1108-1-eng-GB\"\n         url=\"var/news/storage/images/news/technology/final_release_of_abc/1108-1-eng-GB/final_release_of_abc.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069681154\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1109,'eng-GB',1,281,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1110,'eng-GB',1,281,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1118,'eng-GB',1,283,1,'Dons Jonas goes down',0,0,0,0,'dons jonas goes down','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1119,'eng-GB',1,283,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1120,'eng-GB',1,283,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>One of the largest companies in the country today went out of business. It is the result of to many good diners says the CEO Jonas.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1121,'eng-GB',1,283,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1122,'eng-GB',1,283,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"dons_jonas_goes_down.\"\n         suffix=\"\"\n         basename=\"dons_jonas_goes_down\"\n         dirpath=\"var/news/storage/images/news/business/dons_jonas_goes_down/1122-1-eng-GB\"\n         url=\"var/news/storage/images/news/business/dons_jonas_goes_down/1122-1-eng-GB/dons_jonas_goes_down.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069681346\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1123,'eng-GB',1,283,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1124,'eng-GB',1,283,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (978,'eng-GB',4,260,1,'Latest business update',0,0,0,0,'latest business update','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1001,'eng-GB',4,260,218,'B�rd Farstad',0,0,0,0,'b�rd farstad','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (979,'eng-GB',4,260,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The news department has created a new service for all local readers. Let us know what happens in your neighborhood and you will serve others.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (980,'eng-GB',4,260,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>This is a service that will be benefitial to all your friends and locals. It will also be a good service for the people that have moved away but wants to know what is going on in their old neighborhood.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1041,'eng-GB',2,271,1,'Business as usual',0,0,0,0,'business as usual','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1042,'eng-GB',2,271,218,'Kjell Mann',0,0,0,0,'kjell mann','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1043,'eng-GB',2,271,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Where have we heard this before? Business as usual is becoming a slang for we have problems but will not close down.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (981,'eng-GB',4,260,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"latest_business_update.\"\n         suffix=\"\"\n         basename=\"latest_business_update\"\n         dirpath=\"var/news/storage/images/news/business/latest_business_update/981-4-eng-GB\"\n         url=\"var/news/storage/images/news/business/latest_business_update/981-4-eng-GB/latest_business_update.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069147445\">\n  <original attribute_id=\"981\"\n            attribute_version=\"3\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (982,'eng-GB',4,260,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1024,'eng-GB',4,260,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1044,'eng-GB',2,271,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Write in the rest of the text here</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (984,'eng-GB',2,261,1,'Arnold for governor',0,0,0,0,'arnold for governor','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1002,'eng-GB',2,261,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (985,'eng-GB',2,261,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The latest movie from hollywood. As we all know Arnold was selected for governor. But what will happen to T4?</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1045,'eng-GB',2,271,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"business_as_usual.\"\n         suffix=\"\"\n         basename=\"business_as_usual\"\n         dirpath=\"var/news/storage/images/news/business/business_as_usual/1045-2-eng-GB\"\n         url=\"var/news/storage/images/news/business/business_as_usual/1045-2-eng-GB/business_as_usual.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069242999\">\n  <original attribute_id=\"1045\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1046,'eng-GB',2,271,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1047,'eng-GB',2,271,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (986,'eng-GB',2,261,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Many fans are asking this question. Will there be no more movies with the man himself? No more strange quotes? No more entertaining movies? This is not good, not good at all. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (962,'eng-GB',3,254,1,'Google indexes',0,0,0,0,'google indexes','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1000,'eng-GB',3,254,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (963,'eng-GB',3,254,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>All the content on the web and stores it on one singe cd-rom!! Pretty nasty stuff. What if this cd breakes? </line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (964,'eng-GB',3,254,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>All the content on the web and stores it on one singe cd-rom!! Pretty nasty stuff. What if this cd breakes? </paragraph>\n  <paragraph>It is just a chanse you have to take. That is more or less it.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (987,'eng-GB',2,261,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"arnold_for_governor.\"\n         suffix=\"\"\n         basename=\"arnold_for_governor\"\n         dirpath=\"var/news/storage/images/news/politics/arnold_for_governor/987-2-eng-GB\"\n         url=\"var/news/storage/images/news/politics/arnold_for_governor/987-2-eng-GB/arnold_for_governor.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069147875\">\n  <original attribute_id=\"987\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (988,'eng-GB',2,261,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1025,'eng-GB',2,261,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (935,'eng-GB',3,250,1,'Leauge champion',0,0,0,0,'leauge champion','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (998,'eng-GB',3,250,218,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (936,'eng-GB',3,250,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>eZpool is the internal champion and was never close to loosing to anybody else. Undefeated through the whole year it was never any doubt about it.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (965,'eng-GB',3,254,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"google_indexes.\"\n         suffix=\"\"\n         basename=\"google_indexes\"\n         dirpath=\"var/news/storage/images/news/technology/google_indexes/965-3-eng-GB\"\n         url=\"var/news/storage/images/news/technology/google_indexes/965-3-eng-GB/google_indexes.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069077395\">\n  <original attribute_id=\"965\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (966,'eng-GB',3,254,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1022,'eng-GB',3,254,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (937,'eng-GB',3,250,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>The final standings:</line>\n    <line>1. eZpool</line>\n    <line>2. Dudes</line>\n    <line>3. Giverns</line>\n    <line>4. Stakes</line>\n    <line>5. Heads before brains</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (938,'eng-GB',3,250,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"leauge_champion.\"\n         suffix=\"\"\n         basename=\"leauge_champion\"\n         dirpath=\"var/news/storage/images/news/sports/leauge_champion/938-3-eng-GB\"\n         url=\"var/news/storage/images/news/sports/leauge_champion/938-3-eng-GB/leauge_champion.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069072375\">\n  <original attribute_id=\"938\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (939,'eng-GB',3,250,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1020,'eng-GB',3,250,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (522,'eng-GB',4,161,140,'About this website',0,0,0,0,'about this website','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (523,'eng-GB',4,161,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>This is where you let people know what your site is about and why it is there. You can also use these information pages all kinds of general information like contact forms etc.</paragraph>\n  <paragraph>Like this: This website was created to help share information about whats going on in the world. We will keep you updated in several areas.</paragraph>\n  <paragraph>Phasellus elementum, velit at vehicula accumsan, lacus nunc rhoncus lectus, et tempor magna mi vitae velit. Aliquam erat volutpat. In ut libero eget lorem vestibulum fermentum. Sed sed tellus ut diam nonummy fringilla. In hac habitasse platea dictumst. Duis diam. Aenean interdum. Sed scelerisque ornare dolor. Phasellus neque magna, ullamcorper id, tincidunt non, scelerisque ut, sapien. Nulla facilisi. Suspendisse vel wisi nec velit dapibus vestibulum. Mauris fringilla, mi a congue dapibus, lacus sem viverra quam, vel tristique lacus dolor consequat diam. Vestibulum et libero. Donec adipiscing sagittis diam. Nam bibendum dui porttitor lacus. Morbi dignissim. Integer tempor. Vestibulum est elit, cursus quis, laoreet vitae, interdum vel, diam</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1003,'eng-GB',2,263,140,'Contact information',0,0,0,0,'contact information','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1004,'eng-GB',2,263,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>A contact page is where you let your readers, customers, partners etc find information on how to get in touch with you.</paragraph>\n  <paragraph>Normal info to have here is: telephone numbers, fax numbers, e-mail addresses, visitors address and snail mail address. </paragraph>\n  <paragraph>This site is also often used for people that wants to tip the site on news, updates etc. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1005,'eng-GB',2,263,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"contact_information.\"\n         suffix=\"\"\n         basename=\"contact_information\"\n         dirpath=\"var/news/storage/images/contact_information/1005-2-eng-GB\"\n         url=\"var/news/storage/images/contact_information/1005-2-eng-GB/contact_information.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069236863\">\n  <original attribute_id=\"1005\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (524,'eng-GB',4,161,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"about_this_website.\"\n         suffix=\"\"\n         basename=\"about_this_website\"\n         dirpath=\"var/news/storage/images/about_this_website/524-4-eng-GB\"\n         url=\"var/news/storage/images/about_this_website/524-4-eng-GB/about_this_website.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"524\"\n            attribute_version=\"3\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1126,'eng-GB',2,284,218,'Terje Gunrell',0,0,0,0,'terje gunrell','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1127,'eng-GB',2,284,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The very close competition was finished late last night after 3 am. Rider the underdog beat the favourite and let the celebrations start with his familiy and friends as soon as it was decided.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1125,'eng-GB',2,284,1,'Rider wins dart competition',0,0,0,0,'rider wins dart competition','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1137,'eng-GB',1,289,207,'What season is the best?',0,0,0,0,'what season is the best?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1138,'eng-GB',1,289,208,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezoption>\n  <name></name>\n  <options>\n    <option id=\"0\"\n            additional_price=\"\">Spring</option>\n    <option id=\"1\"\n            additional_price=\"\">Summer</option>\n    <option id=\"2\"\n            additional_price=\"\">Fall</option>\n    <option id=\"3\"\n            additional_price=\"\">Winter</option>\n  </options>\n</ezoption>',0,0,0,0,'','ezoption');
INSERT INTO ezcontentobject_attribute VALUES (1128,'eng-GB',2,284,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The very close competition was finished late last night after 3 am. Rider the underdog beat the favourite and let the celebrations start with his familiy and friends as soon as it was decided.</paragraph>\n  <paragraph>This was fun was all he had to say when it was over. I will just have a small dring and then go to bed and sleep like a champion. It will be a nice feeling.</paragraph>\n  <paragraph>Rider today insisted he will face a &quot;big summer&quot; as he will attempt to piece together a season which can make a stronger challenge for next season&apos;s Premiership crown. </paragraph>\n  <paragraph>Rider was disappointed with his finish in the league last season and he is working hard, like everyone else, to bid for the title next year as well. </paragraph>\n  <paragraph>&quot;It&apos;s been the greatest of seasons on the league front, and in Europe,&quot; he said. </paragraph>\n  <paragraph>&quot;I won the league now and also won the Open Cup but set my sights much higher than that and, overall, it&apos;s been an ok season. </paragraph>\n  <paragraph>&quot;Hopefully I will get even better next year. It&apos;s a really important summer for me and my mates. But it&apos;s certainly a big summer.&quot;</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1129,'eng-GB',2,284,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"rider_wins_dart_competition.\"\n         suffix=\"\"\n         basename=\"rider_wins_dart_competition\"\n         dirpath=\"var/news/storage/images/news/sports/rider_wins_dart_competition/1129-2-eng-GB\"\n         url=\"var/news/storage/images/news/sports/rider_wins_dart_competition/1129-2-eng-GB/rider_wins_dart_competition.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069683256\">\n  <original attribute_id=\"1129\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1130,'eng-GB',2,284,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1131,'eng-GB',2,284,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1144,'eng-GB',2,290,123,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (1143,'eng-GB',2,290,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"new_top_fair.jpg\"\n         suffix=\"jpg\"\n         basename=\"new_top_fair\"\n         dirpath=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB\"\n         url=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair.jpg\"\n         original_filename=\"dscn0001.jpg\"\n         mime_type=\"original\"\n         width=\"350\"\n         height=\"263\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069757298\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"new_top_fair_reference.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB\"\n         url=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair_reference.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"350\"\n         height=\"263\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069841064\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"new_top_fair_medium.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB\"\n         url=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair_medium.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"200\"\n         height=\"150\"\n         alias_key=\"1446888826\"\n         timestamp=\"1070973602\"\n         is_valid=\"1\" />\n  <alias name=\"small\"\n         filename=\"new_top_fair_small.jpg\"\n         suffix=\"jpg\"\n         dirpath=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB\"\n         url=\"var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair_small.jpg\"\n         mime_type=\"image/jpeg\"\n         width=\"100\"\n         height=\"75\"\n         alias_key=\"-1588460780\"\n         timestamp=\"1069841064\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1141,'eng-GB',2,290,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>This week, some members of the crew are reporting live from Hall A, attending &quot;Top fair 2003&quot;. Top fair 2003 is an international trade fair for Information Technology and Telecommunications. The trade fair is held for the 5th time.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1142,'eng-GB',2,290,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Four crew members are on-site from the 20th to the 24th reporting live from the hall. The following text contains a live report from the fair.</paragraph>\n  <paragraph>Our first impressions are very positive; exceeding all expectations. We have barely been here a day, and a lot of people have visited us already. It seems that there are many people who already have some knowledge of our main product, which is an open source content management system and development framework. The visitors are mostly from Germany and Austria, many of them are representing various organizations and companies, large and small.</paragraph>\n  <paragraph>Despite the enormous success of GNU/Linux, some people are still unfamiliar with open source software and public licenses. However, they sure seem impressed when they realize just how powerful an open source product can be; not to mention the benefits of having a huge and open community with creative minds who are working together to achieve great things.</paragraph>\n  <paragraph>Speaking of community, we&apos;re happy that the community show up. It is always interesting and inspiring to meet face to face and to discuss various topics. We certainly hope that more community people will show up during the rest of the week.</paragraph>\n  <paragraph>Anyway, we were talking about the benefits of open and free software. As mentioned, some people still don&apos;t get it; however, when explained, we&apos;re met by replies such as:</paragraph>\n  <paragraph>&quot;Amazing!&quot; - big smile...</paragraph>\n  <paragraph>&quot;I would have to pay a lot of money for this feature from company...&quot;</paragraph>\n  <paragraph>- from a guy who came to us from one of the neighboring stands (right after watching a presentation there).</paragraph>\n  <paragraph>\n    <line>Some companies are just interested in talking to potential customers who are willing to spend millions on rigid solutions. This is not our policy. We&apos;re very flexible and eager to talk to a wide range of people. If you have the chance visit the fair, feel free to stop by. Our stand is open and prepared for everyone. Anybody can sit down together with our representatives and receive an on-site, hands-on demonstration of the system.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1140,'eng-GB',2,290,218,'Tim Gunny',0,0,0,0,'tim gunny','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1139,'eng-GB',2,290,1,'New top fair',0,0,0,0,'new top fair','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1145,'eng-GB',2,290,219,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',65,56,160,'news_brown',0,0,0,0,'news_brown','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',65,56,161,'news_package',0,0,0,0,'news_package','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (437,'eng-GB',65,56,180,'nospam@ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (671,'eng-GB',65,56,196,'ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1076,'eng-GB',65,56,220,'Copyright &copy; eZ systems as 1999-2004',0,0,0,0,'copyright &copy; ez systems as 1999-2004','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1146,'eng-GB',2,291,6,'Content editors',0,0,0,0,'content editors','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1147,'eng-GB',2,291,7,'Restrictive rights for managing content, can create new articles etc. but needs them to be approved by an editor.',0,0,0,0,'restrictive rights for managing content, can creat','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (26,'eng-GB',2,13,6,'Editors',0,0,0,0,'editors','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (27,'eng-GB',2,13,7,'All rights for content handling (create, read, remove, restore etc.)',0,0,0,0,'all rights for content handling (create, read, rem','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1148,'eng-GB',1,292,8,'Editor',0,0,0,0,'editor','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1149,'eng-GB',1,292,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1150,'eng-GB',1,292,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (1155,'eng-GB',1,293,8,'Content',0,0,0,0,'content','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1156,'eng-GB',1,293,9,'Editor',0,0,0,0,'editor','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1157,'eng-GB',1,293,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (1158,'eng-GB',1,294,6,'Anonymous Users',0,0,0,0,'anonymous users','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1159,'eng-GB',1,294,7,'User group for the anonymous user',0,0,0,0,'user group for the anonymous user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (19,'eng-GB',3,10,8,'Anonymous',0,0,0,0,'anonymous','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (20,'eng-GB',3,10,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (21,'eng-GB',3,10,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (1160,'eng-GB',1,295,4,'Ini settings',0,0,0,0,'ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1161,'eng-GB',1,295,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (1162,'eng-GB',1,296,221,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1163,'eng-GB',1,296,222,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1164,'eng-GB',1,296,223,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1165,'eng-GB',1,296,224,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1166,'eng-GB',1,296,225,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1167,'eng-GB',1,296,226,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1168,'eng-GB',1,296,227,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1169,'eng-GB',1,296,228,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1170,'eng-GB',1,296,229,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1171,'eng-GB',1,296,230,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1172,'eng-GB',1,296,231,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1173,'eng-GB',1,296,232,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1174,'eng-GB',1,296,233,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1175,'eng-GB',1,297,152,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1176,'eng-GB',1,297,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"common_ini_settings.png\"\n         suffix=\"png\"\n         basename=\"common_ini_settings\"\n         dirpath=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings.png\"\n         original_filename=\"exec.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1076580996\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"common_ini_settings_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings_reference.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"183954394\"\n         timestamp=\"1076580996\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"common_ini_settings_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings_medium.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"472385770\"\n         timestamp=\"1076580997\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"common_ini_settings_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB\"\n         url=\"var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings_large.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"-958410206\"\n         timestamp=\"1076581016\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1177,'eng-GB',1,297,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (1178,'eng-GB',1,297,155,'content/edit/296',0,0,0,0,'content/edit/296','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1162,'eng-GB',2,296,221,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1163,'eng-GB',2,296,222,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1164,'eng-GB',2,296,223,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1165,'eng-GB',2,296,224,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1166,'eng-GB',2,296,225,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1167,'eng-GB',2,296,226,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1168,'eng-GB',2,296,227,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1169,'eng-GB',2,296,228,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1170,'eng-GB',2,296,229,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1171,'eng-GB',2,296,230,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1172,'eng-GB',2,296,231,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1173,'eng-GB',2,296,232,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1174,'eng-GB',2,296,233,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1162,'eng-GB',3,296,221,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1163,'eng-GB',3,296,222,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1164,'eng-GB',3,296,223,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1165,'eng-GB',3,296,224,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1166,'eng-GB',3,296,225,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1167,'eng-GB',3,296,226,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1168,'eng-GB',3,296,227,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1169,'eng-GB',3,296,228,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1170,'eng-GB',3,296,229,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1171,'eng-GB',3,296,230,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1172,'eng-GB',3,296,231,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1173,'eng-GB',3,296,232,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (1174,'eng-GB',3,296,233,'',0,0,0,0,'','ezinisetting');

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


INSERT INTO ezcontentobject_link VALUES (7,249,5,250);
INSERT INTO ezcontentobject_link VALUES (6,249,5,261);

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
INSERT INTO ezcontentobject_name VALUES (254,'Google indexes',1,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',39,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (96,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (256,'Politics',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',34,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',20,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (249,'Breaking news',4,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (278,'Entertainment weekly',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (221,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (143,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (144,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (145,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (239,'B�rd',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',44,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (216,'New Poll',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (187,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (189,'test2 test2',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',46,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (252,'Kewl news',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (279,'Will he become President?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (255,'Technology',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (249,'Breaking news',2,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (249,'Breaking news',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',65,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (56,'News',64,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (250,'New eZ publish package',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (249,'Breaking news',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (248,'News',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',50,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Blog',51,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'News',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (254,'Google indexes',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (257,'Sports',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (250,'New eZ publish package',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (258,'Business',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (259,'Entertainment',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (260,'Latest business update',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (261,'Arnold for governor',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (240,'Polls',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (260,'Latest business update',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',52,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (249,'Breaking news',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',11,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About this service',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (263,'Contact information',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (264,'Help',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',53,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (269,'Amazing',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (260,'Latest business update',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (271,'Business is',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',54,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',55,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',56,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',57,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (272,'fgdfg',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (275,'sdsdd',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',58,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',59,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',61,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',62,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'News',63,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (281,'Final release of ABC',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (283,'Dons Jonas goes down',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (260,'Latest business update',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (271,'Business as usual',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (261,'Arnold for governor',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (254,'Google indexes',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (250,'Leauge champion',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (284,'Rider wins dart competition',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About this website',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (263,'Contact information',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (284,'Rider wins dart competition',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (289,'What season is the best?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (290,'New top fair',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (290,'New top fair',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (290,'New top fair',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (291,'Editors',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (291,'Content editors',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (13,'Editors',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (292,'Editor User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (293,'Content Editor',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (294,'Anonymous Users',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (10,'Anonymous User',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (295,'Ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (296,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (297,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (296,'Common ini settings',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (296,'Common ini settings',3,'eng-GB','eng-GB');

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


INSERT INTO ezcontentobject_tree VALUES (1,1,0,1,1,0,'/1/',1,1,0,NULL,1,1076578160);
INSERT INTO ezcontentobject_tree VALUES (2,1,1,7,1,1,'/1/2/',9,1,0,'',2,1069757298);
INSERT INTO ezcontentobject_tree VALUES (5,1,4,1,0,1,'/1/5/',1,1,0,'users',5,1072181094);
INSERT INTO ezcontentobject_tree VALUES (11,212,10,3,1,3,'/1/5/212/11/',9,1,0,'users/anonymous_users/anonymous_user',11,1072181094);
INSERT INTO ezcontentobject_tree VALUES (12,5,11,1,1,2,'/1/5/12/',1,1,0,'users/guest_accounts',12,1033920746);
INSERT INTO ezcontentobject_tree VALUES (13,5,12,1,1,2,'/1/5/13/',1,1,0,'users/administrator_users',13,1068468219);
INSERT INTO ezcontentobject_tree VALUES (14,5,13,2,1,2,'/1/5/14/',9,1,0,'users/editors',14,1070977344);
INSERT INTO ezcontentobject_tree VALUES (15,13,14,5,1,3,'/1/5/13/15/',9,1,0,'users/administrator_users/administrator_user',15,1068468219);
INSERT INTO ezcontentobject_tree VALUES (43,1,41,1,1,1,'/1/43/',9,1,0,'media',43,1060695457);
INSERT INTO ezcontentobject_tree VALUES (44,1,42,1,1,1,'/1/44/',9,1,0,'setup',44,1076578160);
INSERT INTO ezcontentobject_tree VALUES (45,46,43,10,1,3,'/1/44/46/45/',9,1,0,'setup/setup_links/classes',45,1069159004);
INSERT INTO ezcontentobject_tree VALUES (46,44,44,1,1,2,'/1/44/46/',9,1,0,'setup/setup_links',46,1076581004);
INSERT INTO ezcontentobject_tree VALUES (47,46,45,11,1,3,'/1/44/46/47/',9,1,0,'setup/setup_links/look_and_feel',47,1069159022);
INSERT INTO ezcontentobject_tree VALUES (48,44,46,2,1,2,'/1/44/48/',9,1,0,'setup/look_and_feel',48,1069841357);
INSERT INTO ezcontentobject_tree VALUES (54,48,56,65,1,3,'/1/44/48/54/',9,1,0,'setup/look_and_feel/news',54,1069841357);
INSERT INTO ezcontentobject_tree VALUES (95,46,115,5,1,3,'/1/44/46/95/',9,1,0,'setup/setup_links/cache',95,1069158933);
INSERT INTO ezcontentobject_tree VALUES (96,46,116,4,1,3,'/1/44/46/96/',9,1,0,'setup/setup_links/url_translator',96,1069159040);
INSERT INTO ezcontentobject_tree VALUES (127,2,161,4,1,2,'/1/2/127/',9,1,0,'about_this_website',127,1069683989);
INSERT INTO ezcontentobject_tree VALUES (173,2,240,2,1,2,'/1/2/173/',8,1,0,'polls',173,1069684665);
INSERT INTO ezcontentobject_tree VALUES (174,173,241,1,1,3,'/1/2/173/174/',9,1,0,'polls/which_one_is_the_best_of_matrix_movies',174,1068720802);
INSERT INTO ezcontentobject_tree VALUES (181,2,248,1,1,2,'/1/2/181/',9,1,0,'news',181,1069757298);
INSERT INTO ezcontentobject_tree VALUES (182,188,249,5,1,4,'/1/2/181/188/182/',9,1,0,'news/politics/breaking_news',182,1069245323);
INSERT INTO ezcontentobject_tree VALUES (183,189,250,3,1,4,'/1/2/181/189/183/',9,1,0,'news/sports/leauge_champion',183,1069683166);
INSERT INTO ezcontentobject_tree VALUES (184,182,252,1,1,5,'/1/2/181/188/182/184/',9,1,0,'news/politics/breaking_news/kewl_news',184,1069074891);
INSERT INTO ezcontentobject_tree VALUES (186,187,254,3,1,4,'/1/2/181/187/186/',9,1,0,'news/technology/google_indexes',186,1069682589);
INSERT INTO ezcontentobject_tree VALUES (187,181,255,1,1,3,'/1/2/181/187/',9,1,0,'news/technology',187,1069757298);
INSERT INTO ezcontentobject_tree VALUES (188,181,256,1,1,3,'/1/2/181/188/',9,1,0,'news/politics',188,1069682497);
INSERT INTO ezcontentobject_tree VALUES (189,181,257,1,1,3,'/1/2/181/189/',9,1,0,'news/sports',189,1069685384);
INSERT INTO ezcontentobject_tree VALUES (190,181,258,1,1,3,'/1/2/181/190/',9,1,0,'news/business',190,1069682292);
INSERT INTO ezcontentobject_tree VALUES (191,181,259,1,1,3,'/1/2/181/191/',9,1,0,'news/entertainment',191,1069682497);
INSERT INTO ezcontentobject_tree VALUES (192,190,260,4,1,4,'/1/2/181/190/192/',9,1,0,'news/business/latest_business_update',192,1069681784);
INSERT INTO ezcontentobject_tree VALUES (193,191,261,2,1,4,'/1/2/181/191/193/',9,1,0,'news/entertainment/arnold_for_governor',193,1069682497);
INSERT INTO ezcontentobject_tree VALUES (194,2,263,2,1,2,'/1/2/194/',9,1,0,'contact_information',194,1069684196);
INSERT INTO ezcontentobject_tree VALUES (195,2,264,1,1,2,'/1/2/195/',9,1,0,'help',195,1069237025);
INSERT INTO ezcontentobject_tree VALUES (196,182,269,1,1,5,'/1/2/181/188/182/196/',1,1,0,'news/politics/breaking_news/amazing',196,1069239748);
INSERT INTO ezcontentobject_tree VALUES (197,190,271,2,1,4,'/1/2/181/190/197/',9,1,0,'news/business/business_as_usual',197,1069682292);
INSERT INTO ezcontentobject_tree VALUES (198,182,272,1,1,5,'/1/2/181/188/182/198/',1,1,0,'news/politics/breaking_news/fgdfg',198,1069244422);
INSERT INTO ezcontentobject_tree VALUES (199,182,275,1,1,5,'/1/2/181/188/182/199/',1,1,0,'news/politics/breaking_news/sdsdd',199,1069245323);
INSERT INTO ezcontentobject_tree VALUES (200,191,278,1,1,4,'/1/2/181/191/200/',9,1,0,'news/entertainment/entertainment_weekly',200,1069680733);
INSERT INTO ezcontentobject_tree VALUES (201,191,279,1,1,4,'/1/2/181/191/201/',9,1,0,'news/entertainment/will_he_become_president',201,1069680908);
INSERT INTO ezcontentobject_tree VALUES (202,187,281,1,1,4,'/1/2/181/187/202/',9,1,0,'news/technology/final_release_of_abc',202,1069681297);
INSERT INTO ezcontentobject_tree VALUES (203,190,283,1,1,4,'/1/2/181/190/203/',9,1,0,'news/business/dons_jonas_goes_down',203,1069681443);
INSERT INTO ezcontentobject_tree VALUES (204,188,261,2,1,4,'/1/2/181/188/204/',9,1,0,'news/politics/arnold_for_governor',193,1069682497);
INSERT INTO ezcontentobject_tree VALUES (205,189,284,2,1,4,'/1/2/181/189/205/',9,1,0,'news/sports/rider_wins_dart_competition',205,1069685384);
INSERT INTO ezcontentobject_tree VALUES (207,173,289,1,1,3,'/1/2/173/207/',9,1,0,'polls/what_season_is_the_best',207,1069684665);
INSERT INTO ezcontentobject_tree VALUES (208,187,290,2,1,4,'/1/2/181/187/208/',9,1,0,'news/technology/new_top_fair',208,1069757298);
INSERT INTO ezcontentobject_tree VALUES (209,5,291,2,1,2,'/1/5/209/',9,1,0,'users/content_editors',209,1070977383);
INSERT INTO ezcontentobject_tree VALUES (210,14,292,1,1,3,'/1/5/14/210/',9,1,0,'users/editors/editor_user',210,1070977344);
INSERT INTO ezcontentobject_tree VALUES (211,209,293,1,1,3,'/1/5/209/211/',9,1,0,'users/content_editors/content_editor',211,1070977383);
INSERT INTO ezcontentobject_tree VALUES (212,5,294,1,1,2,'/1/5/212/',9,1,0,'users/anonymous_users',212,1072181094);
INSERT INTO ezcontentobject_tree VALUES (213,44,295,1,1,2,'/1/44/213/',9,1,0,'setup/ini_settings',213,1076578160);
INSERT INTO ezcontentobject_tree VALUES (214,213,296,3,1,3,'/1/44/213/214/',1,1,0,'setup/ini_settings/common_ini_settings',214,1076578160);
INSERT INTO ezcontentobject_tree VALUES (215,46,297,1,1,3,'/1/44/46/215/',9,1,0,'setup/setup_links/common_ini_settings',215,1076581004);

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
INSERT INTO ezcontentobject_version VALUES (439,11,14,1,1033920737,1033920746,1,0,0);
INSERT INTO ezcontentobject_version VALUES (440,12,14,1,1033920760,1033920775,1,0,0);
INSERT INTO ezcontentobject_version VALUES (831,235,14,1,1068718746,1068718760,1,0,0);
INSERT INTO ezcontentobject_version VALUES (472,41,14,1,1060695450,1060695457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (473,42,14,1,1066383039,1066383068,1,0,0);
INSERT INTO ezcontentobject_version VALUES (475,44,14,1,1066384403,1066384457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (888,45,14,11,1069159015,1069159022,1,0,0);
INSERT INTO ezcontentobject_version VALUES (482,46,14,2,1066389882,1066389902,1,0,0);
INSERT INTO ezcontentobject_version VALUES (927,281,14,1,1069681152,1069681297,1,0,0);
INSERT INTO ezcontentobject_version VALUES (875,257,14,1,1069145734,1069145751,1,0,0);
INSERT INTO ezcontentobject_version VALUES (884,249,14,5,1069158567,1069158606,1,0,0);
INSERT INTO ezcontentobject_version VALUES (950,56,14,65,1069841102,1069841356,1,0,0);
INSERT INTO ezcontentobject_version VALUES (912,275,10,1,1069245275,1069245295,1,0,0);
INSERT INTO ezcontentobject_version VALUES (838,240,14,2,1068720650,1068720665,1,0,0);
INSERT INTO ezcontentobject_version VALUES (835,239,14,1,1068719292,1068719374,1,0,0);
INSERT INTO ezcontentobject_version VALUES (861,1,14,7,1069069717,1069069747,1,1,0);
INSERT INTO ezcontentobject_version VALUES (848,245,14,1,1068730464,1068730475,1,0,0);
INSERT INTO ezcontentobject_version VALUES (813,219,14,1,1068716892,1068716920,1,0,0);
INSERT INTO ezcontentobject_version VALUES (909,272,10,1,1069244370,1069244422,1,0,0);
INSERT INTO ezcontentobject_version VALUES (840,242,14,1,1068720892,1068720915,1,0,0);
INSERT INTO ezcontentobject_version VALUES (878,259,14,1,1069146722,1069146733,1,0,0);
INSERT INTO ezcontentobject_version VALUES (839,241,14,1,1068720708,1068720802,1,0,0);
INSERT INTO ezcontentobject_version VALUES (924,278,14,1,1069680582,1069680732,1,0,0);
INSERT INTO ezcontentobject_version VALUES (829,233,14,1,1068718686,1068718705,1,0,0);
INSERT INTO ezcontentobject_version VALUES (866,252,14,1,1069074559,1069074891,1,0,0);
INSERT INTO ezcontentobject_version VALUES (925,279,14,1,1069680746,1069680907,1,0,0);
INSERT INTO ezcontentobject_version VALUES (877,258,14,1,1069146650,1069146661,1,0,0);
INSERT INTO ezcontentobject_version VALUES (900,269,10,1,1069239679,1069239748,1,0,0);
INSERT INTO ezcontentobject_version VALUES (796,14,14,5,1068468183,1068468218,1,0,0);
INSERT INTO ezcontentobject_version VALUES (814,220,14,1,1068716938,1068716967,1,0,0);
INSERT INTO ezcontentobject_version VALUES (850,246,14,1,1068737185,1068737197,1,0,0);
INSERT INTO ezcontentobject_version VALUES (872,256,14,1,1069145315,1069145327,1,0,0);
INSERT INTO ezcontentobject_version VALUES (862,248,14,1,1069070970,1069070990,1,0,0);
INSERT INTO ezcontentobject_version VALUES (871,255,14,1,1069145180,1069145297,1,0,0);
INSERT INTO ezcontentobject_version VALUES (886,115,14,5,1069158923,1069158933,1,0,0);
INSERT INTO ezcontentobject_version VALUES (887,43,14,10,1069158943,1069159003,1,0,0);
INSERT INTO ezcontentobject_version VALUES (889,116,14,4,1069159032,1069159040,1,0,0);
INSERT INTO ezcontentobject_version VALUES (893,264,14,1,1069236962,1069237025,1,0,0);
INSERT INTO ezcontentobject_version VALUES (929,283,14,1,1069681344,1069681442,1,0,0);
INSERT INTO ezcontentobject_version VALUES (930,260,14,4,1069681530,1069681784,1,0,0);
INSERT INTO ezcontentobject_version VALUES (931,271,14,2,1069682097,1069682291,1,0,0);
INSERT INTO ezcontentobject_version VALUES (932,261,14,2,1069682326,1069682497,1,0,0);
INSERT INTO ezcontentobject_version VALUES (933,254,14,3,1069682530,1069682589,1,0,0);
INSERT INTO ezcontentobject_version VALUES (934,250,14,3,1069682627,1069683166,1,0,0);
INSERT INTO ezcontentobject_version VALUES (937,161,14,4,1069683751,1069683989,1,0,0);
INSERT INTO ezcontentobject_version VALUES (938,263,14,2,1069684001,1069684195,1,0,0);
INSERT INTO ezcontentobject_version VALUES (943,284,14,2,1069685130,1069685383,1,0,0);
INSERT INTO ezcontentobject_version VALUES (942,289,14,1,1069684552,1069684665,1,0,0);
INSERT INTO ezcontentobject_version VALUES (947,290,14,2,1069757185,1069757297,1,0,0);
INSERT INTO ezcontentobject_version VALUES (952,291,14,2,1070976788,1070976835,1,0,0);
INSERT INTO ezcontentobject_version VALUES (953,13,14,2,1070976851,1070976858,1,0,0);
INSERT INTO ezcontentobject_version VALUES (954,292,14,1,1070977030,1070977344,1,0,0);
INSERT INTO ezcontentobject_version VALUES (955,293,14,1,1070977361,1070977383,1,0,0);
INSERT INTO ezcontentobject_version VALUES (956,294,14,1,1072181051,1072181061,1,0,0);
INSERT INTO ezcontentobject_version VALUES (957,10,14,3,1072181073,1072181094,1,0,0);
INSERT INTO ezcontentobject_version VALUES (958,295,14,1,1076580659,1076580679,1,0,0);
INSERT INTO ezcontentobject_version VALUES (959,296,14,1,1076580834,1076580897,3,0,0);
INSERT INTO ezcontentobject_version VALUES (960,297,14,1,1076580940,1076581004,1,0,0);
INSERT INTO ezcontentobject_version VALUES (961,296,14,2,1076581022,1076581035,3,0,0);
INSERT INTO ezcontentobject_version VALUES (962,296,14,3,1076578143,1076578159,1,0,0);

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


INSERT INTO ezimagefile VALUES (5,152,'var/news/storage/images/setup/look_and_feel/news/152-61-eng-GB/news_logo.gif');
INSERT INTO ezimagefile VALUES (10,152,'var/news/storage/images/setup/look_and_feel/news/152-62-eng-GB/news_logo.gif');
INSERT INTO ezimagefile VALUES (11,152,'var/news/storage/images/setup/look_and_feel/news/152-63-eng-GB/news.gif');
INSERT INTO ezimagefile VALUES (12,152,'var/news/storage/images/setup/look_and_feel/news/152-63-eng-GB/news_reference.gif');
INSERT INTO ezimagefile VALUES (13,152,'var/news/storage/images/setup/look_and_feel/news/152-63-eng-GB/news_medium.gif');
INSERT INTO ezimagefile VALUES (14,152,'var/news/storage/images/setup/look_and_feel/news/152-63-eng-GB/news_logo.gif');
INSERT INTO ezimagefile VALUES (15,1087,'var/news/storage/images/news/entertainment/entertainment_weekly/1087-1-eng-GB/entertainment_weekly.');
INSERT INTO ezimagefile VALUES (16,1094,'var/news/storage/images/news/entertainment/will_he_become_president/1094-1-eng-GB/will_he_become_president.');
INSERT INTO ezimagefile VALUES (17,1108,'var/news/storage/images/news/technology/final_release_of_abc/1108-1-eng-GB/final_release_of_abc.');
INSERT INTO ezimagefile VALUES (18,1122,'var/news/storage/images/news/business/dons_jonas_goes_down/1122-1-eng-GB/dons_jonas_goes_down.');
INSERT INTO ezimagefile VALUES (19,981,'var/news/storage/images/news/business/latest_business_update/981-4-eng-GB/latest_business_update.');
INSERT INTO ezimagefile VALUES (20,1045,'var/news/storage/images/news/business/business_as_usual/1045-2-eng-GB/business_as_usual.');
INSERT INTO ezimagefile VALUES (21,987,'var/news/storage/images/news/politics/arnold_for_governor/987-2-eng-GB/arnold_for_governor.');
INSERT INTO ezimagefile VALUES (22,965,'var/news/storage/images/news/technology/google_indexes/965-3-eng-GB/google_indexes.');
INSERT INTO ezimagefile VALUES (23,938,'var/news/storage/images/news/sports/leauge_champion/938-3-eng-GB/leauge_champion.');
INSERT INTO ezimagefile VALUES (24,1129,'var/news/storage/images/news/sports/rider_wins_dart_competition/1129-1-eng-GB/rider_wins_dart_competition.');
INSERT INTO ezimagefile VALUES (25,524,'var/news/storage/images/about_this_website/524-4-eng-GB/about_this_website.');
INSERT INTO ezimagefile VALUES (26,1005,'var/news/storage/images/contact_information/1005-2-eng-GB/contact_information.');
INSERT INTO ezimagefile VALUES (27,1129,'var/news/storage/images/news/sports/rider_wins_dart_competition/1129-2-eng-GB/rider_wins_dart_competition.');
INSERT INTO ezimagefile VALUES (28,1143,'var/news/storage/images/news/technology/new_top_fair/1143-1-eng-GB/new_top_fair.');
INSERT INTO ezimagefile VALUES (30,1143,'var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair.jpg');
INSERT INTO ezimagefile VALUES (31,1143,'var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair_reference.jpg');
INSERT INTO ezimagefile VALUES (32,1143,'var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair_medium.jpg');
INSERT INTO ezimagefile VALUES (33,1143,'var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair_small.jpg');
INSERT INTO ezimagefile VALUES (38,152,'var/news/storage/images/setup/look_and_feel/news/152-64-eng-GB/news_logo.gif');
INSERT INTO ezimagefile VALUES (40,152,'var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news.gif');
INSERT INTO ezimagefile VALUES (41,152,'var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_reference.gif');
INSERT INTO ezimagefile VALUES (42,152,'var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_medium.gif');
INSERT INTO ezimagefile VALUES (43,152,'var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_logo.gif');
INSERT INTO ezimagefile VALUES (44,109,'var/storage/original/image/phpAhcEu9.png');
INSERT INTO ezimagefile VALUES (45,103,'var/storage/original/image/phpWJgae7.png');
INSERT INTO ezimagefile VALUES (46,109,'var/storage/original/image/phpbVfzkm.png');
INSERT INTO ezimagefile VALUES (47,103,'var/storage/original/image/php7ZhvcB.png');
INSERT INTO ezimagefile VALUES (48,109,'var/storage/original/image/phppIJtoa.jpg');
INSERT INTO ezimagefile VALUES (49,103,'var/storage/original/image/phpXz5esv.jpg');
INSERT INTO ezimagefile VALUES (50,1176,'var/news/storage/images-versioned/1176/1-eng-GB/common_ini_settings1.png');
INSERT INTO ezimagefile VALUES (51,1176,'var/news/storage/images-versioned/1176/1-eng-GB/common_ini_settings1_reference.png');
INSERT INTO ezimagefile VALUES (52,1176,'var/news/storage/images-versioned/1176/1-eng-GB/common_ini_settings1_medium.png');
INSERT INTO ezimagefile VALUES (53,1176,'var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings.png');
INSERT INTO ezimagefile VALUES (54,1176,'var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings_reference.png');
INSERT INTO ezimagefile VALUES (55,1176,'var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings_medium.png');
INSERT INTO ezimagefile VALUES (56,1176,'var/news/storage/images/setup/setup_links/common_ini_settings/1176-1-eng-GB/common_ini_settings_large.png');

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
INSERT INTO eznode_assignment VALUES (148,9,1,2,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (150,11,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (151,12,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (540,242,1,169,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (182,41,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (183,42,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (185,44,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (592,45,11,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (193,46,2,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (581,258,1,181,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (593,116,4,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (588,249,5,188,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (651,56,65,48,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (578,257,1,181,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (573,256,1,181,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (548,245,1,177,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (561,1,7,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (572,255,1,181,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (604,269,1,182,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (591,43,10,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (516,219,1,156,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (613,272,1,182,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (550,246,1,177,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (539,241,1,173,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (627,278,1,191,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (628,279,1,191,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (528,233,1,156,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (590,115,5,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (538,240,2,2,8,1,1,0,0);
INSERT INTO eznode_assignment VALUES (530,235,1,156,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (534,239,1,169,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (562,248,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (500,14,5,13,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (582,259,1,181,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (597,264,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (566,252,1,182,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (517,220,1,156,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (616,275,1,182,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (630,281,1,187,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (632,283,1,190,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (633,260,4,190,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (634,271,2,190,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (635,261,2,191,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (636,261,2,188,9,1,0,0,0);
INSERT INTO eznode_assignment VALUES (637,254,3,187,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (638,250,3,189,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (640,161,4,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (641,263,2,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (644,284,2,189,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (643,289,1,173,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (648,290,2,187,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (653,291,2,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (654,13,2,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (655,292,1,14,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (656,293,1,209,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (657,294,1,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (659,10,3,212,9,1,1,5,0);
INSERT INTO eznode_assignment VALUES (660,295,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (661,296,1,213,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (662,297,1,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (663,296,2,213,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (664,296,3,213,1,1,1,0,0);

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


INSERT INTO eznotificationevent VALUES (1,0,'ezpublish',295,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (2,0,'ezpublish',296,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (3,0,'ezpublish',297,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (4,0,'ezpublish',296,2,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (5,0,'ezpublish',296,3,0,0,'','','','');

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
INSERT INTO ezpolicy VALUES (404,10,'edit','content','');
INSERT INTO ezpolicy VALUES (403,10,'create','content','');
INSERT INTO ezpolicy VALUES (402,10,'create','content','');
INSERT INTO ezpolicy VALUES (396,1,'login','user','*');
INSERT INTO ezpolicy VALUES (397,1,'read','content','');
INSERT INTO ezpolicy VALUES (398,1,'create','content','');
INSERT INTO ezpolicy VALUES (399,1,'edit','content','');
INSERT INTO ezpolicy VALUES (400,1,'versionread','content','');
INSERT INTO ezpolicy VALUES (401,1,'feed','rss','*');
INSERT INTO ezpolicy VALUES (405,10,'edit','content','');
INSERT INTO ezpolicy VALUES (406,10,'remove','content','');
INSERT INTO ezpolicy VALUES (407,10,'versionread','content','');
INSERT INTO ezpolicy VALUES (408,10,'bookmark','content','*');
INSERT INTO ezpolicy VALUES (409,10,'restore','content','*');
INSERT INTO ezpolicy VALUES (410,10,'cleantrash','content','*');
INSERT INTO ezpolicy VALUES (411,10,'*','collaboration','*');
INSERT INTO ezpolicy VALUES (412,12,'bookmark','content','*');
INSERT INTO ezpolicy VALUES (413,12,'create','content','');
INSERT INTO ezpolicy VALUES (414,12,'edit','content','');
INSERT INTO ezpolicy VALUES (415,12,'*','collaboration','*');
INSERT INTO ezpolicy VALUES (416,12,'versionread','content','');
INSERT INTO ezpolicy VALUES (417,12,'versionread','content','');

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


INSERT INTO ezpolicy_limitation VALUES (327,402,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (322,403,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (328,402,'Section',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (314,397,'Class',0,'read','content');
INSERT INTO ezpolicy_limitation VALUES (315,398,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (316,399,'Class',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (317,400,'Class',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (318,400,'Owner',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (323,403,'Section',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (324,403,'ParentClass',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (325,404,'Class',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (326,404,'Section',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (329,402,'ParentClass',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (330,405,'Class',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (331,405,'Section',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (332,406,'Class',0,'remove','content');
INSERT INTO ezpolicy_limitation VALUES (333,406,'Section',0,'remove','content');
INSERT INTO ezpolicy_limitation VALUES (334,407,'Class',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (335,407,'Section',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (336,413,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (337,413,'Section',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (338,413,'ParentClass',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (342,414,'Section',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (341,414,'Class',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (343,414,'Owner',0,'edit','content');
INSERT INTO ezpolicy_limitation VALUES (344,416,'Class',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (345,416,'Section',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (346,416,'Owner',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (347,417,'Class',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (348,417,'Section',0,'versionread','content');
INSERT INTO ezpolicy_limitation VALUES (349,417,'Status',0,'versionread','content');

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


INSERT INTO ezpolicy_limitation_value VALUES (692,328,'1');
INSERT INTO ezpolicy_limitation_value VALUES (672,322,'12');
INSERT INTO ezpolicy_limitation_value VALUES (671,322,'5');
INSERT INTO ezpolicy_limitation_value VALUES (687,327,'2');
INSERT INTO ezpolicy_limitation_value VALUES (686,327,'1');
INSERT INTO ezpolicy_limitation_value VALUES (689,327,'10');
INSERT INTO ezpolicy_limitation_value VALUES (688,327,'5');
INSERT INTO ezpolicy_limitation_value VALUES (691,327,'25');
INSERT INTO ezpolicy_limitation_value VALUES (690,327,'12');
INSERT INTO ezpolicy_limitation_value VALUES (649,314,'1');
INSERT INTO ezpolicy_limitation_value VALUES (650,314,'10');
INSERT INTO ezpolicy_limitation_value VALUES (651,314,'12');
INSERT INTO ezpolicy_limitation_value VALUES (652,314,'2');
INSERT INTO ezpolicy_limitation_value VALUES (653,314,'23');
INSERT INTO ezpolicy_limitation_value VALUES (654,314,'24');
INSERT INTO ezpolicy_limitation_value VALUES (655,314,'25');
INSERT INTO ezpolicy_limitation_value VALUES (656,314,'26');
INSERT INTO ezpolicy_limitation_value VALUES (657,314,'5');
INSERT INTO ezpolicy_limitation_value VALUES (658,315,'26');
INSERT INTO ezpolicy_limitation_value VALUES (659,316,'26');
INSERT INTO ezpolicy_limitation_value VALUES (660,317,'26');
INSERT INTO ezpolicy_limitation_value VALUES (661,318,'1');
INSERT INTO ezpolicy_limitation_value VALUES (673,323,'1');
INSERT INTO ezpolicy_limitation_value VALUES (674,323,'3');
INSERT INTO ezpolicy_limitation_value VALUES (675,323,'4');
INSERT INTO ezpolicy_limitation_value VALUES (676,323,'6');
INSERT INTO ezpolicy_limitation_value VALUES (677,324,'2');
INSERT INTO ezpolicy_limitation_value VALUES (678,325,'1');
INSERT INTO ezpolicy_limitation_value VALUES (679,325,'2');
INSERT INTO ezpolicy_limitation_value VALUES (680,325,'5');
INSERT INTO ezpolicy_limitation_value VALUES (681,325,'10');
INSERT INTO ezpolicy_limitation_value VALUES (682,325,'12');
INSERT INTO ezpolicy_limitation_value VALUES (683,325,'25');
INSERT INTO ezpolicy_limitation_value VALUES (684,326,'1');
INSERT INTO ezpolicy_limitation_value VALUES (685,326,'3');
INSERT INTO ezpolicy_limitation_value VALUES (693,328,'3');
INSERT INTO ezpolicy_limitation_value VALUES (694,329,'1');
INSERT INTO ezpolicy_limitation_value VALUES (695,329,'10');
INSERT INTO ezpolicy_limitation_value VALUES (696,330,'5');
INSERT INTO ezpolicy_limitation_value VALUES (697,330,'12');
INSERT INTO ezpolicy_limitation_value VALUES (698,331,'1');
INSERT INTO ezpolicy_limitation_value VALUES (699,331,'3');
INSERT INTO ezpolicy_limitation_value VALUES (700,332,'1');
INSERT INTO ezpolicy_limitation_value VALUES (701,332,'2');
INSERT INTO ezpolicy_limitation_value VALUES (702,332,'5');
INSERT INTO ezpolicy_limitation_value VALUES (703,332,'10');
INSERT INTO ezpolicy_limitation_value VALUES (704,332,'12');
INSERT INTO ezpolicy_limitation_value VALUES (705,332,'25');
INSERT INTO ezpolicy_limitation_value VALUES (706,332,'26');
INSERT INTO ezpolicy_limitation_value VALUES (707,333,'1');
INSERT INTO ezpolicy_limitation_value VALUES (708,333,'3');
INSERT INTO ezpolicy_limitation_value VALUES (709,334,'1');
INSERT INTO ezpolicy_limitation_value VALUES (710,334,'2');
INSERT INTO ezpolicy_limitation_value VALUES (711,334,'5');
INSERT INTO ezpolicy_limitation_value VALUES (712,334,'10');
INSERT INTO ezpolicy_limitation_value VALUES (713,334,'12');
INSERT INTO ezpolicy_limitation_value VALUES (714,334,'25');
INSERT INTO ezpolicy_limitation_value VALUES (715,334,'26');
INSERT INTO ezpolicy_limitation_value VALUES (716,335,'1');
INSERT INTO ezpolicy_limitation_value VALUES (717,335,'3');
INSERT INTO ezpolicy_limitation_value VALUES (718,336,'2');
INSERT INTO ezpolicy_limitation_value VALUES (719,336,'5');
INSERT INTO ezpolicy_limitation_value VALUES (720,336,'12');
INSERT INTO ezpolicy_limitation_value VALUES (721,337,'1');
INSERT INTO ezpolicy_limitation_value VALUES (722,337,'3');
INSERT INTO ezpolicy_limitation_value VALUES (723,338,'1');
INSERT INTO ezpolicy_limitation_value VALUES (724,338,'10');
INSERT INTO ezpolicy_limitation_value VALUES (734,342,'3');
INSERT INTO ezpolicy_limitation_value VALUES (733,342,'1');
INSERT INTO ezpolicy_limitation_value VALUES (732,341,'12');
INSERT INTO ezpolicy_limitation_value VALUES (731,341,'5');
INSERT INTO ezpolicy_limitation_value VALUES (730,341,'2');
INSERT INTO ezpolicy_limitation_value VALUES (735,343,'1');
INSERT INTO ezpolicy_limitation_value VALUES (736,344,'2');
INSERT INTO ezpolicy_limitation_value VALUES (737,344,'5');
INSERT INTO ezpolicy_limitation_value VALUES (738,344,'12');
INSERT INTO ezpolicy_limitation_value VALUES (739,345,'1');
INSERT INTO ezpolicy_limitation_value VALUES (740,345,'3');
INSERT INTO ezpolicy_limitation_value VALUES (741,346,'1');
INSERT INTO ezpolicy_limitation_value VALUES (742,347,'2');
INSERT INTO ezpolicy_limitation_value VALUES (743,347,'5');
INSERT INTO ezpolicy_limitation_value VALUES (744,347,'12');
INSERT INTO ezpolicy_limitation_value VALUES (745,348,'1');
INSERT INTO ezpolicy_limitation_value VALUES (746,348,'3');
INSERT INTO ezpolicy_limitation_value VALUES (747,349,'1');
INSERT INTO ezpolicy_limitation_value VALUES (748,349,'3');

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
INSERT INTO ezrole VALUES (10,0,'Editor',NULL);
INSERT INTO ezrole VALUES (12,0,'Content editor',NULL);

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


INSERT INTO ezrss_export VALUES (2,'Latest news',14,1070978218,'http://example.com','Latest news from this site.',0,1,'latestnews',1070978074,14,1,'','2.0');

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


INSERT INTO ezrss_export_item VALUES (4,2,181,2,'title','intro');

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


INSERT INTO ezsearch_object_word_link VALUES (14273,161,2596,0,0,0,2597,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14274,161,2597,0,1,2596,2598,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14275,161,2598,0,2,2597,2596,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14276,161,2596,0,3,2598,2597,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14277,161,2597,0,4,2596,2598,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14278,161,2598,0,5,2597,2597,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14279,161,2597,0,6,2598,2599,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14280,161,2599,0,7,2597,2600,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14281,161,2600,0,8,2599,2601,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14282,161,2601,0,9,2600,2602,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14283,161,2602,0,10,2601,2603,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14284,161,2603,0,11,2602,2604,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14285,161,2604,0,12,2603,2605,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14286,161,2605,0,13,2604,2606,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14287,161,2606,0,14,2605,2607,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14288,161,2607,0,15,2606,2599,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14289,161,2599,0,16,2607,2596,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14290,161,2596,0,17,2599,2608,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14291,161,2608,0,18,2596,2609,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14292,161,2609,0,19,2608,2610,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14293,161,2610,0,20,2609,2599,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14294,161,2599,0,21,2610,2611,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14295,161,2611,0,22,2599,2601,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14296,161,2601,0,23,2611,2612,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14297,161,2612,0,24,2601,2613,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14298,161,2613,0,25,2612,2614,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14299,161,2614,0,26,2613,2615,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14300,161,2615,0,27,2614,2616,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14301,161,2616,0,28,2615,2617,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14302,161,2617,0,29,2616,2618,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14303,161,2618,0,30,2617,2619,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14304,161,2619,0,31,2618,2620,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14305,161,2620,0,32,2619,2621,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14306,161,2621,0,33,2620,2616,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14307,161,2616,0,34,2621,2622,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14308,161,2622,0,35,2616,2623,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14309,161,2623,0,36,2622,2624,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14310,161,2624,0,37,2623,2625,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14311,161,2625,0,38,2624,2622,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14312,161,2622,0,39,2625,2597,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14313,161,2597,0,40,2622,2597,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14314,161,2597,0,41,2597,2598,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14315,161,2598,0,42,2597,2626,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14316,161,2626,0,43,2598,2627,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14317,161,2627,0,44,2626,2628,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14318,161,2628,0,45,2627,2629,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14319,161,2629,0,46,2628,2630,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14320,161,2630,0,47,2629,2616,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14321,161,2616,0,48,2630,2596,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14322,161,2596,0,49,2616,2631,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14323,161,2631,0,50,2596,2632,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14324,161,2632,0,51,2631,2633,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14325,161,2633,0,52,2632,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14326,161,2634,0,53,2633,2635,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14327,161,2635,0,54,2634,2636,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14328,161,2636,0,55,2635,2637,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14329,161,2637,0,56,2636,2638,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14330,161,2638,0,57,2637,2639,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14331,161,2639,0,58,2638,2601,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14332,161,2601,0,59,2639,2640,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14333,161,2640,0,60,2601,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14334,161,2634,0,61,2640,2641,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14335,161,2641,0,62,2634,2642,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14336,161,2642,0,63,2641,2643,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14337,161,2643,0,64,2642,2644,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14338,161,2644,0,65,2643,2645,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14339,161,2645,0,66,2644,2646,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14340,161,2646,0,67,2645,2647,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14341,161,2647,0,68,2646,2648,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14342,161,2648,0,69,2647,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14343,161,2649,0,70,2648,2650,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14344,161,2650,0,71,2649,2651,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14345,161,2651,0,72,2650,2652,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14346,161,2652,0,73,2651,2653,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14347,161,2653,0,74,2652,2654,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14348,161,2654,0,75,2653,2655,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14349,161,2655,0,76,2654,2656,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14350,161,2656,0,77,2655,2657,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14351,161,2657,0,78,2656,2645,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14352,161,2645,0,79,2657,2658,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14353,161,2658,0,80,2645,2659,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14354,161,2659,0,81,2658,2660,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14355,161,2660,0,82,2659,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14356,161,2634,0,83,2660,2661,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14357,161,2661,0,84,2634,2662,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14358,161,2662,0,85,2661,2663,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14359,161,2663,0,86,2662,2664,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14360,161,2664,0,87,2663,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14361,161,2665,0,88,2664,2666,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14362,161,2666,0,89,2665,2667,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14363,161,2667,0,90,2666,2667,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14364,161,2667,0,91,2667,2668,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14365,161,2668,0,92,2667,2661,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14366,161,2661,0,93,2668,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14367,161,2669,0,94,2661,2670,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14368,161,2670,0,95,2669,2671,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14369,161,2671,0,96,2670,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14370,161,2634,0,97,2671,2672,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14371,161,2672,0,98,2634,2673,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14372,161,2673,0,99,2672,2674,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14373,161,2674,0,100,2673,2675,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14374,161,2675,0,101,2674,2676,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14375,161,2676,0,102,2675,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14376,161,2669,0,103,2676,2677,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14377,161,2677,0,104,2669,2678,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14378,161,2678,0,105,2677,2667,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14379,161,2667,0,106,2678,2679,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14380,161,2679,0,107,2667,2680,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14381,161,2680,0,108,2679,2681,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14382,161,2681,0,109,2680,2643,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14383,161,2643,0,110,2681,2682,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14384,161,2682,0,111,2643,2655,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14385,161,2655,0,112,2682,2683,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14386,161,2683,0,113,2655,2684,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14387,161,2684,0,114,2683,2685,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14388,161,2685,0,115,2684,2686,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14389,161,2686,0,116,2685,2679,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14390,161,2679,0,117,2686,2661,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14391,161,2661,0,118,2679,2687,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14392,161,2687,0,119,2661,2688,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14393,161,2688,0,120,2687,2689,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14394,161,2689,0,121,2688,2690,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14395,161,2690,0,122,2689,2691,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14396,161,2691,0,123,2690,2692,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14397,161,2692,0,124,2691,2693,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14398,161,2693,0,125,2692,2645,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14399,161,2645,0,126,2693,2694,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14400,161,2694,0,127,2645,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14401,161,2665,0,128,2694,2695,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14402,161,2695,0,129,2665,2671,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14403,161,2671,0,130,2695,2656,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14404,161,2656,0,131,2671,2696,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14405,161,2696,0,132,2656,2697,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14406,161,2697,0,133,2696,2694,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14407,161,2694,0,134,2697,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14408,161,2649,0,135,2694,2698,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14409,161,2698,0,136,2649,2699,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14410,161,2699,0,137,2698,2700,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14411,161,2700,0,138,2699,2691,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14412,161,2691,0,139,2700,2701,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14413,161,2701,0,140,2691,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14414,161,2649,0,141,2701,2681,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14415,161,2681,0,142,2649,2702,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14416,161,2702,0,143,2681,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14417,161,2669,0,144,2702,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14418,161,2665,0,145,2669,2653,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14419,161,2653,0,146,2665,2662,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14420,161,2662,0,147,2653,2703,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14421,161,2703,0,148,2662,2704,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14422,161,2704,0,149,2703,2705,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14423,161,2705,0,150,2704,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14424,161,2669,0,151,2705,2706,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14425,161,2706,0,152,2669,2707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14426,161,2707,0,153,2706,2708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14427,161,2708,0,154,2707,2709,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14428,161,2709,0,155,2708,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14429,161,2649,0,156,2709,2710,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14430,161,2710,0,157,2649,2711,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14431,161,2711,0,158,2710,2712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14432,161,2712,0,159,2711,2654,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14433,161,2654,0,160,2712,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14434,161,2665,0,161,2654,2713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14435,161,2713,0,162,2665,2714,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14436,161,2714,0,163,2713,2715,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14437,161,2715,0,164,2714,2716,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14438,161,2716,0,165,2715,2717,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14439,161,2717,0,166,2716,2657,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14440,161,2657,0,167,2717,2678,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14441,161,2678,0,168,2657,2691,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14442,161,2691,0,169,2678,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14443,161,2669,0,170,2691,2597,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14444,161,2597,0,171,2669,2599,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14445,161,2599,0,172,2597,2600,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14446,161,2600,0,173,2599,2601,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14447,161,2601,0,174,2600,2602,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14448,161,2602,0,175,2601,2603,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14449,161,2603,0,176,2602,2604,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14450,161,2604,0,177,2603,2605,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14451,161,2605,0,178,2604,2606,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14452,161,2606,0,179,2605,2607,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14453,161,2607,0,180,2606,2599,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14454,161,2599,0,181,2607,2596,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14455,161,2596,0,182,2599,2608,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14456,161,2608,0,183,2596,2609,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14457,161,2609,0,184,2608,2610,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14458,161,2610,0,185,2609,2599,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14459,161,2599,0,186,2610,2611,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14460,161,2611,0,187,2599,2601,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14461,161,2601,0,188,2611,2612,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14462,161,2612,0,189,2601,2613,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14463,161,2613,0,190,2612,2614,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14464,161,2614,0,191,2613,2615,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14465,161,2615,0,192,2614,2616,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14466,161,2616,0,193,2615,2617,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14467,161,2617,0,194,2616,2618,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14468,161,2618,0,195,2617,2619,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14469,161,2619,0,196,2618,2620,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14470,161,2620,0,197,2619,2621,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14471,161,2621,0,198,2620,2616,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14472,161,2616,0,199,2621,2622,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14473,161,2622,0,200,2616,2623,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14474,161,2623,0,201,2622,2624,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14475,161,2624,0,202,2623,2625,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14476,161,2625,0,203,2624,2622,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14477,161,2622,0,204,2625,2597,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14478,161,2597,0,205,2622,2597,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14479,161,2597,0,206,2597,2598,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14480,161,2598,0,207,2597,2626,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14481,161,2626,0,208,2598,2627,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14482,161,2627,0,209,2626,2628,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14483,161,2628,0,210,2627,2629,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14484,161,2629,0,211,2628,2630,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14485,161,2630,0,212,2629,2616,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14486,161,2616,0,213,2630,2596,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14487,161,2596,0,214,2616,2631,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14488,161,2631,0,215,2596,2632,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14489,161,2632,0,216,2631,2633,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14490,161,2633,0,217,2632,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14491,161,2634,0,218,2633,2635,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14492,161,2635,0,219,2634,2636,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14493,161,2636,0,220,2635,2637,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14494,161,2637,0,221,2636,2638,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14495,161,2638,0,222,2637,2639,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14496,161,2639,0,223,2638,2601,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14497,161,2601,0,224,2639,2640,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14498,161,2640,0,225,2601,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14499,161,2634,0,226,2640,2641,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14500,161,2641,0,227,2634,2642,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14501,161,2642,0,228,2641,2643,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14502,161,2643,0,229,2642,2644,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14503,161,2644,0,230,2643,2645,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14504,161,2645,0,231,2644,2646,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14505,161,2646,0,232,2645,2647,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14506,161,2647,0,233,2646,2648,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14507,161,2648,0,234,2647,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14508,161,2649,0,235,2648,2650,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14509,161,2650,0,236,2649,2651,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14510,161,2651,0,237,2650,2652,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14511,161,2652,0,238,2651,2653,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14512,161,2653,0,239,2652,2654,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14513,161,2654,0,240,2653,2655,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14514,161,2655,0,241,2654,2656,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14515,161,2656,0,242,2655,2657,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14516,161,2657,0,243,2656,2645,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14517,161,2645,0,244,2657,2658,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14518,161,2658,0,245,2645,2659,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14519,161,2659,0,246,2658,2660,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14520,161,2660,0,247,2659,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14521,161,2634,0,248,2660,2661,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14522,161,2661,0,249,2634,2662,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14523,161,2662,0,250,2661,2663,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14524,161,2663,0,251,2662,2664,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14525,161,2664,0,252,2663,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14526,161,2665,0,253,2664,2666,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14527,161,2666,0,254,2665,2667,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14528,161,2667,0,255,2666,2667,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14529,161,2667,0,256,2667,2668,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14530,161,2668,0,257,2667,2661,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14531,161,2661,0,258,2668,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14532,161,2669,0,259,2661,2670,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14533,161,2670,0,260,2669,2671,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14534,161,2671,0,261,2670,2634,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14535,161,2634,0,262,2671,2672,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14536,161,2672,0,263,2634,2673,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14537,161,2673,0,264,2672,2674,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14538,161,2674,0,265,2673,2675,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14539,161,2675,0,266,2674,2676,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14540,161,2676,0,267,2675,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14541,161,2669,0,268,2676,2677,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14542,161,2677,0,269,2669,2678,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14543,161,2678,0,270,2677,2667,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14544,161,2667,0,271,2678,2679,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14545,161,2679,0,272,2667,2680,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14546,161,2680,0,273,2679,2681,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14547,161,2681,0,274,2680,2643,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14548,161,2643,0,275,2681,2682,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14549,161,2682,0,276,2643,2655,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14550,161,2655,0,277,2682,2683,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14551,161,2683,0,278,2655,2684,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14552,161,2684,0,279,2683,2685,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14553,161,2685,0,280,2684,2686,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14554,161,2686,0,281,2685,2679,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14555,161,2679,0,282,2686,2661,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14556,161,2661,0,283,2679,2687,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14557,161,2687,0,284,2661,2688,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14558,161,2688,0,285,2687,2689,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14559,161,2689,0,286,2688,2690,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14560,161,2690,0,287,2689,2691,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14561,161,2691,0,288,2690,2692,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14562,161,2692,0,289,2691,2693,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14563,161,2693,0,290,2692,2645,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14564,161,2645,0,291,2693,2694,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14565,161,2694,0,292,2645,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14566,161,2665,0,293,2694,2695,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14567,161,2695,0,294,2665,2671,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14568,161,2671,0,295,2695,2656,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14569,161,2656,0,296,2671,2696,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14570,161,2696,0,297,2656,2697,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14571,161,2697,0,298,2696,2694,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14572,161,2694,0,299,2697,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14573,161,2649,0,300,2694,2698,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14574,161,2698,0,301,2649,2699,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14575,161,2699,0,302,2698,2700,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14576,161,2700,0,303,2699,2691,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14577,161,2691,0,304,2700,2701,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14578,161,2701,0,305,2691,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14579,161,2649,0,306,2701,2681,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14580,161,2681,0,307,2649,2702,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14581,161,2702,0,308,2681,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14582,161,2669,0,309,2702,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14583,161,2665,0,310,2669,2653,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14584,161,2653,0,311,2665,2662,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14585,161,2662,0,312,2653,2703,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14586,161,2703,0,313,2662,2704,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14587,161,2704,0,314,2703,2705,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14588,161,2705,0,315,2704,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14589,161,2669,0,316,2705,2706,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14590,161,2706,0,317,2669,2707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14591,161,2707,0,318,2706,2708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14592,161,2708,0,319,2707,2709,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14593,161,2709,0,320,2708,2649,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14594,161,2649,0,321,2709,2710,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14595,161,2710,0,322,2649,2711,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14596,161,2711,0,323,2710,2712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14597,161,2712,0,324,2711,2654,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14598,161,2654,0,325,2712,2665,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14599,161,2665,0,326,2654,2713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14600,161,2713,0,327,2665,2714,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14601,161,2714,0,328,2713,2715,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14602,161,2715,0,329,2714,2716,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14603,161,2716,0,330,2715,2717,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14604,161,2717,0,331,2716,2657,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14605,161,2657,0,332,2717,2678,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14606,161,2678,0,333,2657,2691,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14607,161,2691,0,334,2678,2669,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14608,161,2669,0,335,2691,0,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14609,240,2718,0,0,0,2718,1,1068719643,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14610,240,2718,0,1,2718,0,1,1068719643,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14611,241,2719,0,0,0,2720,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14612,241,2720,0,1,2719,2599,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14613,241,2599,0,2,2720,2635,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14614,241,2635,0,3,2599,2721,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14615,241,2721,0,4,2635,2620,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14616,241,2620,0,5,2721,2722,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14617,241,2722,0,6,2620,2723,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14618,241,2723,0,7,2722,2719,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14619,241,2719,0,8,2723,2720,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14620,241,2720,0,9,2719,2599,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14621,241,2599,0,10,2720,2635,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14622,241,2635,0,11,2599,2721,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14623,241,2721,0,12,2635,2620,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14624,241,2620,0,13,2721,2722,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14625,241,2722,0,14,2620,2723,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14626,241,2723,0,15,2722,0,25,1068720802,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14627,289,2605,0,0,0,2724,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14628,289,2724,0,1,2605,2599,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14629,289,2599,0,2,2724,2635,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14630,289,2635,0,3,2599,2721,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14631,289,2721,0,4,2635,2605,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14632,289,2605,0,5,2721,2724,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14633,289,2724,0,6,2605,2599,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14634,289,2599,0,7,2724,2635,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14635,289,2635,0,8,2599,2721,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14636,289,2721,0,9,2635,0,25,1069684665,1,207,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14637,248,2725,0,0,0,2725,1,1069070990,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14638,248,2725,0,1,2725,0,1,1069070990,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14639,255,2726,0,0,0,2726,1,1069145298,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14640,255,2726,0,1,2726,0,1,1069145298,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14641,254,2727,0,0,0,2728,2,1069077452,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14642,254,2728,0,1,2727,2727,2,1069077452,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14643,254,2727,0,2,2728,2728,2,1069077452,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14644,254,2728,0,3,2727,2618,2,1069077452,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14645,254,2618,0,4,2728,2635,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14646,254,2635,0,5,2618,2729,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14647,254,2729,0,6,2635,2633,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14648,254,2633,0,7,2729,2635,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14649,254,2635,0,8,2633,2730,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14650,254,2730,0,9,2635,2608,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14651,254,2608,0,10,2730,2731,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14652,254,2731,0,11,2608,2610,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14653,254,2610,0,12,2731,2633,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14654,254,2633,0,13,2610,2720,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14655,254,2720,0,14,2633,2732,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14656,254,2732,0,15,2720,2733,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14657,254,2733,0,16,2732,2734,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14658,254,2734,0,17,2733,2735,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14659,254,2735,0,18,2734,2736,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14660,254,2736,0,19,2735,2737,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14661,254,2737,0,20,2736,2605,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14662,254,2605,0,21,2737,2738,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14663,254,2738,0,22,2605,2597,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14664,254,2597,0,23,2738,2733,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14665,254,2733,0,24,2597,2739,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14666,254,2739,0,25,2733,2618,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14667,254,2618,0,26,2739,2635,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14668,254,2635,0,27,2618,2729,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14669,254,2729,0,28,2635,2633,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14670,254,2633,0,29,2729,2635,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14671,254,2635,0,30,2633,2730,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14672,254,2730,0,31,2635,2608,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14673,254,2608,0,32,2730,2731,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14674,254,2731,0,33,2608,2610,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14675,254,2610,0,34,2731,2633,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14676,254,2633,0,35,2610,2720,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14677,254,2720,0,36,2633,2732,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14678,254,2732,0,37,2720,2733,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14679,254,2733,0,38,2732,2734,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14680,254,2734,0,39,2733,2735,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14681,254,2735,0,40,2734,2736,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14682,254,2736,0,41,2735,2737,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14683,254,2737,0,42,2736,2605,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14684,254,2605,0,43,2737,2738,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14685,254,2738,0,44,2605,2597,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14686,254,2597,0,45,2738,2733,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14687,254,2733,0,46,2597,2739,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14688,254,2739,0,47,2733,2618,2,1069077452,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14689,254,2618,0,48,2739,2635,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14690,254,2635,0,49,2618,2729,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14691,254,2729,0,50,2635,2633,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14692,254,2633,0,51,2729,2635,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14693,254,2635,0,52,2633,2730,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14694,254,2730,0,53,2635,2608,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14695,254,2608,0,54,2730,2731,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14696,254,2731,0,55,2608,2610,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14697,254,2610,0,56,2731,2633,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14698,254,2633,0,57,2610,2720,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14699,254,2720,0,58,2633,2732,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14700,254,2732,0,59,2720,2733,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14701,254,2733,0,60,2732,2734,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14702,254,2734,0,61,2733,2735,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14703,254,2735,0,62,2734,2736,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14704,254,2736,0,63,2735,2737,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14705,254,2737,0,64,2736,2605,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14706,254,2605,0,65,2737,2738,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14707,254,2738,0,66,2605,2597,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14708,254,2597,0,67,2738,2733,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14709,254,2733,0,68,2597,2739,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14710,254,2739,0,69,2733,2610,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14711,254,2610,0,70,2739,2599,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14712,254,2599,0,71,2610,2740,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14713,254,2740,0,72,2599,2696,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14714,254,2696,0,73,2740,2741,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14715,254,2741,0,74,2696,2601,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14716,254,2601,0,75,2741,2742,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14717,254,2742,0,76,2601,2628,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14718,254,2628,0,77,2742,2743,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14719,254,2743,0,78,2628,2744,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14720,254,2744,0,79,2743,2599,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14721,254,2599,0,80,2744,2745,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14722,254,2745,0,81,2599,2746,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14723,254,2746,0,82,2745,2747,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14724,254,2747,0,83,2746,2610,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14725,254,2610,0,84,2747,2618,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14726,254,2618,0,85,2610,2635,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14727,254,2635,0,86,2618,2729,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14728,254,2729,0,87,2635,2633,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14729,254,2633,0,88,2729,2635,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14730,254,2635,0,89,2633,2730,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14731,254,2730,0,90,2635,2608,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14732,254,2608,0,91,2730,2731,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14733,254,2731,0,92,2608,2610,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14734,254,2610,0,93,2731,2633,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14735,254,2633,0,94,2610,2720,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14736,254,2720,0,95,2633,2732,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14737,254,2732,0,96,2720,2733,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14738,254,2733,0,97,2732,2734,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14739,254,2734,0,98,2733,2735,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14740,254,2735,0,99,2734,2736,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14741,254,2736,0,100,2735,2737,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14742,254,2737,0,101,2736,2605,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14743,254,2605,0,102,2737,2738,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14744,254,2738,0,103,2605,2597,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14745,254,2597,0,104,2738,2733,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14746,254,2733,0,105,2597,2739,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14747,254,2739,0,106,2733,2610,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14748,254,2610,0,107,2739,2599,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14749,254,2599,0,108,2610,2740,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14750,254,2740,0,109,2599,2696,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14751,254,2696,0,110,2740,2741,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14752,254,2741,0,111,2696,2601,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14753,254,2601,0,112,2741,2742,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14754,254,2742,0,113,2601,2628,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14755,254,2628,0,114,2742,2743,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14756,254,2743,0,115,2628,2744,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14757,254,2744,0,116,2743,2599,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14758,254,2599,0,117,2744,2745,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14759,254,2745,0,118,2599,2746,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14760,254,2746,0,119,2745,2747,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14761,254,2747,0,120,2746,2610,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14762,254,2610,0,121,2747,2748,2,1069077452,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14763,254,2748,0,122,2610,2748,2,1069077452,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (14764,254,2748,0,123,2748,0,2,1069077452,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (14765,281,2749,0,0,0,2750,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14766,281,2750,0,1,2749,2620,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14767,281,2620,0,2,2750,2751,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14768,281,2751,0,3,2620,2749,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14769,281,2749,0,4,2751,2750,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14770,281,2750,0,5,2749,2620,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14771,281,2620,0,6,2750,2751,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14772,281,2751,0,7,2620,2752,2,1069681297,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14773,281,2752,0,8,2751,2751,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14774,281,2751,0,9,2752,2753,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14775,281,2753,0,10,2751,2754,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14776,281,2754,0,11,2753,2755,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14777,281,2755,0,12,2754,2756,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14778,281,2756,0,13,2755,2757,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14779,281,2757,0,14,2756,2758,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14780,281,2758,0,15,2757,2759,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14781,281,2759,0,16,2758,2760,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14782,281,2760,0,17,2759,2761,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14783,281,2761,0,18,2760,2626,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14784,281,2626,0,19,2761,2610,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14785,281,2610,0,20,2626,2618,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14786,281,2618,0,21,2610,2762,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14787,281,2762,0,22,2618,2763,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14788,281,2763,0,23,2762,2764,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14789,281,2764,0,24,2763,2637,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14790,281,2637,0,25,2764,2638,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14791,281,2638,0,26,2637,2602,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14792,281,2602,0,27,2638,2601,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14793,281,2601,0,28,2602,2604,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14794,281,2604,0,29,2601,2765,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14795,281,2765,0,30,2604,2766,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14796,281,2766,0,31,2765,2752,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14797,281,2752,0,32,2766,2751,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14798,281,2751,0,33,2752,2753,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14799,281,2753,0,34,2751,2754,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14800,281,2754,0,35,2753,2755,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14801,281,2755,0,36,2754,2756,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14802,281,2756,0,37,2755,2757,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14803,281,2757,0,38,2756,2758,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14804,281,2758,0,39,2757,2759,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14805,281,2759,0,40,2758,2760,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14806,281,2760,0,41,2759,2761,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14807,281,2761,0,42,2760,2626,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14808,281,2626,0,43,2761,2610,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14809,281,2610,0,44,2626,2618,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14810,281,2618,0,45,2610,2762,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14811,281,2762,0,46,2618,2763,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14812,281,2763,0,47,2762,2764,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14813,281,2764,0,48,2763,2637,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14814,281,2637,0,49,2764,2638,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14815,281,2638,0,50,2637,2602,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14816,281,2602,0,51,2638,2601,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14817,281,2601,0,52,2602,2604,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14818,281,2604,0,53,2601,2765,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14819,281,2765,0,54,2604,2766,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14820,281,2766,0,55,2765,2637,2,1069681297,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14821,281,2637,0,56,2766,2742,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14822,281,2742,0,57,2637,2767,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14823,281,2767,0,58,2742,2763,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14824,281,2763,0,59,2767,2764,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14825,281,2764,0,60,2763,2752,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14826,281,2752,0,61,2764,2751,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14827,281,2751,0,62,2752,2764,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14828,281,2764,0,63,2751,2745,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14829,281,2745,0,64,2764,2768,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14830,281,2768,0,65,2745,2769,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14831,281,2769,0,66,2768,2770,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14832,281,2770,0,67,2769,2608,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14833,281,2608,0,68,2770,2771,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14834,281,2771,0,69,2608,2742,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14835,281,2742,0,70,2771,2772,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14836,281,2772,0,71,2742,2773,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14837,281,2773,0,72,2772,2774,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14838,281,2774,0,73,2773,2608,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14839,281,2608,0,74,2774,2774,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14840,281,2774,0,75,2608,2775,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14841,281,2775,0,76,2774,2744,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14842,281,2744,0,77,2775,2597,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14843,281,2597,0,78,2744,2638,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14844,281,2638,0,79,2597,2776,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14845,281,2776,0,80,2638,2635,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14846,281,2635,0,81,2776,2721,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14847,281,2721,0,82,2635,2758,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14848,281,2758,0,83,2721,2777,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14849,281,2777,0,84,2758,2761,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14850,281,2761,0,85,2777,2778,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14851,281,2778,0,86,2761,2779,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14852,281,2779,0,87,2778,2742,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14853,281,2742,0,88,2779,2637,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14854,281,2637,0,89,2742,2780,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14855,281,2780,0,90,2637,2597,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14856,281,2597,0,91,2780,2781,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14857,281,2781,0,92,2597,2752,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14858,281,2752,0,93,2781,2751,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14859,281,2751,0,94,2752,2782,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14860,281,2782,0,95,2751,2783,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14861,281,2783,0,96,2782,2784,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14862,281,2784,0,97,2783,2628,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14863,281,2628,0,98,2784,2785,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14864,281,2785,0,99,2628,2637,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14865,281,2637,0,100,2785,2742,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14866,281,2742,0,101,2637,2767,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14867,281,2767,0,102,2742,2763,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14868,281,2763,0,103,2767,2764,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14869,281,2764,0,104,2763,2752,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14870,281,2752,0,105,2764,2751,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14871,281,2751,0,106,2752,2764,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14872,281,2764,0,107,2751,2745,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14873,281,2745,0,108,2764,2768,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14874,281,2768,0,109,2745,2769,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14875,281,2769,0,110,2768,2770,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14876,281,2770,0,111,2769,2608,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14877,281,2608,0,112,2770,2771,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14878,281,2771,0,113,2608,2742,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14879,281,2742,0,114,2771,2772,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14880,281,2772,0,115,2742,2773,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14881,281,2773,0,116,2772,2774,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14882,281,2774,0,117,2773,2608,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14883,281,2608,0,118,2774,2774,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14884,281,2774,0,119,2608,2775,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14885,281,2775,0,120,2774,2744,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14886,281,2744,0,121,2775,2597,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14887,281,2597,0,122,2744,2638,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14888,281,2638,0,123,2597,2776,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14889,281,2776,0,124,2638,2635,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14890,281,2635,0,125,2776,2721,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14891,281,2721,0,126,2635,2758,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14892,281,2758,0,127,2721,2777,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14893,281,2777,0,128,2758,2761,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14894,281,2761,0,129,2777,2778,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14895,281,2778,0,130,2761,2779,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14896,281,2779,0,131,2778,2742,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14897,281,2742,0,132,2779,2637,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14898,281,2637,0,133,2742,2780,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14899,281,2780,0,134,2637,2597,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14900,281,2597,0,135,2780,2781,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14901,281,2781,0,136,2597,2752,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14902,281,2752,0,137,2781,2751,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14903,281,2751,0,138,2752,2782,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14904,281,2782,0,139,2751,2783,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14905,281,2783,0,140,2782,2784,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14906,281,2784,0,141,2783,2628,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14907,281,2628,0,142,2784,2785,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14908,281,2785,0,143,2628,2748,2,1069681297,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14909,281,2748,0,144,2785,2748,2,1069681297,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (14910,281,2748,0,145,2748,0,2,1069681297,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (14911,290,2784,0,0,0,2786,2,1069685704,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14912,290,2786,0,1,2784,2787,2,1069685704,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14913,290,2787,0,2,2786,2784,2,1069685704,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14914,290,2784,0,3,2787,2786,2,1069685704,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14915,290,2786,0,4,2784,2787,2,1069685704,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14916,290,2787,0,5,2786,2788,2,1069685704,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14917,290,2788,0,6,2787,2789,2,1069685704,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14918,290,2789,0,7,2788,2788,2,1069685704,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14919,290,2788,0,8,2789,2789,2,1069685704,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14920,290,2789,0,9,2788,2597,2,1069685704,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14921,290,2597,0,10,2789,2790,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14922,290,2790,0,11,2597,2791,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14923,290,2791,0,12,2790,2792,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14924,290,2792,0,13,2791,2620,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14925,290,2620,0,14,2792,2635,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14926,290,2635,0,15,2620,2793,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14927,290,2793,0,16,2635,2794,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14928,290,2794,0,17,2793,2795,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14929,290,2795,0,18,2794,2796,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14930,290,2796,0,19,2795,2797,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14931,290,2797,0,20,2796,2798,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14932,290,2798,0,21,2797,2696,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14933,290,2696,0,22,2798,2799,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14934,290,2799,0,23,2696,2800,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14935,290,2800,0,24,2799,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14936,290,2787,0,25,2800,2801,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14937,290,2801,0,26,2787,2786,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14938,290,2786,0,27,2801,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14939,290,2787,0,28,2786,2802,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14940,290,2802,0,29,2787,2599,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14941,290,2599,0,30,2802,2803,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14942,290,2803,0,31,2599,2804,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14943,290,2804,0,32,2803,2805,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14944,290,2805,0,33,2804,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14945,290,2787,0,34,2805,2764,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14946,290,2764,0,35,2787,2616,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14947,290,2616,0,36,2764,2726,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14948,290,2726,0,37,2616,2608,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14949,290,2608,0,38,2726,2806,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14950,290,2806,0,39,2608,2635,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14951,290,2635,0,40,2806,2805,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14952,290,2805,0,41,2635,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14953,290,2787,0,42,2805,2599,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14954,290,2599,0,43,2787,2807,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14955,290,2807,0,44,2599,2764,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14956,290,2764,0,45,2807,2635,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14957,290,2635,0,46,2764,2808,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14958,290,2808,0,47,2635,2809,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14959,290,2809,0,48,2808,2597,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14960,290,2597,0,49,2809,2790,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14961,290,2790,0,50,2597,2791,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14962,290,2791,0,51,2790,2792,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14963,290,2792,0,52,2791,2620,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14964,290,2620,0,53,2792,2635,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14965,290,2635,0,54,2620,2793,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14966,290,2793,0,55,2635,2794,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14967,290,2794,0,56,2793,2795,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14968,290,2795,0,57,2794,2796,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14969,290,2796,0,58,2795,2797,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14970,290,2797,0,59,2796,2798,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14971,290,2798,0,60,2797,2696,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14972,290,2696,0,61,2798,2799,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14973,290,2799,0,62,2696,2800,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14974,290,2800,0,63,2799,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14975,290,2787,0,64,2800,2801,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14976,290,2801,0,65,2787,2786,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14977,290,2786,0,66,2801,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14978,290,2787,0,67,2786,2802,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14979,290,2802,0,68,2787,2599,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14980,290,2599,0,69,2802,2803,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14981,290,2803,0,70,2599,2804,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14982,290,2804,0,71,2803,2805,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14983,290,2805,0,72,2804,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14984,290,2787,0,73,2805,2764,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14985,290,2764,0,74,2787,2616,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14986,290,2616,0,75,2764,2726,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14987,290,2726,0,76,2616,2608,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14988,290,2608,0,77,2726,2806,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14989,290,2806,0,78,2608,2635,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14990,290,2635,0,79,2806,2805,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14991,290,2805,0,80,2635,2787,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14992,290,2787,0,81,2805,2599,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14993,290,2599,0,82,2787,2807,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14994,290,2807,0,83,2599,2764,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14995,290,2764,0,84,2807,2635,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14996,290,2635,0,85,2764,2808,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14997,290,2808,0,86,2635,2809,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14998,290,2809,0,87,2808,2810,2,1069685704,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14999,290,2810,0,88,2809,2793,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15000,290,2793,0,89,2810,2792,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15001,290,2792,0,90,2793,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15002,290,2794,0,91,2792,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15003,290,2633,0,92,2794,2607,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15004,290,2607,0,93,2633,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15005,290,2797,0,94,2607,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15006,290,2635,0,95,2797,2811,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15007,290,2811,0,96,2635,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15008,290,2628,0,97,2811,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15009,290,2635,0,98,2628,2812,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15010,290,2812,0,99,2635,2795,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15011,290,2795,0,100,2812,2796,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15012,290,2796,0,101,2795,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15013,290,2797,0,102,2796,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15014,290,2635,0,103,2797,2798,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15015,290,2798,0,104,2635,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15016,290,2635,0,105,2798,2813,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15017,290,2813,0,106,2635,2814,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15018,290,2814,0,107,2813,2815,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15019,290,2815,0,108,2814,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15020,290,2696,0,109,2815,2796,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15021,290,2796,0,110,2696,2816,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15022,290,2816,0,111,2796,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15023,290,2797,0,112,2816,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15024,290,2635,0,113,2797,2787,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15025,290,2787,0,114,2635,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15026,290,2817,0,115,2787,2818,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15027,290,2818,0,116,2817,2819,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15028,290,2819,0,117,2818,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15029,290,2794,0,118,2819,2820,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15030,290,2820,0,119,2794,2821,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15031,290,2821,0,120,2820,2822,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15032,290,2822,0,121,2821,2618,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15033,290,2618,0,122,2822,2823,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15034,290,2823,0,123,2618,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15035,290,2637,0,124,2823,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15036,290,2742,0,125,2637,2824,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15037,290,2824,0,126,2742,2767,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15038,290,2767,0,127,2824,2825,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15039,290,2825,0,128,2767,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15040,290,2696,0,129,2825,2826,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15041,290,2826,0,130,2696,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15042,290,2608,0,131,2826,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15043,290,2696,0,132,2608,2827,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15044,290,2827,0,133,2696,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15045,290,2620,0,134,2827,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15046,290,2603,0,135,2620,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15047,290,2742,0,136,2603,2828,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15048,290,2828,0,137,2742,2773,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15049,290,2773,0,138,2828,2829,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15050,290,2829,0,139,2773,2610,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15051,290,2610,0,140,2829,2830,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15052,290,2830,0,141,2610,2744,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15053,290,2744,0,142,2830,2611,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15054,290,2611,0,143,2744,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15055,290,2794,0,144,2611,2831,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15056,290,2831,0,145,2794,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15057,290,2603,0,146,2831,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15058,290,2832,0,147,2603,2829,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15059,290,2829,0,148,2832,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15060,290,2742,0,149,2829,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15061,290,2791,0,150,2742,2833,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15062,290,2833,0,151,2791,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15063,290,2620,0,152,2833,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15064,290,2817,0,153,2620,2834,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15065,290,2834,0,154,2817,2835,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15066,290,2835,0,155,2834,2719,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15067,290,2719,0,156,2835,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15068,290,2599,0,157,2719,2803,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15069,290,2803,0,158,2599,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15070,290,2836,0,159,2803,2837,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15071,290,2837,0,160,2836,2729,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15072,290,2729,0,161,2837,2838,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15073,290,2838,0,162,2729,2839,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15074,290,2839,0,163,2838,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15075,290,2608,0,164,2839,2840,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15076,290,2840,0,165,2608,2841,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15077,290,2841,0,166,2840,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15078,290,2635,0,167,2841,2842,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15079,290,2842,0,168,2635,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15080,290,2794,0,169,2842,2843,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15081,290,2843,0,170,2794,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15082,290,2797,0,171,2843,2844,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15083,290,2844,0,172,2797,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15084,290,2608,0,173,2844,2845,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15085,290,2845,0,174,2608,2831,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15086,290,2831,0,175,2845,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15087,290,2620,0,176,2831,2846,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15088,290,2846,0,177,2620,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15089,290,2794,0,178,2846,2847,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15090,290,2847,0,179,2794,2848,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15091,290,2848,0,180,2847,2849,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15092,290,2849,0,181,2848,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15093,290,2608,0,182,2849,2850,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15094,290,2850,0,183,2608,2851,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15095,290,2851,0,184,2850,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15096,290,2608,0,185,2851,2852,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15097,290,2852,0,186,2608,2853,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15098,290,2853,0,187,2852,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15099,290,2635,0,188,2853,2854,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15100,290,2854,0,189,2635,2855,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15101,290,2855,0,190,2854,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15102,290,2620,0,191,2855,2856,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15103,290,2856,0,192,2620,2857,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15104,290,2857,0,193,2856,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15105,290,2791,0,194,2857,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15106,290,2603,0,195,2791,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15107,290,2794,0,196,2603,2858,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15108,290,2858,0,197,2794,2859,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15109,290,2859,0,198,2858,2860,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15110,290,2860,0,199,2859,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15111,290,2836,0,200,2860,2837,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15112,290,2837,0,201,2836,2758,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15113,290,2758,0,202,2837,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15114,290,2608,0,203,2758,2861,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15115,290,2861,0,204,2608,2862,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15116,290,2862,0,205,2861,2863,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15117,290,2863,0,206,2862,2771,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15118,290,2771,0,207,2863,2864,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15119,290,2864,0,208,2771,2865,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15120,290,2865,0,209,2864,2866,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15121,290,2866,0,210,2865,2867,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15122,290,2867,0,211,2866,2771,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15123,290,2771,0,212,2867,2868,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15124,290,2868,0,213,2771,2740,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15125,290,2740,0,214,2868,2778,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15126,290,2778,0,215,2740,2869,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15127,290,2869,0,216,2778,2803,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15128,290,2803,0,217,2869,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15129,290,2836,0,218,2803,2837,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15130,290,2837,0,219,2836,2835,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15131,290,2835,0,220,2837,2612,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15132,290,2612,0,221,2835,2776,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15133,290,2776,0,222,2612,2870,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15134,290,2870,0,223,2776,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15135,290,2628,0,224,2870,2871,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15136,290,2871,0,225,2628,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15137,290,2635,0,226,2871,2872,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15138,290,2872,0,227,2635,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15139,290,2620,0,228,2872,2873,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15140,290,2873,0,229,2620,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15141,290,2696,0,230,2873,2874,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15142,290,2874,0,231,2696,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15143,290,2608,0,232,2874,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15144,290,2836,0,233,2608,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15145,290,2875,0,234,2836,2860,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15146,290,2860,0,235,2875,2876,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15147,290,2876,0,236,2860,2877,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15148,290,2877,0,237,2876,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15149,290,2832,0,238,2877,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15150,290,2794,0,239,2832,2878,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15151,290,2878,0,240,2794,2879,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15152,290,2879,0,241,2878,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15153,290,2628,0,242,2879,2880,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15154,290,2880,0,243,2628,2881,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15155,290,2881,0,244,2880,2882,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15156,290,2882,0,245,2881,2883,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15157,290,2883,0,246,2882,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15158,290,2620,0,247,2883,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15159,290,2875,0,248,2620,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15160,290,2637,0,249,2875,2884,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15161,290,2884,0,250,2637,2885,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15162,290,2885,0,251,2884,2744,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15163,290,2744,0,252,2885,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15164,290,2635,0,253,2744,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15165,290,2875,0,254,2635,2886,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15166,290,2886,0,255,2875,2887,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15167,290,2887,0,256,2886,2610,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15168,290,2610,0,257,2887,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15169,290,2599,0,258,2610,2888,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15170,290,2888,0,259,2599,2889,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15171,290,2889,0,260,2888,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15172,290,2608,0,261,2889,2890,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15173,290,2890,0,262,2608,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15174,290,2628,0,263,2890,2891,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15175,290,2891,0,264,2628,2892,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15176,290,2892,0,265,2891,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15177,290,2628,0,266,2892,2892,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15178,290,2892,0,267,2628,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15179,290,2608,0,268,2892,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15180,290,2628,0,269,2608,2893,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15181,290,2893,0,270,2628,2848,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15182,290,2848,0,271,2893,2894,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15183,290,2894,0,272,2848,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15184,290,2637,0,273,2894,2895,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15185,290,2895,0,274,2637,2896,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15186,290,2896,0,275,2895,2744,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15187,290,2744,0,276,2896,2745,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15188,290,2745,0,277,2744,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15189,290,2875,0,278,2745,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15190,290,2603,0,279,2875,2638,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15191,290,2638,0,280,2603,2886,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15192,290,2886,0,281,2638,2887,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15193,290,2887,0,282,2886,2897,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15194,290,2897,0,283,2887,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15195,290,2635,0,284,2897,2898,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15196,290,2898,0,285,2635,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15197,290,2620,0,286,2898,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15198,290,2635,0,287,2620,2790,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15199,290,2790,0,288,2635,2899,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15200,290,2899,0,289,2790,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15201,290,2637,0,290,2899,2900,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15202,290,2900,0,291,2637,2901,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15203,290,2901,0,292,2900,2596,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15204,290,2596,0,293,2901,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15205,290,2635,0,294,2596,2872,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15206,290,2872,0,295,2635,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15207,290,2620,0,296,2872,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15208,290,2836,0,297,2620,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15209,290,2608,0,298,2836,2902,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15210,290,2902,0,299,2608,2758,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15211,290,2758,0,300,2902,2903,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15212,290,2903,0,301,2758,2904,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15213,290,2904,0,302,2903,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15214,290,2791,0,303,2904,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15215,290,2603,0,304,2791,2858,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15216,290,2858,0,305,2603,2905,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15217,290,2905,0,306,2858,2906,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15218,290,2906,0,307,2905,2907,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15219,290,2907,0,308,2906,2610,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15220,290,2610,0,309,2907,2863,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15221,290,2863,0,310,2610,2867,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15222,290,2867,0,311,2863,2908,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15223,290,2908,0,312,2867,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15224,290,2637,0,313,2908,2884,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15225,290,2884,0,314,2637,2909,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15226,290,2909,0,315,2884,2910,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15227,290,2910,0,316,2909,2911,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15228,290,2911,0,317,2910,2912,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15229,290,2912,0,318,2911,2903,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15230,290,2903,0,319,2912,2913,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15231,290,2913,0,320,2903,2914,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15232,290,2914,0,321,2913,2915,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15233,290,2915,0,322,2914,2916,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15234,290,2916,0,323,2915,2917,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15235,290,2917,0,324,2916,2918,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15236,290,2918,0,325,2917,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15237,290,2742,0,326,2918,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15238,290,2628,0,327,2742,2919,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15239,290,2919,0,328,2628,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15240,290,2696,0,329,2919,2827,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15241,290,2827,0,330,2696,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15242,290,2620,0,331,2827,2920,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15243,290,2920,0,332,2620,2764,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15244,290,2764,0,333,2920,2597,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15245,290,2597,0,334,2764,2921,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15246,290,2921,0,335,2597,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15247,290,2797,0,336,2921,2922,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15248,290,2922,0,337,2797,2914,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15249,290,2914,0,338,2922,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15250,290,2797,0,339,2914,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15251,290,2696,0,340,2797,2923,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15252,290,2923,0,341,2696,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15253,290,2832,0,342,2923,2924,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15254,290,2924,0,343,2832,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15255,290,2628,0,344,2924,2773,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15256,290,2773,0,345,2628,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15257,290,2797,0,346,2773,2720,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15258,290,2720,0,347,2797,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15259,290,2620,0,348,2720,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15260,290,2635,0,349,2620,2925,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15261,290,2925,0,350,2635,2926,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15262,290,2926,0,351,2925,2765,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15263,290,2765,0,352,2926,2927,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15264,290,2927,0,353,2765,2928,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15265,290,2928,0,354,2927,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15266,290,2696,0,355,2928,2929,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15267,290,2929,0,356,2696,2611,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15268,290,2611,0,357,2929,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15269,290,2791,0,358,2611,2850,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15270,290,2850,0,359,2791,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15271,290,2794,0,360,2850,2740,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15272,290,2740,0,361,2794,2930,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15273,290,2930,0,362,2740,2634,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15274,290,2634,0,363,2930,2901,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15275,290,2901,0,364,2634,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15276,290,2628,0,365,2901,2931,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15277,290,2931,0,366,2628,2932,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15278,290,2932,0,367,2931,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15279,290,2832,0,368,2932,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15280,290,2794,0,369,2832,2933,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15281,290,2933,0,370,2794,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15282,290,2628,0,371,2933,2934,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15283,290,2934,0,372,2628,2935,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15284,290,2935,0,373,2934,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15285,290,2633,0,374,2935,2936,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15286,290,2936,0,375,2633,2937,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15287,290,2937,0,376,2936,2597,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15288,290,2597,0,377,2937,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15289,290,2599,0,378,2597,2870,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15290,290,2870,0,379,2599,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15291,290,2817,0,380,2870,2938,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15292,290,2938,0,381,2817,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15293,290,2637,0,382,2938,2884,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15294,290,2884,0,383,2637,2820,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15295,290,2820,0,384,2884,2939,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15296,290,2939,0,385,2820,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15297,290,2608,0,386,2939,2940,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15298,290,2940,0,387,2608,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15299,290,2628,0,388,2940,2941,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15300,290,2941,0,389,2628,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15301,290,2628,0,390,2941,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15302,290,2696,0,391,2628,2942,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15303,290,2942,0,392,2696,2943,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15304,290,2943,0,393,2942,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15305,290,2620,0,394,2943,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15306,290,2603,0,395,2620,2738,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15307,290,2738,0,396,2603,2601,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15308,290,2601,0,397,2738,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15309,290,2742,0,398,2601,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15310,290,2635,0,399,2742,2944,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15311,290,2944,0,400,2635,2945,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15312,290,2945,0,401,2944,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15313,290,2635,0,402,2945,2787,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15314,290,2787,0,403,2635,2946,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15315,290,2946,0,404,2787,2902,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15316,290,2902,0,405,2946,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15317,290,2628,0,406,2902,2947,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15318,290,2947,0,407,2628,2910,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15319,290,2910,0,408,2947,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15320,290,2817,0,409,2910,2948,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15321,290,2948,0,410,2817,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15322,290,2599,0,411,2948,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15323,290,2836,0,412,2599,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15324,290,2608,0,413,2836,2949,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15325,290,2949,0,414,2608,2764,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15326,290,2764,0,415,2949,2950,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15327,290,2950,0,416,2764,2951,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15328,290,2951,0,417,2950,2612,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15329,290,2612,0,418,2951,2952,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15330,290,2952,0,419,2612,2953,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15331,290,2953,0,420,2952,2879,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15332,290,2879,0,421,2953,2860,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15333,290,2860,0,422,2879,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15334,290,2817,0,423,2860,2954,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15335,290,2954,0,424,2817,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15336,290,2608,0,425,2954,2955,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15337,290,2955,0,426,2608,2803,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15338,290,2803,0,427,2955,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15339,290,2633,0,428,2803,2607,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15340,290,2607,0,429,2633,2956,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15341,290,2956,0,430,2607,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15342,290,2633,0,431,2956,2957,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15343,290,2957,0,432,2633,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15344,290,2620,0,433,2957,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15345,290,2635,0,434,2620,2839,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15346,290,2839,0,435,2635,2810,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15347,290,2810,0,436,2839,2793,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15348,290,2793,0,437,2810,2792,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15349,290,2792,0,438,2793,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15350,290,2794,0,439,2792,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15351,290,2633,0,440,2794,2607,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15352,290,2607,0,441,2633,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15353,290,2797,0,442,2607,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15354,290,2635,0,443,2797,2811,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15355,290,2811,0,444,2635,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15356,290,2628,0,445,2811,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15357,290,2635,0,446,2628,2812,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15358,290,2812,0,447,2635,2795,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15359,290,2795,0,448,2812,2796,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15360,290,2796,0,449,2795,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15361,290,2797,0,450,2796,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15362,290,2635,0,451,2797,2798,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15363,290,2798,0,452,2635,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15364,290,2635,0,453,2798,2813,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15365,290,2813,0,454,2635,2814,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15366,290,2814,0,455,2813,2815,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15367,290,2815,0,456,2814,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15368,290,2696,0,457,2815,2796,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15369,290,2796,0,458,2696,2816,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15370,290,2816,0,459,2796,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15371,290,2797,0,460,2816,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15372,290,2635,0,461,2797,2787,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15373,290,2787,0,462,2635,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15374,290,2817,0,463,2787,2818,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15375,290,2818,0,464,2817,2819,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15376,290,2819,0,465,2818,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15377,290,2794,0,466,2819,2820,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15378,290,2820,0,467,2794,2821,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15379,290,2821,0,468,2820,2822,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15380,290,2822,0,469,2821,2618,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15381,290,2618,0,470,2822,2823,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15382,290,2823,0,471,2618,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15383,290,2637,0,472,2823,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15384,290,2742,0,473,2637,2824,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15385,290,2824,0,474,2742,2767,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15386,290,2767,0,475,2824,2825,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15387,290,2825,0,476,2767,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15388,290,2696,0,477,2825,2826,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15389,290,2826,0,478,2696,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15390,290,2608,0,479,2826,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15391,290,2696,0,480,2608,2827,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15392,290,2827,0,481,2696,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15393,290,2620,0,482,2827,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15394,290,2603,0,483,2620,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15395,290,2742,0,484,2603,2828,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15396,290,2828,0,485,2742,2773,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15397,290,2773,0,486,2828,2829,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15398,290,2829,0,487,2773,2610,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15399,290,2610,0,488,2829,2830,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15400,290,2830,0,489,2610,2744,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15401,290,2744,0,490,2830,2611,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15402,290,2611,0,491,2744,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15403,290,2794,0,492,2611,2831,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15404,290,2831,0,493,2794,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15405,290,2603,0,494,2831,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15406,290,2832,0,495,2603,2829,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15407,290,2829,0,496,2832,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15408,290,2742,0,497,2829,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15409,290,2791,0,498,2742,2833,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15410,290,2833,0,499,2791,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15411,290,2620,0,500,2833,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15412,290,2817,0,501,2620,2834,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15413,290,2834,0,502,2817,2835,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15414,290,2835,0,503,2834,2719,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15415,290,2719,0,504,2835,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15416,290,2599,0,505,2719,2803,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15417,290,2803,0,506,2599,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15418,290,2836,0,507,2803,2837,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15419,290,2837,0,508,2836,2729,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15420,290,2729,0,509,2837,2838,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15421,290,2838,0,510,2729,2839,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15422,290,2839,0,511,2838,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15423,290,2608,0,512,2839,2840,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15424,290,2840,0,513,2608,2841,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15425,290,2841,0,514,2840,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15426,290,2635,0,515,2841,2842,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15427,290,2842,0,516,2635,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15428,290,2794,0,517,2842,2843,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15429,290,2843,0,518,2794,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15430,290,2797,0,519,2843,2844,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15431,290,2844,0,520,2797,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15432,290,2608,0,521,2844,2845,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15433,290,2845,0,522,2608,2831,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15434,290,2831,0,523,2845,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15435,290,2620,0,524,2831,2846,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15436,290,2846,0,525,2620,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15437,290,2794,0,526,2846,2847,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15438,290,2847,0,527,2794,2848,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15439,290,2848,0,528,2847,2849,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15440,290,2849,0,529,2848,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15441,290,2608,0,530,2849,2850,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15442,290,2850,0,531,2608,2851,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15443,290,2851,0,532,2850,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15444,290,2608,0,533,2851,2852,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15445,290,2852,0,534,2608,2853,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15446,290,2853,0,535,2852,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15447,290,2635,0,536,2853,2854,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15448,290,2854,0,537,2635,2855,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15449,290,2855,0,538,2854,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15450,290,2620,0,539,2855,2856,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15451,290,2856,0,540,2620,2857,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15452,290,2857,0,541,2856,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15453,290,2791,0,542,2857,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15454,290,2603,0,543,2791,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15455,290,2794,0,544,2603,2858,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15456,290,2858,0,545,2794,2859,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15457,290,2859,0,546,2858,2860,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15458,290,2860,0,547,2859,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15459,290,2836,0,548,2860,2837,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15460,290,2837,0,549,2836,2758,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15461,290,2758,0,550,2837,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15462,290,2608,0,551,2758,2861,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15463,290,2861,0,552,2608,2862,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15464,290,2862,0,553,2861,2863,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15465,290,2863,0,554,2862,2771,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15466,290,2771,0,555,2863,2864,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15467,290,2864,0,556,2771,2865,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15468,290,2865,0,557,2864,2866,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15469,290,2866,0,558,2865,2867,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15470,290,2867,0,559,2866,2771,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15471,290,2771,0,560,2867,2868,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15472,290,2868,0,561,2771,2740,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15473,290,2740,0,562,2868,2778,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15474,290,2778,0,563,2740,2869,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15475,290,2869,0,564,2778,2803,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15476,290,2803,0,565,2869,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15477,290,2836,0,566,2803,2837,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15478,290,2837,0,567,2836,2835,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15479,290,2835,0,568,2837,2612,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15480,290,2612,0,569,2835,2776,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15481,290,2776,0,570,2612,2870,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15482,290,2870,0,571,2776,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15483,290,2628,0,572,2870,2871,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15484,290,2871,0,573,2628,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15485,290,2635,0,574,2871,2872,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15486,290,2872,0,575,2635,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15487,290,2620,0,576,2872,2873,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15488,290,2873,0,577,2620,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15489,290,2696,0,578,2873,2874,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15490,290,2874,0,579,2696,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15491,290,2608,0,580,2874,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15492,290,2836,0,581,2608,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15493,290,2875,0,582,2836,2860,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15494,290,2860,0,583,2875,2876,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15495,290,2876,0,584,2860,2877,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15496,290,2877,0,585,2876,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15497,290,2832,0,586,2877,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15498,290,2794,0,587,2832,2878,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15499,290,2878,0,588,2794,2879,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15500,290,2879,0,589,2878,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15501,290,2628,0,590,2879,2880,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15502,290,2880,0,591,2628,2881,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15503,290,2881,0,592,2880,2882,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15504,290,2882,0,593,2881,2883,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15505,290,2883,0,594,2882,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15506,290,2620,0,595,2883,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15507,290,2875,0,596,2620,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15508,290,2637,0,597,2875,2884,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15509,290,2884,0,598,2637,2885,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15510,290,2885,0,599,2884,2744,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15511,290,2744,0,600,2885,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15512,290,2635,0,601,2744,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15513,290,2875,0,602,2635,2886,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15514,290,2886,0,603,2875,2887,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15515,290,2887,0,604,2886,2610,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15516,290,2610,0,605,2887,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15517,290,2599,0,606,2610,2888,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15518,290,2888,0,607,2599,2889,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15519,290,2889,0,608,2888,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15520,290,2608,0,609,2889,2890,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15521,290,2890,0,610,2608,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15522,290,2628,0,611,2890,2891,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15523,290,2891,0,612,2628,2892,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15524,290,2892,0,613,2891,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15525,290,2628,0,614,2892,2892,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15526,290,2892,0,615,2628,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15527,290,2608,0,616,2892,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15528,290,2628,0,617,2608,2893,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15529,290,2893,0,618,2628,2848,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15530,290,2848,0,619,2893,2894,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15531,290,2894,0,620,2848,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15532,290,2637,0,621,2894,2895,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15533,290,2895,0,622,2637,2896,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15534,290,2896,0,623,2895,2744,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15535,290,2744,0,624,2896,2745,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15536,290,2745,0,625,2744,2875,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15537,290,2875,0,626,2745,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15538,290,2603,0,627,2875,2638,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15539,290,2638,0,628,2603,2886,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15540,290,2886,0,629,2638,2887,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15541,290,2887,0,630,2886,2897,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15542,290,2897,0,631,2887,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15543,290,2635,0,632,2897,2898,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15544,290,2898,0,633,2635,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15545,290,2620,0,634,2898,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15546,290,2635,0,635,2620,2790,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15547,290,2790,0,636,2635,2899,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15548,290,2899,0,637,2790,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15549,290,2637,0,638,2899,2900,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15550,290,2900,0,639,2637,2901,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15551,290,2901,0,640,2900,2596,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15552,290,2596,0,641,2901,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15553,290,2635,0,642,2596,2872,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15554,290,2872,0,643,2635,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15555,290,2620,0,644,2872,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15556,290,2836,0,645,2620,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15557,290,2608,0,646,2836,2902,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15558,290,2902,0,647,2608,2758,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15559,290,2758,0,648,2902,2903,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15560,290,2903,0,649,2758,2904,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15561,290,2904,0,650,2903,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15562,290,2791,0,651,2904,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15563,290,2603,0,652,2791,2858,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15564,290,2858,0,653,2603,2905,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15565,290,2905,0,654,2858,2906,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15566,290,2906,0,655,2905,2907,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15567,290,2907,0,656,2906,2610,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15568,290,2610,0,657,2907,2863,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15569,290,2863,0,658,2610,2867,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15570,290,2867,0,659,2863,2908,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15571,290,2908,0,660,2867,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15572,290,2637,0,661,2908,2884,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15573,290,2884,0,662,2637,2909,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15574,290,2909,0,663,2884,2910,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15575,290,2910,0,664,2909,2911,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15576,290,2911,0,665,2910,2912,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15577,290,2912,0,666,2911,2903,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15578,290,2903,0,667,2912,2913,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15579,290,2913,0,668,2903,2914,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15580,290,2914,0,669,2913,2915,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15581,290,2915,0,670,2914,2916,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15582,290,2916,0,671,2915,2917,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15583,290,2917,0,672,2916,2918,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15584,290,2918,0,673,2917,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15585,290,2742,0,674,2918,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15586,290,2628,0,675,2742,2919,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15587,290,2919,0,676,2628,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15588,290,2696,0,677,2919,2827,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15589,290,2827,0,678,2696,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15590,290,2620,0,679,2827,2920,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15591,290,2920,0,680,2620,2764,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15592,290,2764,0,681,2920,2597,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15593,290,2597,0,682,2764,2921,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15594,290,2921,0,683,2597,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15595,290,2797,0,684,2921,2922,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15596,290,2922,0,685,2797,2914,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15597,290,2914,0,686,2922,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15598,290,2797,0,687,2914,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15599,290,2696,0,688,2797,2923,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15600,290,2923,0,689,2696,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15601,290,2832,0,690,2923,2924,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15602,290,2924,0,691,2832,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15603,290,2628,0,692,2924,2773,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15604,290,2773,0,693,2628,2797,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15605,290,2797,0,694,2773,2720,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15606,290,2720,0,695,2797,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15607,290,2620,0,696,2720,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15608,290,2635,0,697,2620,2925,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15609,290,2925,0,698,2635,2926,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15610,290,2926,0,699,2925,2765,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15611,290,2765,0,700,2926,2927,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15612,290,2927,0,701,2765,2928,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15613,290,2928,0,702,2927,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15614,290,2696,0,703,2928,2929,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15615,290,2929,0,704,2696,2611,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15616,290,2611,0,705,2929,2791,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15617,290,2791,0,706,2611,2850,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15618,290,2850,0,707,2791,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15619,290,2794,0,708,2850,2740,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15620,290,2740,0,709,2794,2930,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15621,290,2930,0,710,2740,2634,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15622,290,2634,0,711,2930,2901,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15623,290,2901,0,712,2634,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15624,290,2628,0,713,2901,2931,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15625,290,2931,0,714,2628,2932,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15626,290,2932,0,715,2931,2832,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15627,290,2832,0,716,2932,2794,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15628,290,2794,0,717,2832,2933,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15629,290,2933,0,718,2794,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15630,290,2628,0,719,2933,2934,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15631,290,2934,0,720,2628,2935,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15632,290,2935,0,721,2934,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15633,290,2633,0,722,2935,2936,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15634,290,2936,0,723,2633,2937,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15635,290,2937,0,724,2936,2597,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15636,290,2597,0,725,2937,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15637,290,2599,0,726,2597,2870,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15638,290,2870,0,727,2599,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15639,290,2817,0,728,2870,2938,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15640,290,2938,0,729,2817,2637,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15641,290,2637,0,730,2938,2884,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15642,290,2884,0,731,2637,2820,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15643,290,2820,0,732,2884,2939,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15644,290,2939,0,733,2820,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15645,290,2608,0,734,2939,2940,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15646,290,2940,0,735,2608,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15647,290,2628,0,736,2940,2941,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15648,290,2941,0,737,2628,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15649,290,2628,0,738,2941,2696,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15650,290,2696,0,739,2628,2942,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15651,290,2942,0,740,2696,2943,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15652,290,2943,0,741,2942,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15653,290,2620,0,742,2943,2603,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15654,290,2603,0,743,2620,2738,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15655,290,2738,0,744,2603,2601,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15656,290,2601,0,745,2738,2742,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15657,290,2742,0,746,2601,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15658,290,2635,0,747,2742,2944,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15659,290,2944,0,748,2635,2945,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15660,290,2945,0,749,2944,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15661,290,2635,0,750,2945,2787,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15662,290,2787,0,751,2635,2946,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15663,290,2946,0,752,2787,2902,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15664,290,2902,0,753,2946,2628,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15665,290,2628,0,754,2902,2947,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15666,290,2947,0,755,2628,2910,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15667,290,2910,0,756,2947,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15668,290,2817,0,757,2910,2948,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15669,290,2948,0,758,2817,2599,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15670,290,2599,0,759,2948,2836,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15671,290,2836,0,760,2599,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15672,290,2608,0,761,2836,2949,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15673,290,2949,0,762,2608,2764,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15674,290,2764,0,763,2949,2950,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15675,290,2950,0,764,2764,2951,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15676,290,2951,0,765,2950,2612,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15677,290,2612,0,766,2951,2952,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15678,290,2952,0,767,2612,2953,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15679,290,2953,0,768,2952,2879,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15680,290,2879,0,769,2953,2860,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15681,290,2860,0,770,2879,2817,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15682,290,2817,0,771,2860,2954,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15683,290,2954,0,772,2817,2608,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15684,290,2608,0,773,2954,2955,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15685,290,2955,0,774,2608,2803,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15686,290,2803,0,775,2955,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15687,290,2633,0,776,2803,2607,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15688,290,2607,0,777,2633,2956,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15689,290,2956,0,778,2607,2633,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15690,290,2633,0,779,2956,2957,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15691,290,2957,0,780,2633,2620,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15692,290,2620,0,781,2957,2635,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15693,290,2635,0,782,2620,2839,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15694,290,2839,0,783,2635,2748,2,1069685704,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15695,290,2748,0,784,2839,2748,2,1069685704,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (15696,290,2748,0,785,2748,0,2,1069685704,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (15697,256,2958,0,0,0,2958,1,1069145327,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15698,256,2958,0,1,2958,0,1,1069145327,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15699,249,2959,0,0,0,2725,2,1069071380,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15700,249,2725,0,1,2959,2959,2,1069071380,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15701,249,2959,0,2,2725,2725,2,1069071380,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15702,249,2725,0,3,2959,2960,2,1069071380,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15703,249,2960,0,4,2725,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15704,249,2961,0,5,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15705,249,2962,0,6,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15706,249,2963,0,7,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15707,249,2960,0,8,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15708,249,2961,0,9,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15709,249,2962,0,10,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15710,249,2963,0,11,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15711,249,2960,0,12,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15712,249,2961,0,13,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15713,249,2962,0,14,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15714,249,2963,0,15,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15715,249,2960,0,16,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15716,249,2961,0,17,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15717,249,2962,0,18,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15718,249,2963,0,19,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15719,249,2960,0,20,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15720,249,2961,0,21,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15721,249,2962,0,22,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15722,249,2963,0,23,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15723,249,2960,0,24,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15724,249,2961,0,25,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15725,249,2962,0,26,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15726,249,2963,0,27,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15727,249,2960,0,28,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15728,249,2961,0,29,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15729,249,2962,0,30,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15730,249,2963,0,31,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15731,249,2960,0,32,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15732,249,2961,0,33,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15733,249,2962,0,34,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15734,249,2963,0,35,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15735,249,2960,0,36,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15736,249,2961,0,37,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15737,249,2962,0,38,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15738,249,2963,0,39,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15739,249,2960,0,40,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15740,249,2961,0,41,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15741,249,2962,0,42,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15742,249,2963,0,43,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15743,249,2960,0,44,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15744,249,2961,0,45,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15745,249,2962,0,46,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15746,249,2963,0,47,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15747,249,2960,0,48,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15748,249,2961,0,49,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15749,249,2962,0,50,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15750,249,2963,0,51,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15751,249,2960,0,52,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15752,249,2961,0,53,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15753,249,2962,0,54,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15754,249,2963,0,55,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15755,249,2960,0,56,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15756,249,2961,0,57,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15757,249,2962,0,58,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15758,249,2963,0,59,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15759,249,2960,0,60,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15760,249,2961,0,61,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15761,249,2962,0,62,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15762,249,2963,0,63,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15763,249,2960,0,64,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15764,249,2961,0,65,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15765,249,2962,0,66,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15766,249,2963,0,67,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15767,249,2960,0,68,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15768,249,2961,0,69,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15769,249,2962,0,70,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15770,249,2963,0,71,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15771,249,2960,0,72,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15772,249,2961,0,73,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15773,249,2962,0,74,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15774,249,2963,0,75,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15775,249,2960,0,76,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15776,249,2961,0,77,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15777,249,2962,0,78,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15778,249,2963,0,79,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15779,249,2960,0,80,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15780,249,2961,0,81,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15781,249,2962,0,82,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15782,249,2963,0,83,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15783,249,2960,0,84,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15784,249,2961,0,85,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15785,249,2962,0,86,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15786,249,2963,0,87,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15787,249,2960,0,88,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15788,249,2961,0,89,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15789,249,2962,0,90,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15790,249,2963,0,91,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15791,249,2960,0,92,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15792,249,2961,0,93,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15793,249,2962,0,94,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15794,249,2963,0,95,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15795,249,2960,0,96,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15796,249,2961,0,97,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15797,249,2962,0,98,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15798,249,2963,0,99,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15799,249,2960,0,100,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15800,249,2961,0,101,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15801,249,2962,0,102,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15802,249,2963,0,103,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15803,249,2960,0,104,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15804,249,2961,0,105,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15805,249,2962,0,106,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15806,249,2963,0,107,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15807,249,2960,0,108,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15808,249,2961,0,109,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15809,249,2962,0,110,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15810,249,2963,0,111,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15811,249,2960,0,112,2963,2961,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15812,249,2961,0,113,2960,2962,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15813,249,2962,0,114,2961,2963,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15814,249,2963,0,115,2962,2960,2,1069071380,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15815,249,2960,0,116,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15816,249,2961,0,117,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15817,249,2962,0,118,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15818,249,2963,0,119,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15819,249,2960,0,120,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15820,249,2961,0,121,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15821,249,2962,0,122,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15822,249,2963,0,123,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15823,249,2960,0,124,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15824,249,2961,0,125,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15825,249,2962,0,126,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15826,249,2963,0,127,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15827,249,2960,0,128,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15828,249,2961,0,129,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15829,249,2962,0,130,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15830,249,2963,0,131,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15831,249,2960,0,132,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15832,249,2961,0,133,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15833,249,2962,0,134,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15834,249,2963,0,135,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15835,249,2960,0,136,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15836,249,2961,0,137,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15837,249,2962,0,138,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15838,249,2963,0,139,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15839,249,2960,0,140,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15840,249,2961,0,141,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15841,249,2962,0,142,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15842,249,2963,0,143,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15843,249,2960,0,144,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15844,249,2961,0,145,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15845,249,2962,0,146,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15846,249,2963,0,147,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15847,249,2960,0,148,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15848,249,2961,0,149,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15849,249,2962,0,150,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15850,249,2963,0,151,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15851,249,2960,0,152,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15852,249,2961,0,153,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15853,249,2962,0,154,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15854,249,2963,0,155,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15855,249,2960,0,156,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15856,249,2961,0,157,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15857,249,2962,0,158,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15858,249,2963,0,159,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15859,249,2960,0,160,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15860,249,2961,0,161,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15861,249,2962,0,162,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15862,249,2963,0,163,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15863,249,2960,0,164,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15864,249,2961,0,165,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15865,249,2962,0,166,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15866,249,2963,0,167,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15867,249,2960,0,168,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15868,249,2961,0,169,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15869,249,2962,0,170,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15870,249,2963,0,171,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15871,249,2960,0,172,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15872,249,2961,0,173,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15873,249,2962,0,174,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15874,249,2963,0,175,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15875,249,2960,0,176,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15876,249,2961,0,177,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15877,249,2962,0,178,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15878,249,2963,0,179,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15879,249,2960,0,180,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15880,249,2961,0,181,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15881,249,2962,0,182,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15882,249,2963,0,183,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15883,249,2960,0,184,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15884,249,2961,0,185,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15885,249,2962,0,186,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15886,249,2963,0,187,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15887,249,2960,0,188,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15888,249,2961,0,189,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15889,249,2962,0,190,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15890,249,2963,0,191,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15891,249,2960,0,192,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15892,249,2961,0,193,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15893,249,2962,0,194,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15894,249,2963,0,195,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15895,249,2960,0,196,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15896,249,2961,0,197,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15897,249,2962,0,198,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15898,249,2963,0,199,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15899,249,2960,0,200,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15900,249,2961,0,201,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15901,249,2962,0,202,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15902,249,2963,0,203,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15903,249,2960,0,204,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15904,249,2961,0,205,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15905,249,2962,0,206,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15906,249,2963,0,207,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15907,249,2960,0,208,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15908,249,2961,0,209,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15909,249,2962,0,210,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15910,249,2963,0,211,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15911,249,2960,0,212,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15912,249,2961,0,213,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15913,249,2962,0,214,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15914,249,2963,0,215,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15915,249,2960,0,216,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15916,249,2961,0,217,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15917,249,2962,0,218,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15918,249,2963,0,219,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15919,249,2960,0,220,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15920,249,2961,0,221,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15921,249,2962,0,222,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15922,249,2963,0,223,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15923,249,2960,0,224,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15924,249,2961,0,225,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15925,249,2962,0,226,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15926,249,2963,0,227,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15927,249,2960,0,228,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15928,249,2961,0,229,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15929,249,2962,0,230,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15930,249,2963,0,231,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15931,249,2960,0,232,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15932,249,2961,0,233,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15933,249,2962,0,234,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15934,249,2963,0,235,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15935,249,2960,0,236,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15936,249,2961,0,237,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15937,249,2962,0,238,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15938,249,2963,0,239,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15939,249,2960,0,240,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15940,249,2961,0,241,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15941,249,2962,0,242,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15942,249,2963,0,243,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15943,249,2960,0,244,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15944,249,2961,0,245,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15945,249,2962,0,246,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15946,249,2963,0,247,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15947,249,2960,0,248,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15948,249,2961,0,249,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15949,249,2962,0,250,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15950,249,2963,0,251,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15951,249,2960,0,252,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15952,249,2961,0,253,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15953,249,2962,0,254,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15954,249,2963,0,255,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15955,249,2960,0,256,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15956,249,2961,0,257,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15957,249,2962,0,258,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15958,249,2963,0,259,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15959,249,2960,0,260,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15960,249,2961,0,261,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15961,249,2962,0,262,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15962,249,2963,0,263,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15963,249,2960,0,264,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15964,249,2961,0,265,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15965,249,2962,0,266,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15966,249,2963,0,267,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15967,249,2960,0,268,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15968,249,2961,0,269,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15969,249,2962,0,270,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15970,249,2963,0,271,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15971,249,2960,0,272,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15972,249,2961,0,273,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15973,249,2962,0,274,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15974,249,2963,0,275,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15975,249,2960,0,276,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15976,249,2961,0,277,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15977,249,2962,0,278,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15978,249,2963,0,279,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15979,249,2960,0,280,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15980,249,2961,0,281,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15981,249,2962,0,282,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15982,249,2963,0,283,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15983,249,2960,0,284,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15984,249,2961,0,285,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15985,249,2962,0,286,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15986,249,2963,0,287,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15987,249,2960,0,288,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15988,249,2961,0,289,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15989,249,2962,0,290,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15990,249,2963,0,291,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15991,249,2960,0,292,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15992,249,2961,0,293,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15993,249,2962,0,294,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15994,249,2963,0,295,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15995,249,2960,0,296,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15996,249,2961,0,297,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15997,249,2962,0,298,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15998,249,2963,0,299,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15999,249,2960,0,300,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16000,249,2961,0,301,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16001,249,2962,0,302,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16002,249,2963,0,303,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16003,249,2960,0,304,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16004,249,2961,0,305,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16005,249,2962,0,306,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16006,249,2963,0,307,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16007,249,2960,0,308,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16008,249,2961,0,309,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16009,249,2962,0,310,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16010,249,2963,0,311,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16011,249,2960,0,312,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16012,249,2961,0,313,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16013,249,2962,0,314,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16014,249,2963,0,315,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16015,249,2960,0,316,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16016,249,2961,0,317,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16017,249,2962,0,318,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16018,249,2963,0,319,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16019,249,2960,0,320,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16020,249,2961,0,321,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16021,249,2962,0,322,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16022,249,2963,0,323,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16023,249,2960,0,324,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16024,249,2961,0,325,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16025,249,2962,0,326,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16026,249,2963,0,327,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16027,249,2960,0,328,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16028,249,2961,0,329,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16029,249,2962,0,330,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16030,249,2963,0,331,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16031,249,2960,0,332,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16032,249,2961,0,333,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16033,249,2962,0,334,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16034,249,2963,0,335,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16035,249,2960,0,336,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16036,249,2961,0,337,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16037,249,2962,0,338,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16038,249,2963,0,339,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16039,249,2960,0,340,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16040,249,2961,0,341,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16041,249,2962,0,342,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16042,249,2963,0,343,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16043,249,2960,0,344,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16044,249,2961,0,345,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16045,249,2962,0,346,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16046,249,2963,0,347,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16047,249,2960,0,348,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16048,249,2961,0,349,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16049,249,2962,0,350,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16050,249,2963,0,351,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16051,249,2960,0,352,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16052,249,2961,0,353,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16053,249,2962,0,354,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16054,249,2963,0,355,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16055,249,2960,0,356,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16056,249,2961,0,357,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16057,249,2962,0,358,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16058,249,2963,0,359,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16059,249,2960,0,360,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16060,249,2961,0,361,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16061,249,2962,0,362,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16062,249,2963,0,363,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16063,249,2960,0,364,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16064,249,2961,0,365,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16065,249,2962,0,366,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16066,249,2963,0,367,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16067,249,2960,0,368,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16068,249,2961,0,369,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16069,249,2962,0,370,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16070,249,2963,0,371,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16071,249,2960,0,372,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16072,249,2961,0,373,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16073,249,2962,0,374,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16074,249,2963,0,375,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16075,249,2960,0,376,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16076,249,2961,0,377,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16077,249,2962,0,378,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16078,249,2963,0,379,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16079,249,2960,0,380,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16080,249,2961,0,381,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16081,249,2962,0,382,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16082,249,2963,0,383,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16083,249,2960,0,384,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16084,249,2961,0,385,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16085,249,2962,0,386,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16086,249,2963,0,387,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16087,249,2960,0,388,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16088,249,2961,0,389,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16089,249,2962,0,390,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16090,249,2963,0,391,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16091,249,2960,0,392,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16092,249,2961,0,393,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16093,249,2962,0,394,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16094,249,2963,0,395,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16095,249,2960,0,396,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16096,249,2961,0,397,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16097,249,2962,0,398,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16098,249,2963,0,399,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16099,249,2960,0,400,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16100,249,2961,0,401,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16101,249,2962,0,402,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16102,249,2963,0,403,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16103,249,2960,0,404,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16104,249,2961,0,405,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16105,249,2962,0,406,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16106,249,2963,0,407,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16107,249,2960,0,408,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16108,249,2961,0,409,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16109,249,2962,0,410,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16110,249,2963,0,411,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16111,249,2960,0,412,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16112,249,2961,0,413,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16113,249,2962,0,414,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16114,249,2963,0,415,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16115,249,2960,0,416,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16116,249,2961,0,417,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16117,249,2962,0,418,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16118,249,2963,0,419,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16119,249,2960,0,420,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16120,249,2961,0,421,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16121,249,2962,0,422,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16122,249,2963,0,423,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16123,249,2960,0,424,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16124,249,2961,0,425,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16125,249,2962,0,426,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16126,249,2963,0,427,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16127,249,2960,0,428,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16128,249,2961,0,429,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16129,249,2962,0,430,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16130,249,2963,0,431,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16131,249,2960,0,432,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16132,249,2961,0,433,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16133,249,2962,0,434,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16134,249,2963,0,435,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16135,249,2960,0,436,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16136,249,2961,0,437,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16137,249,2962,0,438,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16138,249,2963,0,439,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16139,249,2960,0,440,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16140,249,2961,0,441,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16141,249,2962,0,442,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16142,249,2963,0,443,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16143,249,2960,0,444,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16144,249,2961,0,445,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16145,249,2962,0,446,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16146,249,2963,0,447,2962,2960,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16147,249,2960,0,448,2963,2961,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16148,249,2961,0,449,2960,2962,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16149,249,2962,0,450,2961,2963,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16150,249,2963,0,451,2962,2748,2,1069071380,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16151,249,2748,0,452,2963,2748,2,1069071380,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (16152,249,2748,0,453,2748,0,2,1069071380,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (16153,252,2964,0,0,0,2725,26,1069074891,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16154,252,2725,0,1,2964,2964,26,1069074891,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16155,252,2964,0,2,2725,2725,26,1069074891,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16156,252,2725,0,3,2964,2965,26,1069074891,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16157,252,2965,0,4,2725,2965,26,1069074891,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16158,252,2965,0,5,2965,2966,26,1069074891,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16159,252,2966,0,6,2965,2966,26,1069074891,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16160,252,2966,0,7,2966,2967,26,1069074891,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16161,252,2967,0,8,2966,2968,26,1069074891,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16162,252,2968,0,9,2967,2967,26,1069074891,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16163,252,2967,0,10,2968,2968,26,1069074891,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16164,252,2968,0,11,2967,2969,26,1069074891,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16165,252,2969,0,12,2968,2970,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16166,252,2970,0,13,2969,2969,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16167,252,2969,0,14,2970,2969,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16168,252,2969,0,15,2969,2971,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16169,252,2971,0,16,2969,2972,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16170,252,2972,0,17,2971,2969,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16171,252,2969,0,18,2972,2970,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16172,252,2970,0,19,2969,2969,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16173,252,2969,0,20,2970,2969,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16174,252,2969,0,21,2969,2971,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16175,252,2971,0,22,2969,2972,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16176,252,2972,0,23,2971,0,26,1069074891,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16177,269,2973,0,0,0,2973,26,1069239748,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16178,269,2973,0,1,2973,2974,26,1069239748,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16179,269,2974,0,2,2973,2974,26,1069239748,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16180,269,2974,0,3,2974,2966,26,1069239748,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16181,269,2966,0,4,2974,2966,26,1069239748,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16182,269,2966,0,5,2966,2967,26,1069239748,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16183,269,2967,0,6,2966,2968,26,1069239748,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16184,269,2968,0,7,2967,2967,26,1069239748,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16185,269,2967,0,8,2968,2968,26,1069239748,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16186,269,2968,0,9,2967,2975,26,1069239748,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16187,269,2975,0,10,2968,2976,26,1069239748,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16188,269,2976,0,11,2975,2975,26,1069239748,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16189,269,2975,0,12,2976,2976,26,1069239748,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16190,269,2976,0,13,2975,0,26,1069239748,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16191,272,2977,0,0,0,2977,26,1069244422,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16192,272,2977,0,1,2977,2978,26,1069244422,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16193,272,2978,0,2,2977,2978,26,1069244422,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16194,272,2978,0,3,2978,2979,26,1069244422,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16195,272,2979,0,4,2978,2979,26,1069244422,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16196,272,2979,0,5,2979,2980,26,1069244422,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16197,272,2980,0,6,2979,2980,26,1069244422,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16198,272,2980,0,7,2980,2981,26,1069244422,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16199,272,2981,0,8,2980,2981,26,1069244422,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16200,272,2981,0,9,2981,0,26,1069244422,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16201,275,2982,0,0,0,2982,26,1069245323,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16202,275,2982,0,1,2982,2983,26,1069245323,1,217,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16203,275,2983,0,2,2982,2983,26,1069245323,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16204,275,2983,0,3,2983,2984,26,1069245323,1,209,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16205,275,2984,0,4,2983,2984,26,1069245323,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16206,275,2984,0,5,2984,2985,26,1069245323,1,210,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16207,275,2985,0,6,2984,2985,26,1069245323,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16208,275,2985,0,7,2985,2986,26,1069245323,1,211,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16209,275,2986,0,8,2985,2987,26,1069245323,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16210,275,2987,0,9,2986,2988,26,1069245323,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16211,275,2988,0,10,2987,2986,26,1069245323,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16212,275,2986,0,11,2988,2987,26,1069245323,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16213,275,2987,0,12,2986,2988,26,1069245323,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16214,275,2988,0,13,2987,0,26,1069245323,1,212,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17285,261,2748,0,110,2618,2748,2,1069147950,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17284,261,2618,0,109,2646,2748,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17283,261,2646,0,108,3005,2618,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17282,261,3005,0,107,2870,2646,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17281,261,2870,0,106,3005,3005,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17280,261,3005,0,105,2870,2870,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17279,261,2870,0,104,2599,3005,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17278,261,2599,0,103,2597,2870,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17277,261,2597,0,102,2723,2599,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17276,261,2723,0,101,3158,2597,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17275,261,3158,0,100,2745,2723,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17274,261,2745,0,99,3153,3158,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17273,261,3153,0,98,3157,2745,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17272,261,3157,0,97,3156,3153,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17271,261,3156,0,96,2745,3157,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17270,261,2745,0,95,3153,3156,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17269,261,3153,0,94,3155,2745,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17268,261,3155,0,93,3154,3153,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17267,261,3154,0,92,2635,3155,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17266,261,2635,0,91,2860,3154,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17265,261,2860,0,90,2723,2635,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17264,261,2723,0,89,2745,2860,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17263,261,2745,0,88,3153,2723,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17262,261,3153,0,87,2776,2745,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17261,261,2776,0,86,2611,3153,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17260,261,2611,0,85,2638,2776,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17259,261,2638,0,84,3152,2611,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17258,261,3152,0,83,2597,2638,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17257,261,2597,0,82,3151,3152,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17256,261,3151,0,81,2794,2597,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17255,261,2794,0,80,3150,3151,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17254,261,3150,0,79,2831,2794,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17253,261,2831,0,78,2618,3150,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17252,261,2618,0,77,2646,2831,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17251,261,2646,0,76,3005,2618,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17250,261,3005,0,75,2870,2646,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17249,261,2870,0,74,3005,3005,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17248,261,3005,0,73,2870,2870,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17247,261,2870,0,72,2599,3005,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17246,261,2599,0,71,2597,2870,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17245,261,2597,0,70,2723,2599,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17244,261,2723,0,69,3158,2597,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17243,261,3158,0,68,2745,2723,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17242,261,2745,0,67,3153,3158,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17241,261,3153,0,66,3157,2745,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17240,261,3157,0,65,3156,3153,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17239,261,3156,0,64,2745,3157,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17238,261,2745,0,63,3153,3156,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17237,261,3153,0,62,3155,2745,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17236,261,3155,0,61,3154,3153,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17235,261,3154,0,60,2635,3155,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17234,261,2635,0,59,2860,3154,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17233,261,2860,0,58,2723,2635,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17232,261,2723,0,57,2745,2860,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17231,261,2745,0,56,3153,2723,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17230,261,3153,0,55,2776,2745,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17229,261,2776,0,54,2611,3153,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17228,261,2611,0,53,2638,2776,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17227,261,2638,0,52,3152,2611,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17226,261,3152,0,51,2597,2638,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17225,261,2597,0,50,3151,3152,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17224,261,3151,0,49,2794,2597,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17223,261,2794,0,48,3150,3151,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17222,261,3150,0,47,2831,2794,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17221,261,2831,0,46,3149,3150,2,1069147950,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17220,261,3149,0,45,2628,2831,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17219,261,2628,0,44,3148,3149,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17218,261,3148,0,43,2638,2628,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17217,261,2638,0,42,2605,3148,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17216,261,2605,0,41,2761,2638,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17215,261,2761,0,40,3144,2605,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17214,261,3144,0,39,2764,2761,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17213,261,2764,0,38,3147,3144,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17212,261,3147,0,37,2626,2764,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17211,261,2626,0,36,3143,3147,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17210,261,3143,0,35,2604,2626,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17209,261,2604,0,34,2618,3143,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17208,261,2618,0,33,2637,2604,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17207,261,2637,0,32,2903,2618,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17206,261,2903,0,31,3146,2637,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17205,261,3146,0,30,2797,2903,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17204,261,2797,0,29,3145,3146,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17203,261,3145,0,28,2960,2797,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17202,261,2960,0,27,2635,3145,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17201,261,2635,0,26,3149,2960,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17200,261,3149,0,25,2628,2635,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17199,261,2628,0,24,3148,3149,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17198,261,3148,0,23,2638,2628,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17197,261,2638,0,22,2605,3148,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17196,261,2605,0,21,2761,2638,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17195,261,2761,0,20,3144,2605,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17194,261,3144,0,19,2764,2761,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17193,261,2764,0,18,3147,3144,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17192,261,3147,0,17,2626,2764,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17191,261,2626,0,16,3143,3147,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17190,261,3143,0,15,2604,2626,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17189,261,2604,0,14,2618,3143,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17188,261,2618,0,13,2637,2604,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17187,261,2637,0,12,2903,2618,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17186,261,2903,0,11,3146,2637,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17185,261,3146,0,10,2797,2903,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17184,261,2797,0,9,3145,3146,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17183,261,3145,0,8,2960,2797,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17182,261,2960,0,7,2635,3145,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17181,261,2635,0,6,3144,2960,2,1069147950,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17180,261,3144,0,5,2764,2635,2,1069147950,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17179,261,2764,0,4,3143,3144,2,1069147950,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17178,261,3143,0,3,3144,2764,2,1069147950,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17177,261,3144,0,2,2764,3143,2,1069147950,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17176,261,2764,0,1,3143,3144,2,1069147950,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17175,261,3143,0,0,0,2764,2,1069147950,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16327,257,3006,0,0,0,3006,1,1069145751,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16328,257,3006,0,1,3006,0,1,1069145751,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16329,250,3007,0,0,0,3008,2,1069072401,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16330,250,3008,0,1,3007,3007,2,1069072401,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16331,250,3007,0,2,3008,3008,2,1069072401,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16332,250,3008,0,3,3007,3009,2,1069072401,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16333,250,3009,0,4,3008,2599,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16334,250,2599,0,5,3009,2635,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16335,250,2635,0,6,2599,3010,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16336,250,3010,0,7,2635,3008,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16337,250,3008,0,8,3010,2608,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16338,250,2608,0,9,3008,2626,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16339,250,2626,0,10,2608,3011,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16340,250,3011,0,11,2626,3012,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16341,250,3012,0,12,3011,2628,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16342,250,2628,0,13,3012,3013,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16343,250,3013,0,14,2628,2628,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16344,250,2628,0,15,3013,2951,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16345,250,2951,0,16,2628,3014,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16346,250,3014,0,17,2951,3015,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16347,250,3015,0,18,3014,3016,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16348,250,3016,0,19,3015,2635,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16349,250,2635,0,20,3016,3017,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16350,250,3017,0,21,2635,3018,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16351,250,3018,0,22,3017,2610,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16352,250,2610,0,23,3018,2626,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16353,250,2626,0,24,2610,3011,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16354,250,3011,0,25,2626,3019,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16355,250,3019,0,26,3011,3020,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16356,250,3020,0,27,3019,2596,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16357,250,2596,0,28,3020,2610,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16358,250,2610,0,29,2596,3009,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16359,250,3009,0,30,2610,2599,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16360,250,2599,0,31,3009,2635,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16361,250,2635,0,32,2599,3010,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16362,250,3010,0,33,2635,3008,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16363,250,3008,0,34,3010,2608,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16364,250,2608,0,35,3008,2626,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16365,250,2626,0,36,2608,3011,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16366,250,3011,0,37,2626,3012,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16367,250,3012,0,38,3011,2628,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16368,250,2628,0,39,3012,3013,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16369,250,3013,0,40,2628,2628,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16370,250,2628,0,41,3013,2951,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16371,250,2951,0,42,2628,3014,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16372,250,3014,0,43,2951,3015,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16373,250,3015,0,44,3014,3016,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16374,250,3016,0,45,3015,2635,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16375,250,2635,0,46,3016,3017,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16376,250,3017,0,47,2635,3018,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16377,250,3018,0,48,3017,2610,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16378,250,2610,0,49,3018,2626,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16379,250,2626,0,50,2610,3011,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16380,250,3011,0,51,2626,3019,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16381,250,3019,0,52,3011,3020,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16382,250,3020,0,53,3019,2596,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16383,250,2596,0,54,3020,2610,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16384,250,2610,0,55,2596,2635,2,1069072401,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16385,250,2635,0,56,2610,2749,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16386,250,2749,0,57,2635,3021,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16387,250,3021,0,58,2749,2748,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16388,250,2748,0,59,3021,3009,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16389,250,3009,0,60,2748,3022,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16390,250,3022,0,61,3009,3023,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16391,250,3023,0,62,3022,3024,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16392,250,3024,0,63,3023,3025,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16393,250,3025,0,64,3024,3026,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16394,250,3026,0,65,3025,3027,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16395,250,3027,0,66,3026,3028,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16396,250,3028,0,67,3027,3029,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16397,250,3029,0,68,3028,2781,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16398,250,2781,0,69,3029,3030,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16399,250,3030,0,70,2781,2635,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16400,250,2635,0,71,3030,2749,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16401,250,2749,0,72,2635,3021,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16402,250,3021,0,73,2749,2748,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16403,250,2748,0,74,3021,3009,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16404,250,3009,0,75,2748,3022,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16405,250,3022,0,76,3009,3023,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16406,250,3023,0,77,3022,3024,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16407,250,3024,0,78,3023,3025,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16408,250,3025,0,79,3024,3026,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16409,250,3026,0,80,3025,3027,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16410,250,3027,0,81,3026,3028,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16411,250,3028,0,82,3027,3029,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16412,250,3029,0,83,3028,2781,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16413,250,2781,0,84,3029,3030,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16414,250,3030,0,85,2781,2748,2,1069072401,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16415,250,2748,0,86,3030,2748,2,1069072401,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (16416,250,2748,0,87,2748,0,2,1069072401,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (16417,284,3031,0,0,0,3032,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16418,284,3032,0,1,3031,3033,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16419,284,3033,0,2,3032,3034,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16420,284,3034,0,3,3033,3031,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16421,284,3031,0,4,3034,3032,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16422,284,3032,0,5,3031,3033,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16423,284,3033,0,6,3032,3034,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16424,284,3034,0,7,3033,3035,2,1069683484,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16425,284,3035,0,8,3034,3036,2,1069683484,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16426,284,3036,0,9,3035,3035,2,1069683484,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16427,284,3035,0,10,3036,3036,2,1069683484,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16428,284,3036,0,11,3035,2635,2,1069683484,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16429,284,2635,0,12,3036,2820,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16430,284,2820,0,13,2635,3012,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16431,284,3012,0,14,2820,3034,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16432,284,3034,0,15,3012,2626,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16433,284,2626,0,16,3034,3037,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16434,284,3037,0,17,2626,3038,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16435,284,3038,0,18,3037,2759,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16436,284,2759,0,19,3038,3039,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16437,284,3039,0,20,2759,2927,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16438,284,2927,0,21,3039,3024,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16439,284,3024,0,22,2927,3040,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16440,284,3040,0,23,3024,3031,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16441,284,3031,0,24,3040,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16442,284,2635,0,25,3031,3041,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16443,284,3041,0,26,2635,3042,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16444,284,3042,0,27,3041,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16445,284,2635,0,28,3042,3043,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16446,284,3043,0,29,2635,2608,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16447,284,2608,0,30,3043,2602,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16448,284,2602,0,31,2608,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16449,284,2635,0,32,2602,3044,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16450,284,3044,0,33,2635,3045,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16451,284,3045,0,34,3044,2860,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16452,284,2860,0,35,3045,3046,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16453,284,3046,0,36,2860,3047,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16454,284,3047,0,37,3046,2608,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16455,284,2608,0,38,3047,3048,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16456,284,3048,0,39,2608,2903,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16457,284,2903,0,40,3048,3049,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16458,284,3049,0,41,2903,2903,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16459,284,2903,0,42,3049,2610,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16460,284,2610,0,43,2903,2626,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16461,284,2626,0,44,2610,3050,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16462,284,3050,0,45,2626,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16463,284,2635,0,46,3050,2820,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16464,284,2820,0,47,2635,3012,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16465,284,3012,0,48,2820,3034,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16466,284,3034,0,49,3012,2626,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16467,284,2626,0,50,3034,3037,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16468,284,3037,0,51,2626,3038,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16469,284,3038,0,52,3037,2759,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16470,284,2759,0,53,3038,3039,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16471,284,3039,0,54,2759,2927,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16472,284,2927,0,55,3039,3024,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16473,284,3024,0,56,2927,3040,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16474,284,3040,0,57,3024,3031,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16475,284,3031,0,58,3040,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16476,284,2635,0,59,3031,3041,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16477,284,3041,0,60,2635,3042,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16478,284,3042,0,61,3041,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16479,284,2635,0,62,3042,3043,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16480,284,3043,0,63,2635,2608,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16481,284,2608,0,64,3043,2602,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16482,284,2602,0,65,2608,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16483,284,2635,0,66,2602,3044,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16484,284,3044,0,67,2635,3045,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16485,284,3045,0,68,3044,2860,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16486,284,2860,0,69,3045,3046,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16487,284,3046,0,70,2860,3047,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16488,284,3047,0,71,3046,2608,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16489,284,2608,0,72,3047,3048,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16490,284,3048,0,73,2608,2903,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16491,284,2903,0,74,3048,3049,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16492,284,3049,0,75,2903,2903,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16493,284,2903,0,76,3049,2610,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16494,284,2610,0,77,2903,2626,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16495,284,2626,0,78,2610,3050,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16496,284,3050,0,79,2626,2635,2,1069683484,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16497,284,2635,0,80,3050,2820,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16498,284,2820,0,81,2635,3012,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16499,284,3012,0,82,2820,3034,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16500,284,3034,0,83,3012,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16501,284,2626,0,84,3034,3037,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16502,284,3037,0,85,2626,3038,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16503,284,3038,0,86,3037,2759,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16504,284,2759,0,87,3038,3039,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16505,284,3039,0,88,2759,2927,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16506,284,2927,0,89,3039,3024,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16507,284,3024,0,90,2927,3040,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16508,284,3040,0,91,3024,3031,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16509,284,3031,0,92,3040,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16510,284,2635,0,93,3031,3041,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16511,284,3041,0,94,2635,3042,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16512,284,3042,0,95,3041,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16513,284,2635,0,96,3042,3043,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16514,284,3043,0,97,2635,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16515,284,2608,0,98,3043,2602,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16516,284,2602,0,99,2608,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16517,284,2635,0,100,2602,3044,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16518,284,3044,0,101,2635,3045,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16519,284,3045,0,102,3044,2860,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16520,284,2860,0,103,3045,3046,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16521,284,3046,0,104,2860,3047,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16522,284,3047,0,105,3046,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16523,284,2608,0,106,3047,3048,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16524,284,3048,0,107,2608,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16525,284,2903,0,108,3048,3049,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16526,284,3049,0,109,2903,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16527,284,2903,0,110,3049,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16528,284,2610,0,111,2903,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16529,284,2626,0,112,2610,3050,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16530,284,3050,0,113,2626,2597,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16531,284,2597,0,114,3050,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16532,284,2626,0,115,2597,3051,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16533,284,3051,0,116,2626,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16534,284,2626,0,117,3051,2618,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16535,284,2618,0,118,2626,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16536,284,3052,0,119,2618,3053,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16537,284,3053,0,120,3052,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16538,284,2628,0,121,3053,3054,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16539,284,3054,0,122,2628,2867,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16540,284,2867,0,123,3054,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16541,284,2610,0,124,2867,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16542,284,2626,0,125,2610,2774,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16543,284,2774,0,126,2626,3055,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16544,284,3055,0,127,2774,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16545,284,2638,0,128,3055,2740,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16546,284,2740,0,129,2638,2742,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16547,284,2742,0,130,2740,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16548,284,2696,0,131,2742,2852,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16549,284,2852,0,132,2696,3056,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16550,284,3056,0,133,2852,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16551,284,2608,0,134,3056,3057,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16552,284,3057,0,135,2608,3058,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16553,284,3058,0,136,3057,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16554,284,2628,0,137,3058,3059,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16555,284,3059,0,138,2628,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16556,284,2608,0,139,3059,3060,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16557,284,3060,0,140,2608,2622,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16558,284,2622,0,141,3060,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16559,284,2696,0,142,2622,3008,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16560,284,3008,0,143,2696,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16561,284,2610,0,144,3008,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16562,284,2638,0,145,2610,2776,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16563,284,2776,0,146,2638,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16564,284,2696,0,147,2776,3061,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16565,284,3061,0,148,2696,3062,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16566,284,3062,0,149,3061,3031,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16567,284,3031,0,150,3062,3063,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16568,284,3063,0,151,3031,3064,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16569,284,3064,0,152,3063,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16570,284,3052,0,153,3064,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16571,284,2638,0,154,3052,2892,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16572,284,2892,0,155,2638,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16573,284,2696,0,156,2892,3065,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16574,284,3065,0,157,2696,3066,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16575,284,3066,0,158,3065,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16576,284,2903,0,159,3066,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16577,284,3052,0,160,2903,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16578,284,2638,0,161,3052,3067,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16579,284,3067,0,162,2638,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16580,284,2628,0,163,3067,3068,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16581,284,3068,0,164,2628,2879,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16582,284,2879,0,165,3068,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16583,284,2696,0,166,2879,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16584,284,2724,0,167,2696,2719,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16585,284,2719,0,168,2724,2612,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16586,284,2612,0,169,2719,3069,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16587,284,3069,0,170,2612,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16588,284,2696,0,171,3069,3070,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16589,284,3070,0,172,2696,3071,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16590,284,3071,0,173,3070,2764,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16591,284,2764,0,174,3071,3072,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16592,284,3072,0,175,2764,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16593,284,2724,0,176,3072,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16594,284,3073,0,177,2724,3074,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16595,284,3074,0,178,3073,3075,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16596,284,3075,0,179,3074,3031,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16597,284,3031,0,180,3075,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16598,284,2626,0,181,3031,3076,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16599,284,3076,0,182,2626,2860,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16600,284,2860,0,183,3076,3046,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16601,284,3046,0,184,2860,3077,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16602,284,3077,0,185,3046,2634,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16603,284,2634,0,186,3077,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16604,284,2635,0,187,2634,3078,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16605,284,3078,0,188,2635,2759,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16606,284,2759,0,189,3078,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16607,284,2724,0,190,2759,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16608,284,2608,0,191,2724,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16609,284,3052,0,192,2608,2599,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16610,284,2599,0,193,3052,2878,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16611,284,2878,0,194,2599,3079,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16612,284,3079,0,195,2878,2622,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16613,284,2622,0,196,3079,2950,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16614,284,2950,0,197,2622,3014,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16615,284,3014,0,198,2950,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16616,284,2628,0,199,3014,3080,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16617,284,3080,0,200,2628,2764,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16618,284,2764,0,201,3080,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16619,284,2635,0,202,2764,3081,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16620,284,3081,0,203,2635,3072,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16621,284,3072,0,204,3081,3018,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16622,284,3018,0,205,3072,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16623,284,2903,0,206,3018,3082,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16624,284,3082,0,207,2903,3083,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16625,284,3083,0,208,3082,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16626,284,3073,0,209,3083,2767,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16627,284,2767,0,210,3073,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16628,284,2635,0,211,2767,3084,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16629,284,3084,0,212,2635,2620,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16630,284,2620,0,213,3084,3085,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16631,284,3085,0,214,2620,2633,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16632,284,2633,0,215,3085,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16633,284,2635,0,216,2633,3078,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16634,284,3078,0,217,2635,3086,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16635,284,3086,0,218,3078,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16636,284,2608,0,219,3086,2634,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16637,284,2634,0,220,2608,3087,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16638,284,3087,0,221,2634,2914,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16639,284,2914,0,222,3087,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16640,284,3052,0,223,2914,3088,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16641,284,3088,0,224,3052,2917,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16642,284,2917,0,225,3088,3089,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16643,284,3089,0,226,2917,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16644,284,2635,0,227,3089,3078,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16645,284,3078,0,228,2635,2766,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16646,284,2766,0,229,3078,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16647,284,2608,0,230,2766,2613,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16648,284,2613,0,231,2608,3089,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16649,284,3089,0,232,2613,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16650,284,2635,0,233,3089,2836,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16651,284,2836,0,234,2635,3090,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16652,284,3090,0,235,2836,2761,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16653,284,2761,0,236,3090,3091,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16654,284,3091,0,237,2761,3092,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16655,284,3092,0,238,3091,3093,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16656,284,3093,0,239,3092,3094,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16657,284,3094,0,240,3093,3095,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16658,284,3095,0,241,3094,2768,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16659,284,2768,0,242,3095,2744,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16660,284,2744,0,243,2768,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16661,284,2608,0,244,2744,3096,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16662,284,3096,0,245,2608,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16663,284,2610,0,246,3096,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16664,284,3073,0,247,2610,2767,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16665,284,2767,0,248,3073,2803,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16666,284,2803,0,249,2767,3097,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16667,284,3097,0,250,2803,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16668,284,2724,0,251,3097,3098,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16669,284,3098,0,252,2724,3055,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16670,284,3055,0,253,3098,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16671,284,2638,0,254,3055,2907,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16672,284,2907,0,255,2638,3099,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16673,284,3099,0,256,2907,3100,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16674,284,3100,0,257,3099,3072,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16675,284,3072,0,258,3100,3018,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16676,284,3018,0,259,3072,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16677,284,2610,0,260,3018,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16678,284,3073,0,261,2610,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16679,284,2696,0,262,3073,3101,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16680,284,3101,0,263,2696,3102,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16681,284,3102,0,264,3101,3103,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16682,284,3103,0,265,3102,2764,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16683,284,2764,0,266,3103,3104,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16684,284,3104,0,267,2764,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16685,284,2608,0,268,3104,3092,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16686,284,3092,0,269,2608,3105,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16687,284,3105,0,270,3092,2761,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16688,284,2761,0,271,3105,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16689,284,2610,0,272,2761,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16690,284,3073,0,273,2610,2895,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16691,284,2895,0,274,3073,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16692,284,2696,0,275,2895,2915,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16693,284,2915,0,276,2696,3106,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16694,284,3106,0,277,2915,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16695,284,2635,0,278,3106,2820,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16696,284,2820,0,279,2635,3012,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16697,284,3012,0,280,2820,3034,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16698,284,3034,0,281,3012,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16699,284,2626,0,282,3034,3037,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16700,284,3037,0,283,2626,3038,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16701,284,3038,0,284,3037,2759,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16702,284,2759,0,285,3038,3039,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16703,284,3039,0,286,2759,2927,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16704,284,2927,0,287,3039,3024,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16705,284,3024,0,288,2927,3040,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16706,284,3040,0,289,3024,3031,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16707,284,3031,0,290,3040,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16708,284,2635,0,291,3031,3041,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16709,284,3041,0,292,2635,3042,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16710,284,3042,0,293,3041,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16711,284,2635,0,294,3042,3043,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16712,284,3043,0,295,2635,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16713,284,2608,0,296,3043,2602,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16714,284,2602,0,297,2608,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16715,284,2635,0,298,2602,3044,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16716,284,3044,0,299,2635,3045,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16717,284,3045,0,300,3044,2860,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16718,284,2860,0,301,3045,3046,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16719,284,3046,0,302,2860,3047,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16720,284,3047,0,303,3046,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16721,284,2608,0,304,3047,3048,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16722,284,3048,0,305,2608,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16723,284,2903,0,306,3048,3049,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16724,284,3049,0,307,2903,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16725,284,2903,0,308,3049,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16726,284,2610,0,309,2903,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16727,284,2626,0,310,2610,3050,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16728,284,3050,0,311,2626,2597,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16729,284,2597,0,312,3050,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16730,284,2626,0,313,2597,3051,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16731,284,3051,0,314,2626,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16732,284,2626,0,315,3051,2618,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16733,284,2618,0,316,2626,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16734,284,3052,0,317,2618,3053,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16735,284,3053,0,318,3052,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16736,284,2628,0,319,3053,3054,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16737,284,3054,0,320,2628,2867,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16738,284,2867,0,321,3054,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16739,284,2610,0,322,2867,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16740,284,2626,0,323,2610,2774,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16741,284,2774,0,324,2626,3055,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16742,284,3055,0,325,2774,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16743,284,2638,0,326,3055,2740,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16744,284,2740,0,327,2638,2742,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16745,284,2742,0,328,2740,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16746,284,2696,0,329,2742,2852,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16747,284,2852,0,330,2696,3056,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16748,284,3056,0,331,2852,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16749,284,2608,0,332,3056,3057,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16750,284,3057,0,333,2608,3058,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16751,284,3058,0,334,3057,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16752,284,2628,0,335,3058,3059,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16753,284,3059,0,336,2628,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16754,284,2608,0,337,3059,3060,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16755,284,3060,0,338,2608,2622,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16756,284,2622,0,339,3060,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16757,284,2696,0,340,2622,3008,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16758,284,3008,0,341,2696,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16759,284,2610,0,342,3008,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16760,284,2638,0,343,2610,2776,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16761,284,2776,0,344,2638,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16762,284,2696,0,345,2776,3061,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16763,284,3061,0,346,2696,3062,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16764,284,3062,0,347,3061,3031,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16765,284,3031,0,348,3062,3063,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16766,284,3063,0,349,3031,3064,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16767,284,3064,0,350,3063,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16768,284,3052,0,351,3064,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16769,284,2638,0,352,3052,2892,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16770,284,2892,0,353,2638,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16771,284,2696,0,354,2892,3065,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16772,284,3065,0,355,2696,3066,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16773,284,3066,0,356,3065,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16774,284,2903,0,357,3066,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16775,284,3052,0,358,2903,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16776,284,2638,0,359,3052,3067,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16777,284,3067,0,360,2638,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16778,284,2628,0,361,3067,3068,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16779,284,3068,0,362,2628,2879,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16780,284,2879,0,363,3068,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16781,284,2696,0,364,2879,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16782,284,2724,0,365,2696,2719,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16783,284,2719,0,366,2724,2612,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16784,284,2612,0,367,2719,3069,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16785,284,3069,0,368,2612,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16786,284,2696,0,369,3069,3070,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16787,284,3070,0,370,2696,3071,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16788,284,3071,0,371,3070,2764,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16789,284,2764,0,372,3071,3072,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16790,284,3072,0,373,2764,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16791,284,2724,0,374,3072,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16792,284,3073,0,375,2724,3074,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16793,284,3074,0,376,3073,3075,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16794,284,3075,0,377,3074,3031,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16795,284,3031,0,378,3075,2626,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16796,284,2626,0,379,3031,3076,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16797,284,3076,0,380,2626,2860,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16798,284,2860,0,381,3076,3046,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16799,284,3046,0,382,2860,3077,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16800,284,3077,0,383,3046,2634,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16801,284,2634,0,384,3077,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16802,284,2635,0,385,2634,3078,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16803,284,3078,0,386,2635,2759,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16804,284,2759,0,387,3078,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16805,284,2724,0,388,2759,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16806,284,2608,0,389,2724,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16807,284,3052,0,390,2608,2599,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16808,284,2599,0,391,3052,2878,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16809,284,2878,0,392,2599,3079,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16810,284,3079,0,393,2878,2622,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16811,284,2622,0,394,3079,2950,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16812,284,2950,0,395,2622,3014,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16813,284,3014,0,396,2950,2628,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16814,284,2628,0,397,3014,3080,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16815,284,3080,0,398,2628,2764,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16816,284,2764,0,399,3080,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16817,284,2635,0,400,2764,3081,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16818,284,3081,0,401,2635,3072,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16819,284,3072,0,402,3081,3018,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16820,284,3018,0,403,3072,2903,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16821,284,2903,0,404,3018,3082,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16822,284,3082,0,405,2903,3083,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16823,284,3083,0,406,3082,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16824,284,3073,0,407,3083,2767,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16825,284,2767,0,408,3073,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16826,284,2635,0,409,2767,3084,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16827,284,3084,0,410,2635,2620,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16828,284,2620,0,411,3084,3085,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16829,284,3085,0,412,2620,2633,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16830,284,2633,0,413,3085,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16831,284,2635,0,414,2633,3078,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16832,284,3078,0,415,2635,3086,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16833,284,3086,0,416,3078,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16834,284,2608,0,417,3086,2634,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16835,284,2634,0,418,2608,3087,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16836,284,3087,0,419,2634,2914,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16837,284,2914,0,420,3087,3052,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16838,284,3052,0,421,2914,3088,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16839,284,3088,0,422,3052,2917,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16840,284,2917,0,423,3088,3089,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16841,284,3089,0,424,2917,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16842,284,2635,0,425,3089,3078,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16843,284,3078,0,426,2635,2766,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16844,284,2766,0,427,3078,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16845,284,2608,0,428,2766,2613,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16846,284,2613,0,429,2608,3089,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16847,284,3089,0,430,2613,2635,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16848,284,2635,0,431,3089,2836,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16849,284,2836,0,432,2635,3090,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16850,284,3090,0,433,2836,2761,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16851,284,2761,0,434,3090,3091,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16852,284,3091,0,435,2761,3092,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16853,284,3092,0,436,3091,3093,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16854,284,3093,0,437,3092,3094,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16855,284,3094,0,438,3093,3095,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16856,284,3095,0,439,3094,2768,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16857,284,2768,0,440,3095,2744,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16858,284,2744,0,441,2768,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16859,284,2608,0,442,2744,3096,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16860,284,3096,0,443,2608,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16861,284,2610,0,444,3096,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16862,284,3073,0,445,2610,2767,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16863,284,2767,0,446,3073,2803,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16864,284,2803,0,447,2767,3097,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16865,284,3097,0,448,2803,2724,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16866,284,2724,0,449,3097,3098,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16867,284,3098,0,450,2724,3055,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16868,284,3055,0,451,3098,2638,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16869,284,2638,0,452,3055,2907,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16870,284,2907,0,453,2638,3099,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16871,284,3099,0,454,2907,3100,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16872,284,3100,0,455,3099,3072,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16873,284,3072,0,456,3100,3018,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16874,284,3018,0,457,3072,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16875,284,2610,0,458,3018,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16876,284,3073,0,459,2610,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16877,284,2696,0,460,3073,3101,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16878,284,3101,0,461,2696,3102,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16879,284,3102,0,462,3101,3103,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16880,284,3103,0,463,3102,2764,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16881,284,2764,0,464,3103,3104,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16882,284,3104,0,465,2764,2608,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16883,284,2608,0,466,3104,3092,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16884,284,3092,0,467,2608,3105,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16885,284,3105,0,468,3092,2761,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16886,284,2761,0,469,3105,2610,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16887,284,2610,0,470,2761,3073,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16888,284,3073,0,471,2610,2895,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16889,284,2895,0,472,3073,2696,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16890,284,2696,0,473,2895,2915,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16891,284,2915,0,474,2696,3106,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16892,284,3106,0,475,2915,2748,2,1069683484,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16893,284,2748,0,476,3106,2748,2,1069683484,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (16894,284,2748,0,477,2748,0,2,1069683484,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (16895,258,3107,0,0,0,3107,1,1069146661,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16896,258,3107,0,1,3107,0,1,1069146661,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16897,260,2960,0,0,0,3107,2,1069147811,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16898,260,3107,0,1,2960,3108,2,1069147811,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16899,260,3108,0,2,3107,2960,2,1069147811,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16900,260,2960,0,3,3108,3107,2,1069147811,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16901,260,3107,0,4,2960,3108,2,1069147811,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16902,260,3108,0,5,3107,2965,2,1069147811,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16903,260,2965,0,6,3108,3109,2,1069147811,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16904,260,3109,0,7,2965,2965,2,1069147811,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16905,260,2965,0,8,3109,3109,2,1069147811,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16906,260,3109,0,9,2965,2635,2,1069147811,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16907,260,2635,0,10,3109,2725,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16908,260,2725,0,11,2635,3110,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16909,260,3110,0,12,2725,2782,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16910,260,2782,0,13,3110,2627,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16911,260,2627,0,14,2782,2696,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16912,260,2696,0,15,2627,2784,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16913,260,2784,0,16,2696,3111,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16914,260,3111,0,17,2784,2764,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16915,260,2764,0,18,3111,2618,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16916,260,2618,0,19,2764,3112,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16917,260,3112,0,20,2618,3113,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16918,260,3113,0,21,3112,2602,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16919,260,2602,0,22,3113,2773,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16920,260,2773,0,23,2602,2604,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16921,260,2604,0,24,2773,2605,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16922,260,2605,0,25,2604,3114,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16923,260,3114,0,26,2605,2634,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16924,260,2634,0,27,3114,2606,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16925,260,2606,0,28,2634,3115,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16926,260,3115,0,29,2606,2608,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16927,260,2608,0,30,3115,2601,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16928,260,2601,0,31,2608,2638,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16929,260,2638,0,32,2601,3116,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16930,260,3116,0,33,2638,3117,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16931,260,3117,0,34,3116,2635,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16932,260,2635,0,35,3117,2725,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16933,260,2725,0,36,2635,3110,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16934,260,3110,0,37,2725,2782,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16935,260,2782,0,38,3110,2627,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16936,260,2627,0,39,2782,2696,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16937,260,2696,0,40,2627,2784,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16938,260,2784,0,41,2696,3111,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16939,260,3111,0,42,2784,2764,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16940,260,2764,0,43,3111,2618,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16941,260,2618,0,44,2764,3112,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16942,260,3112,0,45,2618,3113,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16943,260,3113,0,46,3112,2602,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16944,260,2602,0,47,3113,2773,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16945,260,2773,0,48,2602,2604,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16946,260,2604,0,49,2773,2605,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16947,260,2605,0,50,2604,3114,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16948,260,3114,0,51,2605,2634,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16949,260,2634,0,52,3114,2606,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16950,260,2606,0,53,2634,3115,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16951,260,3115,0,54,2606,2608,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16952,260,2608,0,55,3115,2601,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16953,260,2601,0,56,2608,2638,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16954,260,2638,0,57,2601,3116,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16955,260,3116,0,58,2638,3117,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16956,260,3117,0,59,3116,2597,2,1069147811,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16957,260,2597,0,60,3117,2599,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16958,260,2599,0,61,2597,2696,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16959,260,2696,0,62,2599,3111,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16960,260,3111,0,63,2696,2744,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16961,260,2744,0,64,3111,2638,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16962,260,2638,0,65,2744,2776,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16963,260,2776,0,66,2638,3118,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16964,260,3118,0,67,2776,2628,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16965,260,2628,0,68,3118,2618,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16966,260,2618,0,69,2628,2606,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16967,260,2606,0,70,2618,3048,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16968,260,3048,0,71,2606,2608,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16969,260,2608,0,72,3048,3119,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16970,260,3119,0,73,2608,2610,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16971,260,2610,0,74,3119,2638,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16972,260,2638,0,75,2610,2613,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16973,260,2613,0,76,2638,2776,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16974,260,2776,0,77,2613,2696,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16975,260,2696,0,78,2776,3005,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16976,260,3005,0,79,2696,3111,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16977,260,3111,0,80,3005,2764,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16978,260,2764,0,81,3111,2635,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16979,260,2635,0,82,2764,2603,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16980,260,2603,0,83,2635,2744,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16981,260,2744,0,84,2603,2742,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16982,260,2742,0,85,2744,3120,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16983,260,3120,0,86,2742,3121,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16984,260,3121,0,87,3120,2761,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16985,260,2761,0,88,3121,3122,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16986,260,3122,0,89,2761,2628,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16987,260,2628,0,90,3122,2604,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16988,260,2604,0,91,2628,2605,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16989,260,2605,0,92,2604,2599,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16990,260,2599,0,93,2605,2632,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16991,260,2632,0,94,2599,2633,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16992,260,2633,0,95,2632,2634,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16993,260,2634,0,96,2633,2755,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16994,260,2755,0,97,2634,3123,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16995,260,3123,0,98,2755,3115,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16996,260,3115,0,99,3123,2597,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16997,260,2597,0,100,3115,2599,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16998,260,2599,0,101,2597,2696,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16999,260,2696,0,102,2599,3111,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17000,260,3111,0,103,2696,2744,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17001,260,2744,0,104,3111,2638,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17002,260,2638,0,105,2744,2776,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17003,260,2776,0,106,2638,3118,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17004,260,3118,0,107,2776,2628,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17005,260,2628,0,108,3118,2618,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17006,260,2618,0,109,2628,2606,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17007,260,2606,0,110,2618,3048,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17008,260,3048,0,111,2606,2608,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17009,260,2608,0,112,3048,3119,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17010,260,3119,0,113,2608,2610,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17011,260,2610,0,114,3119,2638,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17012,260,2638,0,115,2610,2613,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17013,260,2613,0,116,2638,2776,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17014,260,2776,0,117,2613,2696,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17015,260,2696,0,118,2776,3005,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17016,260,3005,0,119,2696,3111,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17017,260,3111,0,120,3005,2764,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17018,260,2764,0,121,3111,2635,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17019,260,2635,0,122,2764,2603,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17020,260,2603,0,123,2635,2744,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17021,260,2744,0,124,2603,2742,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17022,260,2742,0,125,2744,3120,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17023,260,3120,0,126,2742,3121,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17024,260,3121,0,127,3120,2761,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17025,260,2761,0,128,3121,3122,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17026,260,3122,0,129,2761,2628,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17027,260,2628,0,130,3122,2604,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17028,260,2604,0,131,2628,2605,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17029,260,2605,0,132,2604,2599,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17030,260,2599,0,133,2605,2632,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17031,260,2632,0,134,2599,2633,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17032,260,2633,0,135,2632,2634,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17033,260,2634,0,136,2633,2755,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17034,260,2755,0,137,2634,3123,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17035,260,3123,0,138,2755,3115,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17036,260,3115,0,139,3123,2748,2,1069147811,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17037,260,2748,0,140,3115,2748,2,1069147811,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17038,260,2748,0,141,2748,0,2,1069147811,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17039,271,3107,0,0,0,2903,2,1069243021,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17040,271,2903,0,1,3107,3124,2,1069243021,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17041,271,3124,0,2,2903,3107,2,1069243021,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17042,271,3107,0,3,3124,2903,2,1069243021,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17043,271,2903,0,4,3107,3124,2,1069243021,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17044,271,3124,0,5,2903,3125,2,1069243021,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17045,271,3125,0,6,3124,3126,2,1069243021,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17046,271,3126,0,7,3125,3125,2,1069243021,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17047,271,3125,0,8,3126,3126,2,1069243021,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17048,271,3126,0,9,3125,2600,2,1069243021,1,218,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17049,271,2600,0,10,3126,2742,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17050,271,2742,0,11,2600,2637,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17051,271,2637,0,12,2742,2780,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17052,271,2780,0,13,2637,2597,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17053,271,2597,0,14,2780,2781,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17054,271,2781,0,15,2597,3107,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17055,271,3107,0,16,2781,2903,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17056,271,2903,0,17,3107,3124,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17057,271,3124,0,18,2903,2599,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17058,271,2599,0,19,3124,3127,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17059,271,3127,0,20,2599,2696,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17060,271,2696,0,21,3127,3128,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17061,271,3128,0,22,2696,2764,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17062,271,2764,0,23,3128,2637,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17063,271,2637,0,24,2764,2742,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17064,271,2742,0,25,2637,3129,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17065,271,3129,0,26,2742,2761,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17066,271,2761,0,27,3129,2638,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17067,271,2638,0,28,2761,2870,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17068,271,2870,0,29,2638,3012,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17069,271,3012,0,30,2870,2953,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17070,271,2953,0,31,3012,2600,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17071,271,2600,0,32,2953,2742,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17072,271,2742,0,33,2600,2637,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17073,271,2637,0,34,2742,2780,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17074,271,2780,0,35,2637,2597,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17075,271,2597,0,36,2780,2781,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17076,271,2781,0,37,2597,3107,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17077,271,3107,0,38,2781,2903,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17078,271,2903,0,39,3107,3124,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17079,271,3124,0,40,2903,2599,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17080,271,2599,0,41,3124,3127,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17081,271,3127,0,42,2599,2696,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17082,271,2696,0,43,3127,3128,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17083,271,3128,0,44,2696,2764,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17084,271,2764,0,45,3128,2637,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17085,271,2637,0,46,2764,2742,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17086,271,2742,0,47,2637,3129,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17087,271,3129,0,48,2742,2761,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17088,271,2761,0,49,3129,2638,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17089,271,2638,0,50,2761,2870,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17090,271,2870,0,51,2638,3012,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17091,271,3012,0,52,2870,2953,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17092,271,2953,0,53,3012,3130,2,1069243021,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17093,271,3130,0,54,2953,2634,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17094,271,2634,0,55,3130,2635,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17095,271,2635,0,56,2634,2898,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17096,271,2898,0,57,2635,2620,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17097,271,2620,0,58,2898,2635,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17098,271,2635,0,59,2620,2814,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17099,271,2814,0,60,2635,2825,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17100,271,2825,0,61,2814,3130,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17101,271,3130,0,62,2825,2634,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17102,271,2634,0,63,3130,2635,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17103,271,2635,0,64,2634,2898,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17104,271,2898,0,65,2635,2620,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17105,271,2620,0,66,2898,2635,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17106,271,2635,0,67,2620,2814,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17107,271,2814,0,68,2635,2825,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17108,271,2825,0,69,2814,2748,2,1069243021,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17109,271,2748,0,70,2825,2748,2,1069243021,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17110,271,2748,0,71,2748,0,2,1069243021,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17111,283,3131,0,0,0,3132,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17112,283,3132,0,1,3131,3133,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17113,283,3133,0,2,3132,2953,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17114,283,2953,0,3,3133,3131,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17115,283,3131,0,4,2953,3132,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17116,283,3132,0,5,3131,3133,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17117,283,3133,0,6,3132,2953,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17118,283,2953,0,7,3133,2720,2,1069681443,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17119,283,2720,0,8,2953,2620,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17120,283,2620,0,9,2720,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17121,283,2635,0,10,2620,3134,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17122,283,3134,0,11,2635,2850,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17123,283,2850,0,12,3134,2634,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17124,283,2634,0,13,2850,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17125,283,2635,0,14,2634,3135,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17126,283,3135,0,15,2635,3063,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17127,283,3063,0,16,3135,3136,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17128,283,3136,0,17,3063,3137,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17129,283,3137,0,18,3136,2620,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17130,283,2620,0,19,3137,3107,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17131,283,3107,0,20,2620,2610,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17132,283,2610,0,21,3107,2599,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17133,283,2599,0,22,2610,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17134,283,2635,0,23,2599,3138,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17135,283,3138,0,24,2635,2620,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17136,283,2620,0,25,3138,2628,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17137,283,2628,0,26,2620,2831,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17138,283,2831,0,27,2628,3005,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17139,283,3005,0,28,2831,3139,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17140,283,3139,0,29,3005,3140,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17141,283,3140,0,30,3139,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17142,283,2635,0,31,3140,3141,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17143,283,3141,0,32,2635,3132,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17144,283,3132,0,33,3141,2720,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17145,283,2720,0,34,3132,2620,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17146,283,2620,0,35,2720,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17147,283,2635,0,36,2620,3134,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17148,283,3134,0,37,2635,2850,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17149,283,2850,0,38,3134,2634,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17150,283,2634,0,39,2850,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17151,283,2635,0,40,2634,3135,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17152,283,3135,0,41,2635,3063,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17153,283,3063,0,42,3135,3136,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17154,283,3136,0,43,3063,3137,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17155,283,3137,0,44,3136,2620,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17156,283,2620,0,45,3137,3107,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17157,283,3107,0,46,2620,2610,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17158,283,2610,0,47,3107,2599,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17159,283,2599,0,48,2610,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17160,283,2635,0,49,2599,3138,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17161,283,3138,0,50,2635,2620,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17162,283,2620,0,51,3138,2628,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17163,283,2628,0,52,2620,2831,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17164,283,2831,0,53,2628,3005,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17165,283,3005,0,54,2831,3139,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17166,283,3139,0,55,3005,3140,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17167,283,3140,0,56,3139,2635,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17168,283,2635,0,57,3140,3141,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17169,283,3141,0,58,2635,3132,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17170,283,3132,0,59,3141,2748,2,1069681443,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17171,283,2748,0,60,3132,2748,2,1069681443,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17172,283,2748,0,61,2748,0,2,1069681443,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17173,259,3142,0,0,0,3142,1,1069146733,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17174,259,3142,0,1,3142,0,1,1069146733,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17286,261,2748,0,111,2748,0,2,1069147950,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17287,278,3142,0,0,0,3159,2,1069680733,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17288,278,3159,0,1,3142,3142,2,1069680733,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17289,278,3142,0,2,3159,3159,2,1069680733,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17290,278,3159,0,3,3142,3160,2,1069680733,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17291,278,3160,0,4,3159,2790,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17292,278,2790,0,5,3160,2637,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17293,278,2637,0,6,2790,2638,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17294,278,2638,0,7,2637,2742,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17295,278,2742,0,8,2638,2803,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17296,278,2803,0,9,2742,3108,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17297,278,3108,0,10,2803,2620,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17298,278,2620,0,11,3108,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17299,278,2635,0,12,2620,2725,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17300,278,2725,0,13,2635,3161,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17301,278,3161,0,14,2725,2634,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17302,278,2634,0,15,3161,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17303,278,2635,0,16,2634,3142,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17304,278,3142,0,17,2635,2636,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17305,278,2636,0,18,3142,2764,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17306,278,2764,0,19,2636,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17307,278,2635,0,20,2764,2960,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17308,278,2960,0,21,2635,3162,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17309,278,3162,0,22,2960,2597,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17310,278,2597,0,23,3162,2599,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17311,278,2599,0,24,2597,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17312,278,2635,0,25,2599,3163,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17313,278,3163,0,26,2635,2628,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17314,278,2628,0,27,3163,2776,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17315,278,2776,0,28,2628,3160,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17316,278,3160,0,29,2776,2790,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17317,278,2790,0,30,3160,2637,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17318,278,2637,0,31,2790,2638,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17319,278,2638,0,32,2637,2742,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17320,278,2742,0,33,2638,2803,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17321,278,2803,0,34,2742,3108,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17322,278,3108,0,35,2803,2620,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17323,278,2620,0,36,3108,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17324,278,2635,0,37,2620,2725,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17325,278,2725,0,38,2635,3161,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17326,278,3161,0,39,2725,2634,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17327,278,2634,0,40,3161,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17328,278,2635,0,41,2634,3142,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17329,278,3142,0,42,2635,2636,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17330,278,2636,0,43,3142,2764,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17331,278,2764,0,44,2636,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17332,278,2635,0,45,2764,2960,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17333,278,2960,0,46,2635,3162,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17334,278,3162,0,47,2960,2597,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17335,278,2597,0,48,3162,2599,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17336,278,2599,0,49,2597,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17337,278,2635,0,50,2599,3163,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17338,278,3163,0,51,2635,2628,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17339,278,2628,0,52,3163,2776,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17340,278,2776,0,53,2628,2635,2,1069680733,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17341,278,2635,0,54,2776,2960,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17342,278,2960,0,55,2635,3164,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17343,278,3164,0,56,2960,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17344,278,2635,0,57,3164,3165,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17345,278,3165,0,58,2635,3166,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17346,278,3166,0,59,3165,3167,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17347,278,3167,0,60,3166,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17348,278,2635,0,61,3167,2721,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17349,278,2721,0,62,2635,3168,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17350,278,3168,0,63,2721,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17351,278,2635,0,64,3168,2721,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17352,278,2721,0,65,2635,3169,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17353,278,3169,0,66,2721,3170,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17354,278,3170,0,67,3169,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17355,278,2635,0,68,3170,2960,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17356,278,2960,0,69,2635,3171,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17357,278,3171,0,70,2960,2625,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17358,278,2625,0,71,3171,2601,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17359,278,2601,0,72,2625,2638,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17360,278,2638,0,73,2601,3172,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17361,278,3172,0,74,2638,2610,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17362,278,2610,0,75,3172,2618,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17363,278,2618,0,76,2610,2825,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17364,278,2825,0,77,2618,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17365,278,2635,0,78,2825,2960,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17366,278,2960,0,79,2635,3164,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17367,278,3164,0,80,2960,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17368,278,2635,0,81,3164,3165,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17369,278,3165,0,82,2635,3166,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17370,278,3166,0,83,3165,3167,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17371,278,3167,0,84,3166,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17372,278,2635,0,85,3167,2721,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17373,278,2721,0,86,2635,3168,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17374,278,3168,0,87,2721,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17375,278,2635,0,88,3168,2721,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17376,278,2721,0,89,2635,3169,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17377,278,3169,0,90,2721,3170,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17378,278,3170,0,91,3169,2635,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17379,278,2635,0,92,3170,2960,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17380,278,2960,0,93,2635,3171,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17381,278,3171,0,94,2960,2625,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17382,278,2625,0,95,3171,2601,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17383,278,2601,0,96,2625,2638,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17384,278,2638,0,97,2601,3172,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17385,278,3172,0,98,2638,2610,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17386,278,2610,0,99,3172,2618,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17387,278,2618,0,100,2610,2825,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17388,278,2825,0,101,2618,2748,2,1069680733,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17389,278,2748,0,102,2825,2748,2,1069680733,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17390,278,2748,0,103,2748,0,2,1069680733,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17391,279,2638,0,0,0,3052,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17392,279,3052,0,1,2638,3173,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17393,279,3173,0,2,3052,3174,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17394,279,3174,0,3,3173,2638,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17395,279,2638,0,4,3174,3052,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17396,279,3052,0,5,2638,3173,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17397,279,3173,0,6,3052,3174,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17398,279,3174,0,7,3173,2635,2,1069680908,1,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17399,279,2635,0,8,3174,3175,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17400,279,3175,0,9,2635,2599,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17401,279,2599,0,10,3175,3137,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17402,279,3137,0,11,2599,2611,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17403,279,2611,0,12,3137,2761,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17404,279,2761,0,13,2611,2610,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17405,279,2610,0,14,2761,2599,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17406,279,2599,0,15,2610,2870,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17407,279,2870,0,16,2599,3176,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17408,279,3176,0,17,2870,2628,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17409,279,2628,0,18,3176,3054,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17410,279,3054,0,19,2628,2738,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17411,279,2738,0,20,3054,2610,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17412,279,2610,0,21,2738,2599,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17413,279,2599,0,22,2610,2696,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17414,279,2696,0,23,2599,3177,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17415,279,3177,0,24,2696,2746,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17416,279,2746,0,25,3177,2870,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17417,279,2870,0,26,2746,2638,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17418,279,2638,0,27,2870,3052,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17419,279,3052,0,28,2638,2776,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17420,279,2776,0,29,3052,2635,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17421,279,2635,0,30,2776,2818,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17422,279,2818,0,31,2635,2628,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17423,279,2628,0,32,2818,3173,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17424,279,3173,0,33,2628,3174,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17425,279,3174,0,34,3173,2797,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17426,279,2797,0,35,3174,3046,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17427,279,3046,0,36,2797,3178,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17428,279,3178,0,37,3046,2635,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17429,279,2635,0,38,3178,3175,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17430,279,3175,0,39,2635,2599,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17431,279,2599,0,40,3175,3137,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17432,279,3137,0,41,2599,2611,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17433,279,2611,0,42,3137,2761,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17434,279,2761,0,43,2611,2610,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17435,279,2610,0,44,2761,2599,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17436,279,2599,0,45,2610,2870,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17437,279,2870,0,46,2599,3176,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17438,279,3176,0,47,2870,2628,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17439,279,2628,0,48,3176,3054,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17440,279,3054,0,49,2628,2738,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17441,279,2738,0,50,3054,2610,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17442,279,2610,0,51,2738,2599,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17443,279,2599,0,52,2610,2696,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17444,279,2696,0,53,2599,3177,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17445,279,3177,0,54,2696,2746,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17446,279,2746,0,55,3177,2870,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17447,279,2870,0,56,2746,2638,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17448,279,2638,0,57,2870,3052,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17449,279,3052,0,58,2638,2776,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17450,279,2776,0,59,3052,2635,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17451,279,2635,0,60,2776,2818,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17452,279,2818,0,61,2635,2628,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17453,279,2628,0,62,2818,3173,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17454,279,3173,0,63,2628,3174,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17455,279,3174,0,64,3173,2797,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17456,279,2797,0,65,3174,3046,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17457,279,3046,0,66,2797,3178,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17458,279,3178,0,67,3046,2610,2,1069680908,1,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17459,279,2610,0,68,3178,2599,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17460,279,2599,0,69,2610,3179,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17461,279,3179,0,70,2599,2628,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17462,279,2628,0,71,3179,3180,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17463,279,3180,0,72,2628,2628,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17464,279,2628,0,73,3180,3054,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17465,279,3054,0,74,2628,2761,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17466,279,2761,0,75,3054,3052,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17467,279,3052,0,76,2761,2599,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17468,279,2599,0,77,3052,2635,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17469,279,2635,0,78,2599,3181,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17470,279,3181,0,79,2635,2634,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17471,279,2634,0,80,3181,2618,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17472,279,2618,0,81,2634,3182,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17473,279,3182,0,82,2618,2597,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17474,279,2597,0,83,3182,2790,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17475,279,2790,0,84,2597,2638,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17476,279,2638,0,85,2790,3052,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17477,279,3052,0,86,2638,2776,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17478,279,2776,0,87,3052,3183,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17479,279,3183,0,88,2776,2628,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17480,279,2628,0,89,3183,3184,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17481,279,3184,0,90,2628,2605,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17482,279,2605,0,91,3184,3185,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17483,279,3185,0,92,2605,3014,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17484,279,3014,0,93,3185,2782,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17485,279,2782,0,94,3014,3186,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17486,279,3186,0,95,2782,3187,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17487,279,3187,0,96,3186,2764,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17488,279,2764,0,97,3187,2745,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17489,279,2745,0,98,2764,3188,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17490,279,3188,0,99,2745,2610,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17491,279,2610,0,100,3188,2599,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17492,279,2599,0,101,2610,3179,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17493,279,3179,0,102,2599,2628,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17494,279,2628,0,103,3179,3180,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17495,279,3180,0,104,2628,2628,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17496,279,2628,0,105,3180,3054,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17497,279,3054,0,106,2628,2761,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17498,279,2761,0,107,3054,3052,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17499,279,3052,0,108,2761,2599,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17500,279,2599,0,109,3052,2635,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17501,279,2635,0,110,2599,3181,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17502,279,3181,0,111,2635,2634,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17503,279,2634,0,112,3181,2618,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17504,279,2618,0,113,2634,3182,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17505,279,3182,0,114,2618,2597,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17506,279,2597,0,115,3182,2790,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17507,279,2790,0,116,2597,2638,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17508,279,2638,0,117,2790,3052,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17509,279,3052,0,118,2638,2776,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17510,279,2776,0,119,3052,3183,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17511,279,3183,0,120,2776,2628,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17512,279,2628,0,121,3183,3184,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17513,279,3184,0,122,2628,2605,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17514,279,2605,0,123,3184,3185,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17515,279,3185,0,124,2605,3014,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17516,279,3014,0,125,3185,2782,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17517,279,2782,0,126,3014,3186,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17518,279,3186,0,127,2782,3187,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17519,279,3187,0,128,3186,2764,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17520,279,2764,0,129,3187,2745,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17521,279,2745,0,130,2764,3188,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17522,279,3188,0,131,2745,2748,2,1069680908,1,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17523,279,2748,0,132,3188,2748,2,1069680908,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17524,279,2748,0,133,2748,0,2,1069680908,1,219,'',1);
INSERT INTO ezsearch_object_word_link VALUES (17525,263,2623,0,0,0,2616,10,1069236942,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17526,263,2616,0,1,2623,2623,10,1069236942,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17527,263,2623,0,2,2616,2616,10,1069236942,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17528,263,2616,0,3,2623,2696,10,1069236942,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17529,263,2696,0,4,2616,2623,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17530,263,2623,0,5,2696,3189,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17531,263,3189,0,6,2623,2599,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17532,263,2599,0,7,3189,2600,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17533,263,2600,0,8,2599,2601,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17534,263,2601,0,9,2600,2602,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17535,263,2602,0,10,2601,2606,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17536,263,2606,0,11,2602,3113,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17537,263,3113,0,12,2606,2932,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17538,263,2932,0,13,3113,3190,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17539,263,3190,0,14,2932,2625,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17540,263,2625,0,15,3190,3172,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17541,263,3172,0,16,2625,2616,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17542,263,2616,0,17,3172,2633,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17543,263,2633,0,18,2616,2778,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17544,263,2778,0,19,2633,2628,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17545,263,2628,0,20,2778,2907,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17546,263,2907,0,21,2628,2634,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17547,263,2634,0,22,2907,3191,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17548,263,3191,0,23,2634,2860,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17549,263,2860,0,24,3191,2601,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17550,263,2601,0,25,2860,3192,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17551,263,3192,0,26,2601,3193,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17552,263,3193,0,27,3192,2628,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17553,263,2628,0,28,3193,2742,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17554,263,2742,0,29,2628,2825,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17555,263,2825,0,30,2742,2599,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17556,263,2599,0,31,2825,3194,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17557,263,3194,0,32,2599,3195,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17558,263,3195,0,33,3194,3196,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17559,263,3196,0,34,3195,3195,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17560,263,3195,0,35,3196,3197,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17561,263,3197,0,36,3195,3198,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17562,263,3198,0,37,3197,3199,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17563,263,3199,0,38,3198,2842,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17564,263,2842,0,39,3199,3200,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17565,263,3200,0,40,2842,2608,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17566,263,2608,0,41,3200,3201,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17567,263,3201,0,42,2608,3198,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17568,263,3198,0,43,3201,3200,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17569,263,3200,0,44,3198,2597,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17570,263,2597,0,45,3200,2607,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17571,263,2607,0,46,2597,2599,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17572,263,2599,0,47,2607,2613,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17573,263,2613,0,48,2599,2779,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17574,263,2779,0,49,2613,3202,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17575,263,3202,0,50,2779,2764,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17576,263,2764,0,51,3202,2603,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17577,263,2603,0,52,2764,2744,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17578,263,2744,0,53,2603,3122,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17579,263,3122,0,54,2744,2628,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17580,263,2628,0,55,3122,3203,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17581,263,3203,0,56,2628,2635,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17582,263,2635,0,57,3203,2607,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17583,263,2607,0,58,2635,2633,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17584,263,2633,0,59,2607,2725,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17585,263,2725,0,60,2633,3188,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17586,263,3188,0,61,2725,2625,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17587,263,2625,0,62,3188,2696,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17588,263,2696,0,63,2625,2623,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17589,263,2623,0,64,2696,3189,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17590,263,3189,0,65,2623,2599,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17591,263,2599,0,66,3189,2600,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17592,263,2600,0,67,2599,2601,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17593,263,2601,0,68,2600,2602,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17594,263,2602,0,69,2601,2606,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17595,263,2606,0,70,2602,3113,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17596,263,3113,0,71,2606,2932,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17597,263,2932,0,72,3113,3190,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17598,263,3190,0,73,2932,2625,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17599,263,2625,0,74,3190,3172,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17600,263,3172,0,75,2625,2616,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17601,263,2616,0,76,3172,2633,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17602,263,2633,0,77,2616,2778,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17603,263,2778,0,78,2633,2628,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17604,263,2628,0,79,2778,2907,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17605,263,2907,0,80,2628,2634,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17606,263,2634,0,81,2907,3191,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17607,263,3191,0,82,2634,2860,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17608,263,2860,0,83,3191,2601,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17609,263,2601,0,84,2860,3192,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17610,263,3192,0,85,2601,3193,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17611,263,3193,0,86,3192,2628,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17612,263,2628,0,87,3193,2742,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17613,263,2742,0,88,2628,2825,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17614,263,2825,0,89,2742,2599,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17615,263,2599,0,90,2825,3194,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17616,263,3194,0,91,2599,3195,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17617,263,3195,0,92,3194,3196,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17618,263,3196,0,93,3195,3195,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17619,263,3195,0,94,3196,3197,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17620,263,3197,0,95,3195,3198,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17621,263,3198,0,96,3197,3199,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17622,263,3199,0,97,3198,2842,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17623,263,2842,0,98,3199,3200,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17624,263,3200,0,99,2842,2608,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17625,263,2608,0,100,3200,3201,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17626,263,3201,0,101,2608,3198,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17627,263,3198,0,102,3201,3200,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17628,263,3200,0,103,3198,2597,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17629,263,2597,0,104,3200,2607,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17630,263,2607,0,105,2597,2599,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17631,263,2599,0,106,2607,2613,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17632,263,2613,0,107,2599,2779,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17633,263,2779,0,108,2613,3202,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17634,263,3202,0,109,2779,2764,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17635,263,2764,0,110,3202,2603,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17636,263,2603,0,111,2764,2744,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17637,263,2744,0,112,2603,3122,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17638,263,3122,0,113,2744,2628,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17639,263,2628,0,114,3122,3203,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17640,263,3203,0,115,2628,2635,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17641,263,2635,0,116,3203,2607,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17642,263,2607,0,117,2635,2633,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17643,263,2633,0,118,2607,2725,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17644,263,2725,0,119,2633,3188,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17645,263,3188,0,120,2725,2625,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17646,263,2625,0,121,3188,0,10,1069236942,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17647,264,2629,0,0,0,2629,10,1069237025,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17648,264,2629,0,1,2629,2616,10,1069237025,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17649,264,2616,0,2,2629,2633,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17650,264,2633,0,3,2616,2778,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17651,264,2778,0,4,2633,2628,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17652,264,2628,0,5,2778,2614,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17653,264,2614,0,6,2628,2597,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17654,264,2597,0,7,2614,3111,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17655,264,3111,0,8,2597,2616,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17656,264,2616,0,9,3111,2633,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17657,264,2633,0,10,2616,2778,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17658,264,2778,0,11,2633,2628,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17659,264,2628,0,12,2778,2614,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17660,264,2614,0,13,2628,2597,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17661,264,2597,0,14,2614,3111,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17662,264,3111,0,15,2597,0,10,1069237025,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17663,11,3204,0,0,0,3205,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17664,11,3205,0,1,3204,3204,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17665,11,3204,0,2,3205,3205,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17666,11,3205,0,3,3204,0,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17667,12,3206,0,0,0,3207,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17668,12,3207,0,1,3206,3206,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17669,12,3206,0,2,3207,3207,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17670,12,3207,0,3,3206,0,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17671,14,3206,0,0,0,3206,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17672,14,3206,0,1,3206,3208,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17673,14,3208,0,2,3206,3208,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17674,14,3208,0,3,3208,3209,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17675,14,3209,0,4,3208,2966,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17676,14,2966,0,5,3209,3209,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17677,14,3209,0,6,2966,2966,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17678,14,2966,0,7,3209,0,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17679,13,3210,0,0,0,3210,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17680,13,3210,0,1,3210,2618,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17681,13,2618,0,2,3210,3211,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17682,13,3211,0,3,2618,2764,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17683,13,2764,0,4,3211,2729,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17684,13,2729,0,5,2764,3212,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17685,13,3212,0,6,2729,3213,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17686,13,3213,0,7,3212,3214,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17687,13,3214,0,8,3213,3215,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17688,13,3215,0,9,3214,3216,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17689,13,3216,0,10,3215,3217,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17690,13,3217,0,11,3216,2618,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17691,13,2618,0,12,3217,3211,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17692,13,3211,0,13,2618,2764,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17693,13,2764,0,14,3211,2729,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17694,13,2729,0,15,2764,3212,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17695,13,3212,0,16,2729,3213,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17696,13,3213,0,17,3212,3214,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17697,13,3214,0,18,3213,3215,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17698,13,3215,0,19,3214,3216,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17699,13,3216,0,20,3215,3217,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17700,13,3217,0,21,3216,0,3,1033920794,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17701,292,3218,0,0,0,3218,4,1070977344,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17702,292,3218,0,1,3218,3208,4,1070977344,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17703,292,3208,0,2,3218,3208,4,1070977344,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17704,292,3208,0,3,3208,3218,4,1070977344,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17705,292,3218,0,4,3208,2966,4,1070977344,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17706,292,2966,0,5,3218,3218,4,1070977344,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17707,292,3218,0,6,2966,2966,4,1070977344,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17708,292,2966,0,7,3218,0,4,1070977344,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17709,291,2729,0,0,0,3210,3,1070976766,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17710,291,3210,0,1,2729,2729,3,1070976766,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17711,291,2729,0,2,3210,3210,3,1070976766,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17712,291,3210,0,3,2729,3219,3,1070976766,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17713,291,3219,0,4,3210,3211,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17714,291,3211,0,5,3219,2764,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17715,291,2764,0,6,3211,3220,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17716,291,3220,0,7,2764,2729,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17717,291,2729,0,8,3220,2612,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17718,291,2612,0,9,2729,3213,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17719,291,3213,0,10,2612,2784,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17720,291,2784,0,11,3213,3221,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17721,291,3221,0,12,2784,2625,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17722,291,2625,0,13,3221,2761,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17723,291,2761,0,14,2625,3222,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17724,291,3222,0,15,2761,2846,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17725,291,2846,0,16,3222,2628,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17726,291,2628,0,17,2846,2776,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17727,291,2776,0,18,2628,3223,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17728,291,3223,0,19,2776,2910,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17729,291,2910,0,20,3223,2803,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17730,291,2803,0,21,2910,3218,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17731,291,3218,0,22,2803,3219,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17732,291,3219,0,23,3218,3211,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17733,291,3211,0,24,3219,2764,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17734,291,2764,0,25,3211,3220,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17735,291,3220,0,26,2764,2729,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17736,291,2729,0,27,3220,2612,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17737,291,2612,0,28,2729,3213,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17738,291,3213,0,29,2612,2784,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17739,291,2784,0,30,3213,3221,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17740,291,3221,0,31,2784,2625,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17741,291,2625,0,32,3221,2761,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17742,291,2761,0,33,2625,3222,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17743,291,3222,0,34,2761,2846,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17744,291,2846,0,35,3222,2628,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17745,291,2628,0,36,2846,2776,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17746,291,2776,0,37,2628,3223,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17747,291,3223,0,38,2776,2910,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17748,291,2910,0,39,3223,2803,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17749,291,2803,0,40,2910,3218,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17750,291,3218,0,41,2803,0,3,1070976766,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17751,293,2729,0,0,0,2729,4,1070977383,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17752,293,2729,0,1,2729,3218,4,1070977383,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17753,293,3218,0,2,2729,3218,4,1070977383,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17754,293,3218,0,3,3218,2729,4,1070977383,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17755,293,2729,0,4,3218,2966,4,1070977383,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17756,293,2966,0,5,2729,2729,4,1070977383,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17757,293,2729,0,6,2966,2966,4,1070977383,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17758,293,2966,0,7,2729,0,4,1070977383,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17759,294,3224,0,0,0,3207,3,1072181061,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17760,294,3207,0,1,3224,3224,3,1072181061,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17761,294,3224,0,2,3207,3207,3,1072181061,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17762,294,3207,0,3,3224,3208,3,1072181061,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17763,294,3208,0,4,3207,3225,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17764,294,3225,0,5,3208,2764,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17765,294,2764,0,6,3225,2635,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17766,294,2635,0,7,2764,3224,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17767,294,3224,0,8,2635,3208,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17768,294,3208,0,9,3224,3208,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17769,294,3208,0,10,3208,3225,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17770,294,3225,0,11,3208,2764,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17771,294,2764,0,12,3225,2635,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17772,294,2635,0,13,2764,3224,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17773,294,3224,0,14,2635,3208,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17774,294,3208,0,15,3224,0,3,1072181061,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17775,10,3224,0,0,0,3224,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17776,10,3224,0,1,3224,3208,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17777,10,3208,0,2,3224,3208,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17778,10,3208,0,3,3208,3224,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17779,10,3224,0,4,3208,2966,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17780,10,2966,0,5,3224,3224,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17781,10,3224,0,6,2966,2966,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17782,10,2966,0,7,3224,0,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17783,44,3226,0,0,0,3227,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17784,44,3227,0,1,3226,3226,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17785,44,3226,0,2,3227,3227,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17786,44,3227,0,3,3226,0,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17787,43,3228,0,0,0,3228,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17788,43,3228,0,1,3228,3229,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17789,43,3229,0,2,3228,3230,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17790,43,3230,0,3,3229,3229,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17791,43,3229,0,4,3230,3230,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17792,43,3230,0,5,3229,0,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17793,45,3231,0,0,0,2608,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17794,45,2608,0,1,3231,2946,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17795,45,2946,0,2,2608,3231,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17796,45,3231,0,3,2946,2608,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17797,45,2608,0,4,3231,2946,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17798,45,2946,0,5,2608,2729,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17799,45,2729,0,6,2946,3232,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17800,45,3232,0,7,2729,3233,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17801,45,3233,0,8,3232,2729,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17802,45,2729,0,9,3233,3232,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17803,45,3232,0,10,2729,3233,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17804,45,3233,0,11,3232,0,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17805,115,3234,0,0,0,3234,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17806,115,3234,0,1,3234,3226,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17807,115,3226,0,2,3234,3234,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17808,115,3234,0,3,3226,3226,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17809,115,3226,0,4,3234,3234,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17810,115,3234,0,5,3226,0,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17811,116,3235,0,0,0,3236,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17812,116,3236,0,1,3235,3235,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17813,116,3235,0,2,3236,3236,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17814,116,3236,0,3,3235,2729,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17815,116,2729,0,4,3236,3237,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17816,116,3237,0,5,2729,2729,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17817,116,2729,0,6,3237,3237,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17818,116,3237,0,7,2729,0,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17819,46,3231,0,0,0,2608,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17820,46,2608,0,1,3231,2946,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17821,46,2946,0,2,2608,3231,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17822,46,3231,0,3,2946,2608,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17823,46,2608,0,4,3231,2946,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17824,46,2946,0,5,2608,0,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17825,56,3238,0,0,0,3238,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17826,56,3238,0,1,3238,3239,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17827,56,3239,0,2,3238,3240,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17828,56,3240,0,3,3239,3241,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17829,56,3241,0,4,3240,3242,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17830,56,3242,0,5,3241,2903,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17831,56,2903,0,6,3242,3243,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17832,56,3243,0,7,2903,3244,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17833,56,3244,0,8,3243,3239,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17834,56,3239,0,9,3244,3240,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17835,56,3240,0,10,3239,3241,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17836,56,3241,0,11,3240,3242,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17837,56,3242,0,12,3241,2903,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17838,56,2903,0,13,3242,3243,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17839,56,3243,0,14,2903,3244,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17840,56,3244,0,15,3243,0,15,1066643397,11,220,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17841,295,3245,0,0,0,3246,1,1076580679,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17842,295,3246,0,1,3245,3245,1,1076580679,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17843,295,3245,0,2,3246,3246,1,1076580679,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17844,295,3246,0,3,3245,0,1,1076580679,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17874,296,3246,0,5,3245,0,27,1076580897,11,221,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17873,296,3245,0,4,3247,3246,27,1076580897,11,221,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17872,296,3247,0,3,3246,3245,27,1076580897,11,221,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17871,296,3246,0,2,3245,3247,27,1076580897,11,221,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17870,296,3245,0,1,3247,3246,27,1076580897,11,221,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17869,296,3247,0,0,0,3245,27,1076580897,11,221,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17851,297,3247,0,0,0,3245,14,1076581004,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17852,297,3245,0,1,3247,3246,14,1076581004,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17853,297,3246,0,2,3245,3247,14,1076581004,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17854,297,3247,0,3,3246,3245,14,1076581004,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17855,297,3245,0,4,3247,3246,14,1076581004,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17856,297,3246,0,5,3245,2729,14,1076581004,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17857,297,2729,0,6,3246,3232,14,1076581004,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17858,297,3232,0,7,2729,3248,14,1076581004,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17859,297,3248,0,8,3232,2729,14,1076581004,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17860,297,2729,0,9,3248,3232,14,1076581004,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17861,297,3232,0,10,2729,3248,14,1076581004,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (17862,297,3248,0,11,3232,0,14,1076581004,11,155,'',0);

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


INSERT INTO ezsearch_word VALUES (2596,'about',3);
INSERT INTO ezsearch_word VALUES (2597,'this',12);
INSERT INTO ezsearch_word VALUES (2598,'website',1);
INSERT INTO ezsearch_word VALUES (2599,'is',14);
INSERT INTO ezsearch_word VALUES (2600,'where',3);
INSERT INTO ezsearch_word VALUES (2601,'you',7);
INSERT INTO ezsearch_word VALUES (2602,'let',5);
INSERT INTO ezsearch_word VALUES (2603,'people',4);
INSERT INTO ezsearch_word VALUES (2604,'know',4);
INSERT INTO ezsearch_word VALUES (2605,'what',6);
INSERT INTO ezsearch_word VALUES (2606,'your',3);
INSERT INTO ezsearch_word VALUES (2607,'site',3);
INSERT INTO ezsearch_word VALUES (2608,'and',10);
INSERT INTO ezsearch_word VALUES (2609,'why',1);
INSERT INTO ezsearch_word VALUES (2610,'it',10);
INSERT INTO ezsearch_word VALUES (2611,'there',4);
INSERT INTO ezsearch_word VALUES (2612,'can',4);
INSERT INTO ezsearch_word VALUES (2613,'also',4);
INSERT INTO ezsearch_word VALUES (2614,'use',2);
INSERT INTO ezsearch_word VALUES (2615,'these',1);
INSERT INTO ezsearch_word VALUES (2616,'information',4);
INSERT INTO ezsearch_word VALUES (2617,'pages',1);
INSERT INTO ezsearch_word VALUES (2618,'all',10);
INSERT INTO ezsearch_word VALUES (2619,'kinds',1);
INSERT INTO ezsearch_word VALUES (2620,'of',8);
INSERT INTO ezsearch_word VALUES (2621,'general',1);
INSERT INTO ezsearch_word VALUES (2622,'like',2);
INSERT INTO ezsearch_word VALUES (2623,'contact',2);
INSERT INTO ezsearch_word VALUES (2624,'forms',1);
INSERT INTO ezsearch_word VALUES (2625,'etc',4);
INSERT INTO ezsearch_word VALUES (2626,'was',5);
INSERT INTO ezsearch_word VALUES (2627,'created',2);
INSERT INTO ezsearch_word VALUES (2628,'to',14);
INSERT INTO ezsearch_word VALUES (2629,'help',2);
INSERT INTO ezsearch_word VALUES (2630,'share',1);
INSERT INTO ezsearch_word VALUES (2631,'whats',1);
INSERT INTO ezsearch_word VALUES (2632,'going',2);
INSERT INTO ezsearch_word VALUES (2633,'on',7);
INSERT INTO ezsearch_word VALUES (2634,'in',9);
INSERT INTO ezsearch_word VALUES (2635,'the',16);
INSERT INTO ezsearch_word VALUES (2636,'world',2);
INSERT INTO ezsearch_word VALUES (2637,'we',6);
INSERT INTO ezsearch_word VALUES (2638,'will',9);
INSERT INTO ezsearch_word VALUES (2639,'keep',1);
INSERT INTO ezsearch_word VALUES (2640,'updated',1);
INSERT INTO ezsearch_word VALUES (2641,'several',1);
INSERT INTO ezsearch_word VALUES (2642,'areas',1);
INSERT INTO ezsearch_word VALUES (2643,'phasellus',1);
INSERT INTO ezsearch_word VALUES (2644,'elementum',1);
INSERT INTO ezsearch_word VALUES (2645,'velit',1);
INSERT INTO ezsearch_word VALUES (2646,'at',2);
INSERT INTO ezsearch_word VALUES (2647,'vehicula',1);
INSERT INTO ezsearch_word VALUES (2648,'accumsan',1);
INSERT INTO ezsearch_word VALUES (2649,'lacus',1);
INSERT INTO ezsearch_word VALUES (2650,'nunc',1);
INSERT INTO ezsearch_word VALUES (2651,'rhoncus',1);
INSERT INTO ezsearch_word VALUES (2652,'lectus',1);
INSERT INTO ezsearch_word VALUES (2653,'et',1);
INSERT INTO ezsearch_word VALUES (2654,'tempor',1);
INSERT INTO ezsearch_word VALUES (2655,'magna',1);
INSERT INTO ezsearch_word VALUES (2656,'mi',1);
INSERT INTO ezsearch_word VALUES (2657,'vitae',1);
INSERT INTO ezsearch_word VALUES (2658,'aliquam',1);
INSERT INTO ezsearch_word VALUES (2659,'erat',1);
INSERT INTO ezsearch_word VALUES (2660,'volutpat',1);
INSERT INTO ezsearch_word VALUES (2661,'ut',1);
INSERT INTO ezsearch_word VALUES (2662,'libero',1);
INSERT INTO ezsearch_word VALUES (2663,'eget',1);
INSERT INTO ezsearch_word VALUES (2664,'lorem',1);
INSERT INTO ezsearch_word VALUES (2665,'vestibulum',1);
INSERT INTO ezsearch_word VALUES (2666,'fermentum',1);
INSERT INTO ezsearch_word VALUES (2667,'sed',1);
INSERT INTO ezsearch_word VALUES (2668,'tellus',1);
INSERT INTO ezsearch_word VALUES (2669,'diam',1);
INSERT INTO ezsearch_word VALUES (2670,'nonummy',1);
INSERT INTO ezsearch_word VALUES (2671,'fringilla',1);
INSERT INTO ezsearch_word VALUES (2672,'hac',1);
INSERT INTO ezsearch_word VALUES (2673,'habitasse',1);
INSERT INTO ezsearch_word VALUES (2674,'platea',1);
INSERT INTO ezsearch_word VALUES (2675,'dictumst',1);
INSERT INTO ezsearch_word VALUES (2676,'duis',1);
INSERT INTO ezsearch_word VALUES (2677,'aenean',1);
INSERT INTO ezsearch_word VALUES (2678,'interdum',1);
INSERT INTO ezsearch_word VALUES (2679,'scelerisque',1);
INSERT INTO ezsearch_word VALUES (2680,'ornare',1);
INSERT INTO ezsearch_word VALUES (2681,'dolor',1);
INSERT INTO ezsearch_word VALUES (2682,'neque',1);
INSERT INTO ezsearch_word VALUES (2683,'ullamcorper',1);
INSERT INTO ezsearch_word VALUES (2684,'id',1);
INSERT INTO ezsearch_word VALUES (2685,'tincidunt',1);
INSERT INTO ezsearch_word VALUES (2686,'non',1);
INSERT INTO ezsearch_word VALUES (2687,'sapien',1);
INSERT INTO ezsearch_word VALUES (2688,'nulla',1);
INSERT INTO ezsearch_word VALUES (2689,'facilisi',1);
INSERT INTO ezsearch_word VALUES (2690,'suspendisse',1);
INSERT INTO ezsearch_word VALUES (2691,'vel',1);
INSERT INTO ezsearch_word VALUES (2692,'wisi',1);
INSERT INTO ezsearch_word VALUES (2693,'nec',1);
INSERT INTO ezsearch_word VALUES (2694,'dapibus',1);
INSERT INTO ezsearch_word VALUES (2695,'mauris',1);
INSERT INTO ezsearch_word VALUES (2696,'a',8);
INSERT INTO ezsearch_word VALUES (2697,'congue',1);
INSERT INTO ezsearch_word VALUES (2698,'sem',1);
INSERT INTO ezsearch_word VALUES (2699,'viverra',1);
INSERT INTO ezsearch_word VALUES (2700,'quam',1);
INSERT INTO ezsearch_word VALUES (2701,'tristique',1);
INSERT INTO ezsearch_word VALUES (2702,'consequat',1);
INSERT INTO ezsearch_word VALUES (2703,'donec',1);
INSERT INTO ezsearch_word VALUES (2704,'adipiscing',1);
INSERT INTO ezsearch_word VALUES (2705,'sagittis',1);
INSERT INTO ezsearch_word VALUES (2706,'nam',1);
INSERT INTO ezsearch_word VALUES (2707,'bibendum',1);
INSERT INTO ezsearch_word VALUES (2708,'dui',1);
INSERT INTO ezsearch_word VALUES (2709,'porttitor',1);
INSERT INTO ezsearch_word VALUES (2710,'morbi',1);
INSERT INTO ezsearch_word VALUES (2711,'dignissim',1);
INSERT INTO ezsearch_word VALUES (2712,'integer',1);
INSERT INTO ezsearch_word VALUES (2713,'est',1);
INSERT INTO ezsearch_word VALUES (2714,'elit',1);
INSERT INTO ezsearch_word VALUES (2715,'cursus',1);
INSERT INTO ezsearch_word VALUES (2716,'quis',1);
INSERT INTO ezsearch_word VALUES (2717,'laoreet',1);
INSERT INTO ezsearch_word VALUES (2718,'polls',1);
INSERT INTO ezsearch_word VALUES (2719,'which',3);
INSERT INTO ezsearch_word VALUES (2720,'one',4);
INSERT INTO ezsearch_word VALUES (2721,'best',4);
INSERT INTO ezsearch_word VALUES (2722,'matrix',1);
INSERT INTO ezsearch_word VALUES (2723,'movies',2);
INSERT INTO ezsearch_word VALUES (2724,'season',2);
INSERT INTO ezsearch_word VALUES (2725,'news',6);
INSERT INTO ezsearch_word VALUES (2726,'technology',2);
INSERT INTO ezsearch_word VALUES (2727,'google',1);
INSERT INTO ezsearch_word VALUES (2728,'indexes',1);
INSERT INTO ezsearch_word VALUES (2729,'content',8);
INSERT INTO ezsearch_word VALUES (2730,'web',1);
INSERT INTO ezsearch_word VALUES (2731,'stores',1);
INSERT INTO ezsearch_word VALUES (2732,'singe',1);
INSERT INTO ezsearch_word VALUES (2733,'cd',1);
INSERT INTO ezsearch_word VALUES (2734,'rom',1);
INSERT INTO ezsearch_word VALUES (2735,'pretty',1);
INSERT INTO ezsearch_word VALUES (2736,'nasty',1);
INSERT INTO ezsearch_word VALUES (2737,'stuff',1);
INSERT INTO ezsearch_word VALUES (2738,'if',3);
INSERT INTO ezsearch_word VALUES (2739,'breakes',1);
INSERT INTO ezsearch_word VALUES (2740,'just',3);
INSERT INTO ezsearch_word VALUES (2741,'chanse',1);
INSERT INTO ezsearch_word VALUES (2742,'have',8);
INSERT INTO ezsearch_word VALUES (2743,'take',1);
INSERT INTO ezsearch_word VALUES (2744,'that',6);
INSERT INTO ezsearch_word VALUES (2745,'more',5);
INSERT INTO ezsearch_word VALUES (2746,'or',2);
INSERT INTO ezsearch_word VALUES (2747,'less',1);
INSERT INTO ezsearch_word VALUES (2748,'1',12);
INSERT INTO ezsearch_word VALUES (2749,'final',2);
INSERT INTO ezsearch_word VALUES (2750,'release',1);
INSERT INTO ezsearch_word VALUES (2751,'abc',1);
INSERT INTO ezsearch_word VALUES (2752,'publish',1);
INSERT INTO ezsearch_word VALUES (2753,'finally',1);
INSERT INTO ezsearch_word VALUES (2754,'released',1);
INSERT INTO ezsearch_word VALUES (2755,'their',2);
INSERT INTO ezsearch_word VALUES (2756,'long',1);
INSERT INTO ezsearch_word VALUES (2757,'awaited',1);
INSERT INTO ezsearch_word VALUES (2758,'software',2);
INSERT INTO ezsearch_word VALUES (2759,'last',2);
INSERT INTO ezsearch_word VALUES (2760,'friday',1);
INSERT INTO ezsearch_word VALUES (2761,'but',7);
INSERT INTO ezsearch_word VALUES (2762,'worth',1);
INSERT INTO ezsearch_word VALUES (2763,'waiting',1);
INSERT INTO ezsearch_word VALUES (2764,'for',12);
INSERT INTO ezsearch_word VALUES (2765,'right',2);
INSERT INTO ezsearch_word VALUES (2766,'now',2);
INSERT INTO ezsearch_word VALUES (2767,'been',3);
INSERT INTO ezsearch_word VALUES (2768,'than',2);
INSERT INTO ezsearch_word VALUES (2769,'five',1);
INSERT INTO ezsearch_word VALUES (2770,'years',1);
INSERT INTO ezsearch_word VALUES (2771,'they',2);
INSERT INTO ezsearch_word VALUES (2772,'told',1);
INSERT INTO ezsearch_word VALUES (2773,'us',3);
INSERT INTO ezsearch_word VALUES (2774,'over',2);
INSERT INTO ezsearch_word VALUES (2775,'again',1);
INSERT INTO ezsearch_word VALUES (2776,'be',8);
INSERT INTO ezsearch_word VALUES (2777,'ever',1);
INSERT INTO ezsearch_word VALUES (2778,'how',4);
INSERT INTO ezsearch_word VALUES (2779,'often',2);
INSERT INTO ezsearch_word VALUES (2780,'heard',2);
INSERT INTO ezsearch_word VALUES (2781,'before',3);
INSERT INTO ezsearch_word VALUES (2782,'has',3);
INSERT INTO ezsearch_word VALUES (2783,'nothing',1);
INSERT INTO ezsearch_word VALUES (2784,'new',4);
INSERT INTO ezsearch_word VALUES (2785,'tell',1);
INSERT INTO ezsearch_word VALUES (2786,'top',1);
INSERT INTO ezsearch_word VALUES (2787,'fair',1);
INSERT INTO ezsearch_word VALUES (2788,'tim',1);
INSERT INTO ezsearch_word VALUES (2789,'gunny',1);
INSERT INTO ezsearch_word VALUES (2790,'week',3);
INSERT INTO ezsearch_word VALUES (2791,'some',1);
INSERT INTO ezsearch_word VALUES (2792,'members',1);
INSERT INTO ezsearch_word VALUES (2793,'crew',1);
INSERT INTO ezsearch_word VALUES (2794,'are',2);
INSERT INTO ezsearch_word VALUES (2795,'reporting',1);
INSERT INTO ezsearch_word VALUES (2796,'live',1);
INSERT INTO ezsearch_word VALUES (2797,'from',3);
INSERT INTO ezsearch_word VALUES (2798,'hall',1);
INSERT INTO ezsearch_word VALUES (2799,'attending',1);
INSERT INTO ezsearch_word VALUES (2800,'\"top',1);
INSERT INTO ezsearch_word VALUES (2801,'2003\"',1);
INSERT INTO ezsearch_word VALUES (2802,'2003',1);
INSERT INTO ezsearch_word VALUES (2803,'an',4);
INSERT INTO ezsearch_word VALUES (2804,'international',1);
INSERT INTO ezsearch_word VALUES (2805,'trade',1);
INSERT INTO ezsearch_word VALUES (2806,'telecommunications',1);
INSERT INTO ezsearch_word VALUES (2807,'held',1);
INSERT INTO ezsearch_word VALUES (2808,'5th',1);
INSERT INTO ezsearch_word VALUES (2809,'time',1);
INSERT INTO ezsearch_word VALUES (2810,'four',1);
INSERT INTO ezsearch_word VALUES (2811,'20th',1);
INSERT INTO ezsearch_word VALUES (2812,'24th',1);
INSERT INTO ezsearch_word VALUES (2813,'following',1);
INSERT INTO ezsearch_word VALUES (2814,'text',2);
INSERT INTO ezsearch_word VALUES (2815,'contains',1);
INSERT INTO ezsearch_word VALUES (2816,'report',1);
INSERT INTO ezsearch_word VALUES (2817,'our',1);
INSERT INTO ezsearch_word VALUES (2818,'first',2);
INSERT INTO ezsearch_word VALUES (2819,'impressions',1);
INSERT INTO ezsearch_word VALUES (2820,'very',2);
INSERT INTO ezsearch_word VALUES (2821,'positive',1);
INSERT INTO ezsearch_word VALUES (2822,'exceeding',1);
INSERT INTO ezsearch_word VALUES (2823,'expectations',1);
INSERT INTO ezsearch_word VALUES (2824,'barely',1);
INSERT INTO ezsearch_word VALUES (2825,'here',4);
INSERT INTO ezsearch_word VALUES (2826,'day',1);
INSERT INTO ezsearch_word VALUES (2827,'lot',1);
INSERT INTO ezsearch_word VALUES (2828,'visited',1);
INSERT INTO ezsearch_word VALUES (2829,'already',1);
INSERT INTO ezsearch_word VALUES (2830,'seems',1);
INSERT INTO ezsearch_word VALUES (2831,'many',3);
INSERT INTO ezsearch_word VALUES (2832,'who',1);
INSERT INTO ezsearch_word VALUES (2833,'knowledge',1);
INSERT INTO ezsearch_word VALUES (2834,'main',1);
INSERT INTO ezsearch_word VALUES (2835,'product',1);
INSERT INTO ezsearch_word VALUES (2836,'open',2);
INSERT INTO ezsearch_word VALUES (2837,'source',1);
INSERT INTO ezsearch_word VALUES (2838,'management',1);
INSERT INTO ezsearch_word VALUES (2839,'system',1);
INSERT INTO ezsearch_word VALUES (2840,'development',1);
INSERT INTO ezsearch_word VALUES (2841,'framework',1);
INSERT INTO ezsearch_word VALUES (2842,'visitors',2);
INSERT INTO ezsearch_word VALUES (2843,'mostly',1);
INSERT INTO ezsearch_word VALUES (2844,'germany',1);
INSERT INTO ezsearch_word VALUES (2845,'austria',1);
INSERT INTO ezsearch_word VALUES (2846,'them',2);
INSERT INTO ezsearch_word VALUES (2847,'representing',1);
INSERT INTO ezsearch_word VALUES (2848,'various',1);
INSERT INTO ezsearch_word VALUES (2849,'organizations',1);
INSERT INTO ezsearch_word VALUES (2850,'companies',2);
INSERT INTO ezsearch_word VALUES (2851,'large',1);
INSERT INTO ezsearch_word VALUES (2852,'small',2);
INSERT INTO ezsearch_word VALUES (2853,'despite',1);
INSERT INTO ezsearch_word VALUES (2854,'enormous',1);
INSERT INTO ezsearch_word VALUES (2855,'success',1);
INSERT INTO ezsearch_word VALUES (2856,'gnu',1);
INSERT INTO ezsearch_word VALUES (2857,'linux',1);
INSERT INTO ezsearch_word VALUES (2858,'still',1);
INSERT INTO ezsearch_word VALUES (2859,'unfamiliar',1);
INSERT INTO ezsearch_word VALUES (2860,'with',4);
INSERT INTO ezsearch_word VALUES (2861,'public',1);
INSERT INTO ezsearch_word VALUES (2862,'licenses',1);
INSERT INTO ezsearch_word VALUES (2863,'however',1);
INSERT INTO ezsearch_word VALUES (2864,'sure',1);
INSERT INTO ezsearch_word VALUES (2865,'seem',1);
INSERT INTO ezsearch_word VALUES (2866,'impressed',1);
INSERT INTO ezsearch_word VALUES (2867,'when',2);
INSERT INTO ezsearch_word VALUES (2868,'realize',1);
INSERT INTO ezsearch_word VALUES (2869,'powerful',1);
INSERT INTO ezsearch_word VALUES (2870,'not',4);
INSERT INTO ezsearch_word VALUES (2871,'mention',1);
INSERT INTO ezsearch_word VALUES (2872,'benefits',1);
INSERT INTO ezsearch_word VALUES (2873,'having',1);
INSERT INTO ezsearch_word VALUES (2874,'huge',1);
INSERT INTO ezsearch_word VALUES (2875,'community',1);
INSERT INTO ezsearch_word VALUES (2876,'creative',1);
INSERT INTO ezsearch_word VALUES (2877,'minds',1);
INSERT INTO ezsearch_word VALUES (2878,'working',2);
INSERT INTO ezsearch_word VALUES (2879,'together',2);
INSERT INTO ezsearch_word VALUES (2880,'achieve',1);
INSERT INTO ezsearch_word VALUES (2881,'great',1);
INSERT INTO ezsearch_word VALUES (2882,'things',1);
INSERT INTO ezsearch_word VALUES (2883,'speaking',1);
INSERT INTO ezsearch_word VALUES (2884,'re',1);
INSERT INTO ezsearch_word VALUES (2885,'happy',1);
INSERT INTO ezsearch_word VALUES (2886,'show',1);
INSERT INTO ezsearch_word VALUES (2887,'up',1);
INSERT INTO ezsearch_word VALUES (2888,'always',1);
INSERT INTO ezsearch_word VALUES (2889,'interesting',1);
INSERT INTO ezsearch_word VALUES (2890,'inspiring',1);
INSERT INTO ezsearch_word VALUES (2891,'meet',1);
INSERT INTO ezsearch_word VALUES (2892,'face',2);
INSERT INTO ezsearch_word VALUES (2893,'discuss',1);
INSERT INTO ezsearch_word VALUES (2894,'topics',1);
INSERT INTO ezsearch_word VALUES (2895,'certainly',2);
INSERT INTO ezsearch_word VALUES (2896,'hope',1);
INSERT INTO ezsearch_word VALUES (2897,'during',1);
INSERT INTO ezsearch_word VALUES (2898,'rest',2);
INSERT INTO ezsearch_word VALUES (2899,'anyway',1);
INSERT INTO ezsearch_word VALUES (2900,'were',1);
INSERT INTO ezsearch_word VALUES (2901,'talking',1);
INSERT INTO ezsearch_word VALUES (2902,'free',1);
INSERT INTO ezsearch_word VALUES (2903,'as',5);
INSERT INTO ezsearch_word VALUES (2904,'mentioned',1);
INSERT INTO ezsearch_word VALUES (2905,'don',1);
INSERT INTO ezsearch_word VALUES (2906,'t',1);
INSERT INTO ezsearch_word VALUES (2907,'get',3);
INSERT INTO ezsearch_word VALUES (2908,'explained',1);
INSERT INTO ezsearch_word VALUES (2909,'met',1);
INSERT INTO ezsearch_word VALUES (2910,'by',2);
INSERT INTO ezsearch_word VALUES (2911,'replies',1);
INSERT INTO ezsearch_word VALUES (2912,'such',1);
INSERT INTO ezsearch_word VALUES (2913,'\"amazing',1);
INSERT INTO ezsearch_word VALUES (2914,'\"',2);
INSERT INTO ezsearch_word VALUES (2915,'big',2);
INSERT INTO ezsearch_word VALUES (2916,'smile',1);
INSERT INTO ezsearch_word VALUES (2917,'\"i',2);
INSERT INTO ezsearch_word VALUES (2918,'would',1);
INSERT INTO ezsearch_word VALUES (2919,'pay',1);
INSERT INTO ezsearch_word VALUES (2920,'money',1);
INSERT INTO ezsearch_word VALUES (2921,'feature',1);
INSERT INTO ezsearch_word VALUES (2922,'company',1);
INSERT INTO ezsearch_word VALUES (2923,'guy',1);
INSERT INTO ezsearch_word VALUES (2924,'came',1);
INSERT INTO ezsearch_word VALUES (2925,'neighboring',1);
INSERT INTO ezsearch_word VALUES (2926,'stands',1);
INSERT INTO ezsearch_word VALUES (2927,'after',2);
INSERT INTO ezsearch_word VALUES (2928,'watching',1);
INSERT INTO ezsearch_word VALUES (2929,'presentation',1);
INSERT INTO ezsearch_word VALUES (2930,'interested',1);
INSERT INTO ezsearch_word VALUES (2931,'potential',1);
INSERT INTO ezsearch_word VALUES (2932,'customers',2);
INSERT INTO ezsearch_word VALUES (2933,'willing',1);
INSERT INTO ezsearch_word VALUES (2934,'spend',1);
INSERT INTO ezsearch_word VALUES (2935,'millions',1);
INSERT INTO ezsearch_word VALUES (2936,'rigid',1);
INSERT INTO ezsearch_word VALUES (2937,'solutions',1);
INSERT INTO ezsearch_word VALUES (2938,'policy',1);
INSERT INTO ezsearch_word VALUES (2939,'flexible',1);
INSERT INTO ezsearch_word VALUES (2940,'eager',1);
INSERT INTO ezsearch_word VALUES (2941,'talk',1);
INSERT INTO ezsearch_word VALUES (2942,'wide',1);
INSERT INTO ezsearch_word VALUES (2943,'range',1);
INSERT INTO ezsearch_word VALUES (2944,'chance',1);
INSERT INTO ezsearch_word VALUES (2945,'visit',1);
INSERT INTO ezsearch_word VALUES (2946,'feel',3);
INSERT INTO ezsearch_word VALUES (2947,'stop',1);
INSERT INTO ezsearch_word VALUES (2948,'stand',1);
INSERT INTO ezsearch_word VALUES (2949,'prepared',1);
INSERT INTO ezsearch_word VALUES (2950,'everyone',2);
INSERT INTO ezsearch_word VALUES (2951,'anybody',2);
INSERT INTO ezsearch_word VALUES (2952,'sit',1);
INSERT INTO ezsearch_word VALUES (2953,'down',3);
INSERT INTO ezsearch_word VALUES (2954,'representatives',1);
INSERT INTO ezsearch_word VALUES (2955,'receive',1);
INSERT INTO ezsearch_word VALUES (2956,'hands',1);
INSERT INTO ezsearch_word VALUES (2957,'demonstration',1);
INSERT INTO ezsearch_word VALUES (2958,'politics',1);
INSERT INTO ezsearch_word VALUES (2959,'breaking',1);
INSERT INTO ezsearch_word VALUES (2960,'latest',4);
INSERT INTO ezsearch_word VALUES (2961,'dfgds',1);
INSERT INTO ezsearch_word VALUES (2962,'fgsdfg',1);
INSERT INTO ezsearch_word VALUES (2963,'sdgf',1);
INSERT INTO ezsearch_word VALUES (2964,'kewl',1);
INSERT INTO ezsearch_word VALUES (2965,'b�rd',2);
INSERT INTO ezsearch_word VALUES (2966,'nospam@ez.no',6);
INSERT INTO ezsearch_word VALUES (2967,'http',2);
INSERT INTO ezsearch_word VALUES (2968,'ez.no',2);
INSERT INTO ezsearch_word VALUES (2969,'sdfg',1);
INSERT INTO ezsearch_word VALUES (2970,'sdfgsdfg',1);
INSERT INTO ezsearch_word VALUES (2971,'sdf',1);
INSERT INTO ezsearch_word VALUES (2972,'gsdfg',1);
INSERT INTO ezsearch_word VALUES (2973,'amazing',1);
INSERT INTO ezsearch_word VALUES (2974,'wenyue',1);
INSERT INTO ezsearch_word VALUES (2975,'jgslfjs',1);
INSERT INTO ezsearch_word VALUES (2976,'sdfklsfl�sk',1);
INSERT INTO ezsearch_word VALUES (2977,'fgdfg',1);
INSERT INTO ezsearch_word VALUES (2978,'dgdf',1);
INSERT INTO ezsearch_word VALUES (2979,'dg',1);
INSERT INTO ezsearch_word VALUES (2980,'dfgd',1);
INSERT INTO ezsearch_word VALUES (2981,'dfgfd',1);
INSERT INTO ezsearch_word VALUES (2982,'sdsdd',1);
INSERT INTO ezsearch_word VALUES (2983,'ddd',1);
INSERT INTO ezsearch_word VALUES (2984,'sdfsdf@yahoo.com',1);
INSERT INTO ezsearch_word VALUES (2985,'fsf',1);
INSERT INTO ezsearch_word VALUES (2986,'sdfsdfsdf',1);
INSERT INTO ezsearch_word VALUES (2987,'sd',1);
INSERT INTO ezsearch_word VALUES (2988,'fsdf',1);
INSERT INTO ezsearch_word VALUES (3156,'strange',1);
INSERT INTO ezsearch_word VALUES (3155,'himself',1);
INSERT INTO ezsearch_word VALUES (3154,'man',1);
INSERT INTO ezsearch_word VALUES (3153,'no',1);
INSERT INTO ezsearch_word VALUES (3152,'question',1);
INSERT INTO ezsearch_word VALUES (3151,'asking',1);
INSERT INTO ezsearch_word VALUES (3150,'fans',1);
INSERT INTO ezsearch_word VALUES (3149,'t4',1);
INSERT INTO ezsearch_word VALUES (3148,'happen',1);
INSERT INTO ezsearch_word VALUES (3147,'selected',1);
INSERT INTO ezsearch_word VALUES (3146,'hollywood',1);
INSERT INTO ezsearch_word VALUES (3145,'movie',1);
INSERT INTO ezsearch_word VALUES (3144,'governor',1);
INSERT INTO ezsearch_word VALUES (3143,'arnold',1);
INSERT INTO ezsearch_word VALUES (3005,'good',3);
INSERT INTO ezsearch_word VALUES (3006,'sports',1);
INSERT INTO ezsearch_word VALUES (3007,'leauge',1);
INSERT INTO ezsearch_word VALUES (3008,'champion',2);
INSERT INTO ezsearch_word VALUES (3009,'ezpool',1);
INSERT INTO ezsearch_word VALUES (3010,'internal',1);
INSERT INTO ezsearch_word VALUES (3011,'never',1);
INSERT INTO ezsearch_word VALUES (3012,'close',3);
INSERT INTO ezsearch_word VALUES (3013,'loosing',1);
INSERT INTO ezsearch_word VALUES (3014,'else',3);
INSERT INTO ezsearch_word VALUES (3015,'undefeated',1);
INSERT INTO ezsearch_word VALUES (3016,'through',1);
INSERT INTO ezsearch_word VALUES (3017,'whole',1);
INSERT INTO ezsearch_word VALUES (3018,'year',2);
INSERT INTO ezsearch_word VALUES (3019,'any',1);
INSERT INTO ezsearch_word VALUES (3020,'doubt',1);
INSERT INTO ezsearch_word VALUES (3021,'standings',1);
INSERT INTO ezsearch_word VALUES (3022,'2',1);
INSERT INTO ezsearch_word VALUES (3023,'dudes',1);
INSERT INTO ezsearch_word VALUES (3024,'3',2);
INSERT INTO ezsearch_word VALUES (3025,'giverns',1);
INSERT INTO ezsearch_word VALUES (3026,'4',1);
INSERT INTO ezsearch_word VALUES (3027,'stakes',1);
INSERT INTO ezsearch_word VALUES (3028,'5',1);
INSERT INTO ezsearch_word VALUES (3029,'heads',1);
INSERT INTO ezsearch_word VALUES (3030,'brains',1);
INSERT INTO ezsearch_word VALUES (3031,'rider',1);
INSERT INTO ezsearch_word VALUES (3032,'wins',1);
INSERT INTO ezsearch_word VALUES (3033,'dart',1);
INSERT INTO ezsearch_word VALUES (3034,'competition',1);
INSERT INTO ezsearch_word VALUES (3035,'terje',1);
INSERT INTO ezsearch_word VALUES (3036,'gunrell',1);
INSERT INTO ezsearch_word VALUES (3037,'finished',1);
INSERT INTO ezsearch_word VALUES (3038,'late',1);
INSERT INTO ezsearch_word VALUES (3039,'night',1);
INSERT INTO ezsearch_word VALUES (3040,'am',1);
INSERT INTO ezsearch_word VALUES (3041,'underdog',1);
INSERT INTO ezsearch_word VALUES (3042,'beat',1);
INSERT INTO ezsearch_word VALUES (3043,'favourite',1);
INSERT INTO ezsearch_word VALUES (3044,'celebrations',1);
INSERT INTO ezsearch_word VALUES (3045,'start',1);
INSERT INTO ezsearch_word VALUES (3046,'his',2);
INSERT INTO ezsearch_word VALUES (3047,'familiy',1);
INSERT INTO ezsearch_word VALUES (3048,'friends',2);
INSERT INTO ezsearch_word VALUES (3049,'soon',1);
INSERT INTO ezsearch_word VALUES (3050,'decided',1);
INSERT INTO ezsearch_word VALUES (3051,'fun',1);
INSERT INTO ezsearch_word VALUES (3052,'he',2);
INSERT INTO ezsearch_word VALUES (3053,'had',1);
INSERT INTO ezsearch_word VALUES (3054,'say',2);
INSERT INTO ezsearch_word VALUES (3055,'i',1);
INSERT INTO ezsearch_word VALUES (3056,'dring',1);
INSERT INTO ezsearch_word VALUES (3057,'then',1);
INSERT INTO ezsearch_word VALUES (3058,'go',1);
INSERT INTO ezsearch_word VALUES (3059,'bed',1);
INSERT INTO ezsearch_word VALUES (3060,'sleep',1);
INSERT INTO ezsearch_word VALUES (3061,'nice',1);
INSERT INTO ezsearch_word VALUES (3062,'feeling',1);
INSERT INTO ezsearch_word VALUES (3063,'today',2);
INSERT INTO ezsearch_word VALUES (3064,'insisted',1);
INSERT INTO ezsearch_word VALUES (3065,'\"big',1);
INSERT INTO ezsearch_word VALUES (3066,'summer\"',1);
INSERT INTO ezsearch_word VALUES (3067,'attempt',1);
INSERT INTO ezsearch_word VALUES (3068,'piece',1);
INSERT INTO ezsearch_word VALUES (3069,'make',1);
INSERT INTO ezsearch_word VALUES (3070,'stronger',1);
INSERT INTO ezsearch_word VALUES (3071,'challenge',1);
INSERT INTO ezsearch_word VALUES (3072,'next',1);
INSERT INTO ezsearch_word VALUES (3073,'s',1);
INSERT INTO ezsearch_word VALUES (3074,'premiership',1);
INSERT INTO ezsearch_word VALUES (3075,'crown',1);
INSERT INTO ezsearch_word VALUES (3076,'disappointed',1);
INSERT INTO ezsearch_word VALUES (3077,'finish',1);
INSERT INTO ezsearch_word VALUES (3078,'league',1);
INSERT INTO ezsearch_word VALUES (3079,'hard',1);
INSERT INTO ezsearch_word VALUES (3080,'bid',1);
INSERT INTO ezsearch_word VALUES (3081,'title',1);
INSERT INTO ezsearch_word VALUES (3082,'well',1);
INSERT INTO ezsearch_word VALUES (3083,'\"it',1);
INSERT INTO ezsearch_word VALUES (3084,'greatest',1);
INSERT INTO ezsearch_word VALUES (3085,'seasons',1);
INSERT INTO ezsearch_word VALUES (3086,'front',1);
INSERT INTO ezsearch_word VALUES (3087,'europe',1);
INSERT INTO ezsearch_word VALUES (3088,'said',1);
INSERT INTO ezsearch_word VALUES (3089,'won',1);
INSERT INTO ezsearch_word VALUES (3090,'cup',1);
INSERT INTO ezsearch_word VALUES (3091,'set',1);
INSERT INTO ezsearch_word VALUES (3092,'my',1);
INSERT INTO ezsearch_word VALUES (3093,'sights',1);
INSERT INTO ezsearch_word VALUES (3094,'much',1);
INSERT INTO ezsearch_word VALUES (3095,'higher',1);
INSERT INTO ezsearch_word VALUES (3096,'overall',1);
INSERT INTO ezsearch_word VALUES (3097,'ok',1);
INSERT INTO ezsearch_word VALUES (3098,'\"hopefully',1);
INSERT INTO ezsearch_word VALUES (3099,'even',1);
INSERT INTO ezsearch_word VALUES (3100,'better',1);
INSERT INTO ezsearch_word VALUES (3101,'really',1);
INSERT INTO ezsearch_word VALUES (3102,'important',1);
INSERT INTO ezsearch_word VALUES (3103,'summer',1);
INSERT INTO ezsearch_word VALUES (3104,'me',1);
INSERT INTO ezsearch_word VALUES (3105,'mates',1);
INSERT INTO ezsearch_word VALUES (3106,'summer.\"',1);
INSERT INTO ezsearch_word VALUES (3107,'business',4);
INSERT INTO ezsearch_word VALUES (3108,'update',2);
INSERT INTO ezsearch_word VALUES (3109,'farstad',1);
INSERT INTO ezsearch_word VALUES (3110,'department',1);
INSERT INTO ezsearch_word VALUES (3111,'service',2);
INSERT INTO ezsearch_word VALUES (3112,'local',1);
INSERT INTO ezsearch_word VALUES (3113,'readers',2);
INSERT INTO ezsearch_word VALUES (3114,'happens',1);
INSERT INTO ezsearch_word VALUES (3115,'neighborhood',1);
INSERT INTO ezsearch_word VALUES (3116,'serve',1);
INSERT INTO ezsearch_word VALUES (3117,'others',1);
INSERT INTO ezsearch_word VALUES (3118,'benefitial',1);
INSERT INTO ezsearch_word VALUES (3119,'locals',1);
INSERT INTO ezsearch_word VALUES (3120,'moved',1);
INSERT INTO ezsearch_word VALUES (3121,'away',1);
INSERT INTO ezsearch_word VALUES (3122,'wants',2);
INSERT INTO ezsearch_word VALUES (3123,'old',1);
INSERT INTO ezsearch_word VALUES (3124,'usual',1);
INSERT INTO ezsearch_word VALUES (3125,'kjell',1);
INSERT INTO ezsearch_word VALUES (3126,'mann',1);
INSERT INTO ezsearch_word VALUES (3127,'becoming',1);
INSERT INTO ezsearch_word VALUES (3128,'slang',1);
INSERT INTO ezsearch_word VALUES (3129,'problems',1);
INSERT INTO ezsearch_word VALUES (3130,'write',1);
INSERT INTO ezsearch_word VALUES (3131,'dons',1);
INSERT INTO ezsearch_word VALUES (3132,'jonas',1);
INSERT INTO ezsearch_word VALUES (3133,'goes',1);
INSERT INTO ezsearch_word VALUES (3134,'largest',1);
INSERT INTO ezsearch_word VALUES (3135,'country',1);
INSERT INTO ezsearch_word VALUES (3136,'went',1);
INSERT INTO ezsearch_word VALUES (3137,'out',2);
INSERT INTO ezsearch_word VALUES (3138,'result',1);
INSERT INTO ezsearch_word VALUES (3139,'diners',1);
INSERT INTO ezsearch_word VALUES (3140,'says',1);
INSERT INTO ezsearch_word VALUES (3141,'ceo',1);
INSERT INTO ezsearch_word VALUES (3142,'entertainment',2);
INSERT INTO ezsearch_word VALUES (3157,'quotes',1);
INSERT INTO ezsearch_word VALUES (3158,'entertaining',1);
INSERT INTO ezsearch_word VALUES (3159,'weekly',1);
INSERT INTO ezsearch_word VALUES (3160,'every',1);
INSERT INTO ezsearch_word VALUES (3161,'around',1);
INSERT INTO ezsearch_word VALUES (3162,'gossip',1);
INSERT INTO ezsearch_word VALUES (3163,'place',1);
INSERT INTO ezsearch_word VALUES (3164,'releases',1);
INSERT INTO ezsearch_word VALUES (3165,'most',1);
INSERT INTO ezsearch_word VALUES (3166,'beautiful',1);
INSERT INTO ezsearch_word VALUES (3167,'faces',1);
INSERT INTO ezsearch_word VALUES (3168,'contracts',1);
INSERT INTO ezsearch_word VALUES (3169,'payed',1);
INSERT INTO ezsearch_word VALUES (3170,'persons',1);
INSERT INTO ezsearch_word VALUES (3171,'divorce',1);
INSERT INTO ezsearch_word VALUES (3172,'find',2);
INSERT INTO ezsearch_word VALUES (3173,'become',1);
INSERT INTO ezsearch_word VALUES (3174,'president',1);
INSERT INTO ezsearch_word VALUES (3175,'word',1);
INSERT INTO ezsearch_word VALUES (3176,'possible',1);
INSERT INTO ezsearch_word VALUES (3177,'fact',1);
INSERT INTO ezsearch_word VALUES (3178,'state',1);
INSERT INTO ezsearch_word VALUES (3179,'way',1);
INSERT INTO ezsearch_word VALUES (3180,'early',1);
INSERT INTO ezsearch_word VALUES (3181,'name',1);
INSERT INTO ezsearch_word VALUES (3182,'newspapers',1);
INSERT INTO ezsearch_word VALUES (3183,'able',1);
INSERT INTO ezsearch_word VALUES (3184,'do',1);
INSERT INTO ezsearch_word VALUES (3185,'nobody',1);
INSERT INTO ezsearch_word VALUES (3186,'stay',1);
INSERT INTO ezsearch_word VALUES (3187,'tuned',1);
INSERT INTO ezsearch_word VALUES (3188,'updates',2);
INSERT INTO ezsearch_word VALUES (3189,'page',1);
INSERT INTO ezsearch_word VALUES (3190,'partners',1);
INSERT INTO ezsearch_word VALUES (3191,'touch',1);
INSERT INTO ezsearch_word VALUES (3192,'normal',1);
INSERT INTO ezsearch_word VALUES (3193,'info',1);
INSERT INTO ezsearch_word VALUES (3194,'telephone',1);
INSERT INTO ezsearch_word VALUES (3195,'numbers',1);
INSERT INTO ezsearch_word VALUES (3196,'fax',1);
INSERT INTO ezsearch_word VALUES (3197,'e',1);
INSERT INTO ezsearch_word VALUES (3198,'mail',1);
INSERT INTO ezsearch_word VALUES (3199,'addresses',1);
INSERT INTO ezsearch_word VALUES (3200,'address',1);
INSERT INTO ezsearch_word VALUES (3201,'snail',1);
INSERT INTO ezsearch_word VALUES (3202,'used',1);
INSERT INTO ezsearch_word VALUES (3203,'tip',1);
INSERT INTO ezsearch_word VALUES (3204,'guest',1);
INSERT INTO ezsearch_word VALUES (3205,'accounts',1);
INSERT INTO ezsearch_word VALUES (3206,'administrator',2);
INSERT INTO ezsearch_word VALUES (3207,'users',2);
INSERT INTO ezsearch_word VALUES (3208,'user',4);
INSERT INTO ezsearch_word VALUES (3209,'admin',1);
INSERT INTO ezsearch_word VALUES (3210,'editors',2);
INSERT INTO ezsearch_word VALUES (3211,'rights',2);
INSERT INTO ezsearch_word VALUES (3212,'handling',1);
INSERT INTO ezsearch_word VALUES (3213,'create',2);
INSERT INTO ezsearch_word VALUES (3214,'read',1);
INSERT INTO ezsearch_word VALUES (3215,'remove',1);
INSERT INTO ezsearch_word VALUES (3216,'restore',1);
INSERT INTO ezsearch_word VALUES (3217,'etc.',1);
INSERT INTO ezsearch_word VALUES (3218,'editor',3);
INSERT INTO ezsearch_word VALUES (3219,'restrictive',1);
INSERT INTO ezsearch_word VALUES (3220,'managing',1);
INSERT INTO ezsearch_word VALUES (3221,'articles',1);
INSERT INTO ezsearch_word VALUES (3222,'needs',1);
INSERT INTO ezsearch_word VALUES (3223,'approved',1);
INSERT INTO ezsearch_word VALUES (3224,'anonymous',2);
INSERT INTO ezsearch_word VALUES (3225,'group',1);
INSERT INTO ezsearch_word VALUES (3226,'setup',2);
INSERT INTO ezsearch_word VALUES (3227,'links',1);
INSERT INTO ezsearch_word VALUES (3228,'classes',1);
INSERT INTO ezsearch_word VALUES (3229,'class',1);
INSERT INTO ezsearch_word VALUES (3230,'grouplist',1);
INSERT INTO ezsearch_word VALUES (3231,'look',2);
INSERT INTO ezsearch_word VALUES (3232,'edit',2);
INSERT INTO ezsearch_word VALUES (3233,'56',1);
INSERT INTO ezsearch_word VALUES (3234,'cache',1);
INSERT INTO ezsearch_word VALUES (3235,'url',1);
INSERT INTO ezsearch_word VALUES (3236,'translator',1);
INSERT INTO ezsearch_word VALUES (3237,'urltranslator',1);
INSERT INTO ezsearch_word VALUES (3238,'news_package',1);
INSERT INTO ezsearch_word VALUES (3239,'copyright',1);
INSERT INTO ezsearch_word VALUES (3240,'&copy',1);
INSERT INTO ezsearch_word VALUES (3241,'ez',1);
INSERT INTO ezsearch_word VALUES (3242,'systems',1);
INSERT INTO ezsearch_word VALUES (3243,'1999',1);
INSERT INTO ezsearch_word VALUES (3244,'2004',1);
INSERT INTO ezsearch_word VALUES (3245,'ini',3);
INSERT INTO ezsearch_word VALUES (3246,'settings',3);
INSERT INTO ezsearch_word VALUES (3247,'common',2);
INSERT INTO ezsearch_word VALUES (3248,'296',1);

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


INSERT INTO ezsection VALUES (1,'Content section','','ezcontentnavigationpart');
INSERT INTO ezsection VALUES (2,'Users','','ezusernavigationpart');
INSERT INTO ezsection VALUES (3,'Media','','ezmedianavigationpart');
INSERT INTO ezsection VALUES (11,'Set up object','','ezsetupnavigationpart');

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


INSERT INTO ezsession VALUES ('58c1156f4d83dfd838ec374bdf1e359c',1076839580,'eZUserLoggedInID|N;eZUserInfoCache_Timestamp|i:1076580379;eZUserInfoCache|a:1:{i:10;a:5:{s:16:\"contentobject_id\";s:2:\"10\";s:5:\"login\";s:9:\"anonymous\";s:5:\"email\";s:12:\"nospam@ez.no\";s:13:\"password_hash\";s:32:\"4e6f6184135228ccd45f8233d72a0363\";s:18:\"password_hash_type\";s:1:\"2\";}}eZUserGroupsCache_Timestamp|i:1076580379;eZUserGroupsCache|a:1:{i:10;a:1:{i:0;a:1:{s:2:\"id\";s:3:\"294\";}}}PermissionCachedForUserID|s:2:\"10\";PermissionCachedForUserIDTimestamp|i:1076580379;UserRoles|a:1:{i:0;a:2:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:9:\"Anonymous\";}}UserPolicies|a:1:{i:1;a:6:{i:0;a:5:{s:2:\"id\";s:3:\"396\";s:7:\"role_id\";s:1:\"1\";s:11:\"module_name\";s:4:\"user\";s:13:\"function_name\";s:5:\"login\";s:10:\"limitation\";s:1:\"*\";}i:1;a:5:{s:2:\"id\";s:3:\"397\";s:7:\"role_id\";s:1:\"1\";s:11:\"module_name\";s:7:\"content\";s:13:\"function_name\";s:4:\"read\";s:10:\"limitation\";s:0:\"\";}i:2;a:5:{s:2:\"id\";s:3:\"398\";s:7:\"role_id\";s:1:\"1\";s:11:\"module_name\";s:7:\"content\";s:13:\"function_name\";s:6:\"create\";s:10:\"limitation\";s:0:\"\";}i:3;a:5:{s:2:\"id\";s:3:\"399\";s:7:\"role_id\";s:1:\"1\";s:11:\"module_name\";s:7:\"content\";s:13:\"function_name\";s:4:\"edit\";s:10:\"limitation\";s:0:\"\";}i:4;a:5:{s:2:\"id\";s:3:\"400\";s:7:\"role_id\";s:1:\"1\";s:11:\"module_name\";s:7:\"content\";s:13:\"function_name\";s:11:\"versionread\";s:10:\"limitation\";s:0:\"\";}i:5;a:5:{s:2:\"id\";s:3:\"401\";s:7:\"role_id\";s:1:\"1\";s:11:\"module_name\";s:3:\"rss\";s:13:\"function_name\";s:4:\"feed\";s:10:\"limitation\";s:1:\"*\";}}}CanInstantiateClassesCachedForUser|s:2:\"10\";ClassesCachedTimestamp|i:1076580380;CanInstantiateClasses|i:1;ClassesCachedForUser|s:2:\"10\";UserLimitations|a:1:{i:398;a:1:{i:0;a:6:{s:2:\"id\";s:3:\"315\";s:9:\"policy_id\";s:3:\"398\";s:10:\"identifier\";s:5:\"Class\";s:7:\"role_id\";s:1:\"0\";s:11:\"module_name\";s:7:\"content\";s:13:\"function_name\";s:6:\"create\";}}}UserLimitationValues|a:1:{i:315;a:1:{i:0;a:3:{s:2:\"id\";s:3:\"658\";s:13:\"limitation_id\";s:3:\"315\";s:5:\"value\";s:2:\"26\";}}}CanInstantiateClassList|a:1:{i:0;a:2:{s:2:\"id\";s:2:\"26\";s:4:\"name\";s:7:\"Comment\";}}eZPreferences|a:3:{s:13:\"bookmark_menu\";b:0;s:12:\"history_menu\";b:0;s:13:\"advanced_menu\";b:0;}');
INSERT INTO ezsession VALUES ('f52e2e49b448bc9c48598d7085c888c7',1076837365,'eZUserInfoCache_Timestamp|i:1076580510;eZUserGroupsCache_Timestamp|i:1076580510;PermissionCachedForUserID|s:2:\"14\";PermissionCachedForUserIDTimestamp|i:1076580510;eZUserDiscountRulesTimestamp|i:1076580652;eZUserDiscountRules10|a:0:{}eZGlobalSection|a:1:{s:2:\"id\";s:2:\"11\";}ClassesCachedTimestamp|i:1076580684;CanInstantiateClasses|i:1;eZUserLoggedInID|s:2:\"14\";eZUserInfoCache|a:1:{i:14;a:5:{s:16:\"contentobject_id\";s:2:\"14\";s:5:\"login\";s:5:\"admin\";s:5:\"email\";s:12:\"nospam@ez.no\";s:13:\"password_hash\";s:32:\"c78e3b0f3d9244ed8c6d1c29464bdff9\";s:18:\"password_hash_type\";s:1:\"2\";}}eZUserGroupsCache|a:1:{i:14;a:1:{i:0;a:1:{s:2:\"id\";s:2:\"12\";}}}UserRoles|a:1:{i:0;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:13:\"Administrator\";}}UserPolicies|a:1:{i:2;a:1:{i:0;a:5:{s:2:\"id\";s:3:\"308\";s:7:\"role_id\";s:1:\"2\";s:11:\"module_name\";s:1:\"*\";s:13:\"function_name\";s:1:\"*\";s:10:\"limitation\";s:1:\"*\";}}}CanInstantiateClassesCachedForUser|s:2:\"14\";CanInstantiateClassList|a:12:{i:0;a:2:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Folder\";}i:1;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:7:\"Article\";}i:2;a:2:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:10:\"User group\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:4:\"User\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:5:\"Image\";}i:5;a:2:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:9:\"Info page\";}i:6;a:2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:4:\"File\";}i:7;a:2:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:10:\"Setup link\";}i:8;a:2:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:13:\"Template look\";}i:9;a:2:{s:2:\"id\";s:2:\"25\";s:4:\"name\";s:4:\"Poll\";}i:10;a:2:{s:2:\"id\";s:2:\"26\";s:4:\"name\";s:7:\"Comment\";}i:11;a:2:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:19:\"Common ini settings\";}}eZPreferences|a:3:{s:13:\"bookmark_menu\";b:0;s:12:\"history_menu\";b:0;s:13:\"advanced_menu\";s:2:\"on\";}LastAccessesURI|s:21:\"/content/view/full/46\";eZUserDiscountRules14|a:0:{}ClassesCachedForUser|s:2:\"14\";FromGroupID|b:0;');

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
INSERT INTO ezurl_object_link VALUES (2,800,1);
INSERT INTO ezurl_object_link VALUES (3,807,1);
INSERT INTO ezurl_object_link VALUES (4,814,1);

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
INSERT INTO ezurlalias VALUES (14,'users/anonymous_user','a37b7463e2c21098fa1a729dad4b4437','content/view/full/11',1,228,0);
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
INSERT INTO ezurlalias VALUES (193,'news/politics','70683aff56043252ef658ccbfc6afa31','content/view/full/188',1,0,0);
INSERT INTO ezurlalias VALUES (125,'discussions/forum_main_group/music_discussion/latest_msg_not_sticky','70cf693961dcdd67766bf941c3ed2202','content/view/full/130',1,0,0);
INSERT INTO ezurlalias VALUES (126,'discussions/forum_main_group/music_discussion/not_sticky_2','969f470c93e2131a0884648b91691d0b','content/view/full/131',1,0,0);
INSERT INTO ezurlalias VALUES (34,'setup/look_and_feel/intranet','6d6a9d6e8f6cadb080fffb1276dd1e5e','content/view/full/54',1,203,0);
INSERT INTO ezurlalias VALUES (124,'discussions/forum_main_group/music_discussion/new_topic_sticky/reply','f3dd8b6512a0b04b426ef7d7307b7229','content/view/full/129',1,0,0);
INSERT INTO ezurlalias VALUES (194,'news/politics/breaking_news','d0a69056576563cde94a120a52328d88','content/view/full/182',1,0,0);
INSERT INTO ezurlalias VALUES (122,'about_this_forum','55803ba2746d617ca86e2a61b1d32d8b','content/view/full/127',1,219,0);
INSERT INTO ezurlalias VALUES (123,'discussions/forum_main_group/music_discussion/new_topic_sticky','bf37b4a370ddb3935d0625a5b348dd20','content/view/full/128',1,0,0);
INSERT INTO ezurlalias VALUES (99,'setup/look_and_feel/corporate','ab9f681938bd76b97b3ab1256b61119e','content/view/full/54',1,203,0);
INSERT INTO ezurlalias VALUES (90,'contact/companies/foo_bar_corp/fido_barida','ce1be6fe76c4671d8616c8bf1b5365de','content/view/full/102',1,0,0);
INSERT INTO ezurlalias VALUES (93,'setup/look_and_feel/intranetyy','53849c55dbaf18cf2c0b278123c9a7b2','content/view/full/54',1,203,0);
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
INSERT INTO ezurlalias VALUES (187,'news/breaking_news','d8509229115663eb7fdf2bbbee3f255f','content/view/full/182',1,194,0);
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
INSERT INTO ezurlalias VALUES (115,'setup/look_and_feel/forum','00d91935e17d76f152f7aaf0c0defac2','content/view/full/54',1,203,0);
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
INSERT INTO ezurlalias VALUES (201,'news/business/latest_business_update','dd5b261d06692ab08f2fcaa55e8e1d53','content/view/full/192',1,0,0);
INSERT INTO ezurlalias VALUES (202,'news/entertainment/arnold_for_governor','bb8a6d9337b49e5432eaa5e3fd2f9e4f','content/view/full/193',1,0,0);
INSERT INTO ezurlalias VALUES (149,'discussions/forum_main_group/music_discussion','a1a79985f113d5b05b22c9686b46b175','content/view/full/114',1,0,0);
INSERT INTO ezurlalias VALUES (150,'discussions/music_discussion/*','2ec2a3bfcf01ad3f1323390ab26dfeac','discussions/forum_main_group/music_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (151,'discussions/forum_main_group/sports_discussion','b68c5a82b8b2035eeee5788cb223bb7e','content/view/full/115',1,0,0);
INSERT INTO ezurlalias VALUES (152,'discussions/sports_discussion/*','7acbf48218ca6e1d80c267911860d34f','discussions/forum_main_group/sports_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (153,'about_me','50793f253d2dc015e93a2f75163b0894','content/view/full/127',1,219,0);
INSERT INTO ezurlalias VALUES (160,'blogs/computers/special_things_happened_today/brd_farstad','4d1dddb2000bdf69e822fb41d4000919','content/view/full/157',1,0,0);
INSERT INTO ezurlalias VALUES (161,'blogs/computers/special_things_happened_today/bbb','afc9fd5431105082994247c0ae0992b3','content/view/full/158',1,0,0);
INSERT INTO ezurlalias VALUES (200,'news/entertainment','1c0fefbd843e7961bb8062c96e128683','content/view/full/191',1,0,0);
INSERT INTO ezurlalias VALUES (212,'news/entertainment/will_he_become_president','9e85708a4fa2190e5bbea017f7574938','content/view/full/201',1,0,0);
INSERT INTO ezurlalias VALUES (186,'news','508c75c8507a2ae5223dfd2faeb98122','content/view/full/181',1,0,0);
INSERT INTO ezurlalias VALUES (188,'news/new_ez_publish_package','21e270dc6369c28ec9eead1ceb474af8','content/view/full/183',1,217,0);
INSERT INTO ezurlalias VALUES (189,'news/politics/breaking_news/kewl_news','ed88dc6a9315d5b9d832ce7282121233','content/view/full/184',1,0,0);
INSERT INTO ezurlalias VALUES (168,'blogs/computers/special_things_happened_today/brd','40f4dda88233928fac915274a90476b5','content/view/full/165',1,0,0);
INSERT INTO ezurlalias VALUES (170,'blogs/computers/special_things_happened_today/kjh','0cca438ee3d1d3b2cdfaa9d45dbac2a7','content/view/full/167',1,0,0);
INSERT INTO ezurlalias VALUES (197,'news/sports','6123ea62d93ed020f31e6e7920b10d0f','content/view/full/189',1,0,0);
INSERT INTO ezurlalias VALUES (198,'news/sports/new_ez_publish_package','7c8632a535a781907dbac14d16d83570','content/view/full/183',1,217,0);
INSERT INTO ezurlalias VALUES (195,'news/breaking_news/*','1c84412822823453849fbfd423dce066','news/politics/breaking_news/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (196,'news/technology/google_indexes','25792456c7959c09a7cafef33e2e49a1','content/view/full/186',1,0,0);
INSERT INTO ezurlalias VALUES (175,'blogs/computers/new_big_discovery_today/brd','2aee5cbd251dbc484e78fba61e5bb7cf','content/view/full/172',1,0,0);
INSERT INTO ezurlalias VALUES (176,'polls','952e8cf2c863b8ddc656bac6ad0b729b','content/view/full/173',1,0,0);
INSERT INTO ezurlalias VALUES (211,'news/entertainment/entertainment_weekly','d4ca4e7aaa28c898b00e05522ed3d1b1','content/view/full/200',1,0,0);
INSERT INTO ezurlalias VALUES (178,'polls/which_one_is_the_best_of_matrix_movies','bb0ff8ca87eb02ff2219a32c5c73b7f4','content/view/full/174',1,0,0);
INSERT INTO ezurlalias VALUES (179,'blogs/computers/new_big_discovery_today/ghghj','cd10884873caf4a20621b35199f331c4','content/view/full/175',1,0,0);
INSERT INTO ezurlalias VALUES (191,'news/google_indexes','50a1329cdeef629af68254e03c9fadd3','content/view/full/186',1,196,0);
INSERT INTO ezurlalias VALUES (192,'news/technology','19fa0ec362258a0c209193afd31d8040','content/view/full/187',1,0,0);
INSERT INTO ezurlalias VALUES (182,'setup/look_and_feel/blog','a0aa455a1c24b5d1d0448546c83836cf','content/view/full/54',1,203,0);
INSERT INTO ezurlalias VALUES (183,'blogs/entertainment/a_pirates_life/kjlh','dbf2c1455eff8c6100181582298d197f','content/view/full/178',1,0,0);
INSERT INTO ezurlalias VALUES (184,'blogs/entertainment/a_pirates_life/kjhkjh','e73acc89936bc771971a97eb45d51c66','content/view/full/179',1,0,0);
INSERT INTO ezurlalias VALUES (199,'news/business','32407e4d99060ebf72baf5f3fcd15130','content/view/full/190',1,0,0);
INSERT INTO ezurlalias VALUES (203,'setup/look_and_feel/news','a00d016e1fa55a6285b2e58580a81591','content/view/full/54',1,0,0);
INSERT INTO ezurlalias VALUES (204,'about_this_service','a05dbbe0742bbd70c3c4af8dd994e805','content/view/full/127',1,219,0);
INSERT INTO ezurlalias VALUES (205,'contact_information','ed8e2b815e2f24e61286fb45b86d3868','content/view/full/194',1,0,0);
INSERT INTO ezurlalias VALUES (206,'help','657f8b8da628ef83cf69101b6817150a','content/view/full/195',1,0,0);
INSERT INTO ezurlalias VALUES (207,'news/politics/breaking_news/amazing','7b29cd3538b23e040fcd73b0aece42b9','content/view/full/196',1,0,0);
INSERT INTO ezurlalias VALUES (208,'news/business/business_is','4026dcfc2998ab67a010c354201a7c03','content/view/full/197',1,215,0);
INSERT INTO ezurlalias VALUES (209,'news/politics/breaking_news/fgdfg','76bbf2611ecc1761cdf7841df039cadd','content/view/full/198',1,0,0);
INSERT INTO ezurlalias VALUES (210,'news/politics/breaking_news/sdsdd','fed2296e54048a4a01247a0e21141c39','content/view/full/199',1,0,0);
INSERT INTO ezurlalias VALUES (213,'news/technology/final_release_of_abc','0f094451a41d9bbbf2ec5e412cbdfdea','content/view/full/202',1,0,0);
INSERT INTO ezurlalias VALUES (214,'news/business/dons_jonas_goes_down','907abedce4248de6040ef2797f580b21','content/view/full/203',1,0,0);
INSERT INTO ezurlalias VALUES (215,'news/business/business_as_usual','b39853864be2a521017ed2ee5c5b3d0e','content/view/full/197',1,0,0);
INSERT INTO ezurlalias VALUES (216,'news/politics/arnold_for_governor','b42b48edf57b3ddca3413eec95765358','content/view/full/204',1,0,0);
INSERT INTO ezurlalias VALUES (217,'news/sports/leauge_champion','846e90f12c3474ef869967621ddb9a3a','content/view/full/183',1,0,0);
INSERT INTO ezurlalias VALUES (218,'news/sports/rider_wins_dart_competition','c07ac268c486dc1df3f140aabe96304a','content/view/full/205',1,0,0);
INSERT INTO ezurlalias VALUES (219,'about_this_website','7962ee24a05f526a5cd231165095edc8','content/view/full/127',1,0,0);
INSERT INTO ezurlalias VALUES (222,'news/technology/new_top_fair','4996cc29e5bc760cfc5ed358d4f8754d','content/view/full/208',1,0,0);
INSERT INTO ezurlalias VALUES (221,'polls/what_season_is_the_best','9c93a6dc8b98dfe90e0d3af17fc62342','content/view/full/207',1,0,0);
INSERT INTO ezurlalias VALUES (223,'users/editors__1','502a965e0461eb30ac1314721d597576','content/view/full/209',1,224,0);
INSERT INTO ezurlalias VALUES (224,'users/content_editors','3613e20834f1b00618d3cecbcd6e3362','content/view/full/209',1,0,0);
INSERT INTO ezurlalias VALUES (225,'users/editors/editor_user','cefb13703e6d5581d4626ea1569355a9','content/view/full/210',1,0,0);
INSERT INTO ezurlalias VALUES (226,'users/content_editors/content_editor','e99ec4328878a60b80154e1a3c8cfff3','content/view/full/211',1,0,0);
INSERT INTO ezurlalias VALUES (227,'users/anonymous_users','3ae1aac958e1c82013689d917d34967a','content/view/full/212',1,0,0);
INSERT INTO ezurlalias VALUES (228,'users/anonymous_users/anonymous_user','aad93975f09371695ba08292fd9698db','content/view/full/11',1,0,0);
INSERT INTO ezurlalias VALUES (229,'setup/ini_settings','baacc3a9676c182946def9cf88501568','content/view/full/213',1,0,0);
INSERT INTO ezurlalias VALUES (230,'setup/ini_settings/common_ini_settings','4a3dd9601781555746973795695492f8','content/view/full/214',1,0,0);
INSERT INTO ezurlalias VALUES (231,'setup/setup_links/common_ini_settings','e85ca643d417d1d3b7459bc4eef7a1f0','content/view/full/215',1,0,0);

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
INSERT INTO ezuser VALUES (292,'editor','nospam@ez.no',2,'63451ebabfbacca0f584a0b8a422c95d');
INSERT INTO ezuser VALUES (293,'content','nospam@ez.no',2,'61eb91fc7d7961b5c0540878aafd5e0f');

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
INSERT INTO ezuser_role VALUES (35,1,291);
INSERT INTO ezuser_role VALUES (36,12,291);
INSERT INTO ezuser_role VALUES (37,10,13);

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
INSERT INTO ezuser_setting VALUES (292,1,0);
INSERT INTO ezuser_setting VALUES (293,1,0);

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


INSERT INTO ezworkflow VALUES (1,0,1,'group_ezserial','Approval of content',14,14,1070976484,1072181189);

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


INSERT INTO ezworkflow_event VALUES (1,0,1,'event_ezapprove','Approval of all objects in content section.',292,0,0,0,'1','12,291,294','','',1);

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



