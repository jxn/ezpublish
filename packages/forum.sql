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


INSERT INTO ezcontentbrowserecent VALUES (1,14,44,1076579807,'Setup');
INSERT INTO ezcontentbrowserecent VALUES (2,14,172,1076579860,'Common ini settings');
INSERT INTO ezcontentbrowserecent VALUES (3,14,46,1076579921,'Setup links');

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
INSERT INTO ezcontentclass VALUES (2,0,'Article','article','<title>',14,14,1024392098,1066907423);
INSERT INTO ezcontentclass VALUES (3,0,'User group','user_group','<name>',14,14,1024392098,1048494743);
INSERT INTO ezcontentclass VALUES (4,0,'User','user','<first_name> <last_name>',14,14,1024392098,1068123024);
INSERT INTO ezcontentclass VALUES (5,0,'Image','image','<name>',8,14,1031484992,1048494784);
INSERT INTO ezcontentclass VALUES (10,0,'Info page','info_page','<name>',14,14,1052385274,1052385353);
INSERT INTO ezcontentclass VALUES (12,0,'File','file','<name>',14,14,1052385472,1052385669);
INSERT INTO ezcontentclass VALUES (14,0,'Setup link','setup_link','<title>',14,14,1066383719,1066383885);
INSERT INTO ezcontentclass VALUES (15,0,'Template look','template_look','<title>',14,14,1066390045,1069416134);
INSERT INTO ezcontentclass VALUES (20,0,'Forum','forum','<name>',14,14,1068036085,1068564509);
INSERT INTO ezcontentclass VALUES (21,0,'Forum topic','forum_topic','<subject>',14,14,1068036127,1068048102);
INSERT INTO ezcontentclass VALUES (22,0,'Forum reply','forum_reply','<subject>',14,14,1068041812,1068043948);
INSERT INTO ezcontentclass VALUES (23,0,'Common ini settings','common_ini_settings','<name>',14,14,1076579665,1076579763);

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
INSERT INTO ezcontentclass_attribute VALUES (202,0,15,'footer','Footer','ezstring',1,0,8,0,0,0,0,0,0,0,0,'Copyright &copy;','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (161,0,15,'id','id','ezstring',1,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (180,0,15,'email','Email','ezinisetting',0,0,6,1,0,0,0,0,0,0,0,'site.ini','MailSettings','AdminEmail','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (186,0,20,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (187,0,20,'description','Description','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (201,0,20,'image','Image','ezimage',0,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (196,0,15,'siteurl','Site URL','ezinisetting',0,0,7,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteURL','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (1,0,2,'title','Title','ezstring',1,1,1,255,0,0,0,0,0,0,0,'New article','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (177,0,2,'frontpage_image','Frontpage image','ezinteger',0,0,6,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (123,0,2,'enable_comments','Enable comments','ezboolean',0,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (122,0,2,'thumbnail','Thumbnail','ezimage',0,0,4,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (121,0,2,'body','Body','ezxmltext',1,0,3,20,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (120,0,2,'intro','Intro','ezxmltext',1,1,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (198,0,4,'location','Location','ezstring',1,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (199,0,4,'signature','Signature','eztext',1,0,6,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (160,0,15,'sitestyle','Sitestyle','ezpackage',0,0,4,1,0,0,0,0,0,0,0,'sitestyle','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (159,0,15,'image','Image','ezimage',0,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (191,0,22,'subject','Subject','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (193,0,22,'message','Message','eztext',1,0,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (190,0,21,'sticky','Sticky','ezboolean',1,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (194,0,21,'notify_me_about_updates','Notify me about updates','ezsubtreesubscription',0,0,4,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (189,0,21,'message','Message','eztext',1,1,2,15,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (188,0,21,'subject','Subject','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (157,0,15,'title','Title','ezinisetting',0,0,1,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteName','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (158,0,15,'meta_data','Meta data','ezinisetting',0,0,2,6,0,0,0,0,0,0,0,'site.ini','SiteSettings','MetaDataArray','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (200,0,4,'user_image','User image','ezimage',0,0,7,1,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (197,0,4,'title','Title','ezstring',1,0,4,25,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (12,0,4,'user_account','User account','ezuser',1,1,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (9,0,4,'last_name','Last name','ezstring',1,1,2,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (8,0,4,'first_name','First name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (215,0,23,'imagelarge','Image Large Size','ezinisetting',0,0,13,6,0,0,0,0,0,0,0,'image.ini','large','Filters','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (214,0,23,'imagemedium','Image Medium Size','ezinisetting',0,0,12,6,0,0,0,0,0,0,0,'image.ini','medium','Filters','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (213,0,23,'imagesmall','Image Small Size','ezinisetting',0,0,11,6,0,0,0,0,0,0,0,'image.ini','small','Filters','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (212,0,23,'templatecompile','Template Compile','ezinisetting',0,0,10,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCompile','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (211,0,23,'templatecache','Template Cache','ezinisetting',0,0,9,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCache','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (210,0,23,'viewcaching','View Caching','ezinisetting',0,0,8,2,0,0,0,0,0,0,0,'site.ini','ContentSettings','ViewCaching','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (209,0,23,'debugredirection','Debug Redirection','ezinisetting',0,0,7,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugRedirection','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (208,0,23,'debugiplist','Debug IP List','ezinisetting',0,0,6,6,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugIPList','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (207,0,23,'debugbyip','Debug By IP','ezinisetting',0,0,5,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugByIP','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (206,0,23,'debugoutput','Debug Output','ezinisetting',0,0,4,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugOutput','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (205,0,23,'defaultpage','Default Page','ezinisetting',0,0,3,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','DefaultPage','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (203,0,23,'name','Name','ezstring',1,0,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (204,0,23,'indexpage','Index Page','ezinisetting',0,0,2,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','IndexPage','4;5','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);

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
INSERT INTO ezcontentclass_classgroup VALUES (22,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (23,0,4,'Setup');

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


INSERT INTO ezcontentobject VALUES (1,14,1,1,'Forum',10,0,1033917596,1074094345,1,'');
INSERT INTO ezcontentobject VALUES (4,14,2,3,'Users',1,0,1033917596,1033917596,1,NULL);
INSERT INTO ezcontentobject VALUES (10,14,2,4,'Anonymous User',2,0,1033920665,1072180887,1,'');
INSERT INTO ezcontentobject VALUES (11,14,2,3,'Guest accounts',1,0,1033920746,1033920746,1,NULL);
INSERT INTO ezcontentobject VALUES (12,14,2,3,'Administrator users',1,0,1033920775,1033920775,1,NULL);
INSERT INTO ezcontentobject VALUES (13,14,2,3,'Editors',1,0,1033920794,1033920794,1,NULL);
INSERT INTO ezcontentobject VALUES (14,14,2,4,'Administrator User',7,0,1033920830,1069765740,1,'');
INSERT INTO ezcontentobject VALUES (41,14,3,1,'Media',1,0,1060695457,1060695457,1,'');
INSERT INTO ezcontentobject VALUES (42,14,11,1,'Setup',1,0,1066383068,1066383068,1,'');
INSERT INTO ezcontentobject VALUES (43,14,11,14,'Classes',9,0,1066384365,1068825487,1,'');
INSERT INTO ezcontentobject VALUES (44,14,11,1,'Setup links',1,0,1066384457,1066384457,1,'');
INSERT INTO ezcontentobject VALUES (45,14,11,14,'Look and feel',10,0,1066388816,1068825503,1,'');
INSERT INTO ezcontentobject VALUES (46,14,11,1,'Look and feel',2,0,1066389805,1066389902,1,'');
INSERT INTO ezcontentobject VALUES (47,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (122,14,1,5,'New Image',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (49,14,4,1,'News',1,0,1066398020,1066398020,1,'');
INSERT INTO ezcontentobject VALUES (51,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (53,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (56,14,11,15,'Forum',59,0,1066643397,1069841894,1,'');
INSERT INTO ezcontentobject VALUES (160,14,4,2,'News bulletin',1,0,1068047455,1068047455,1,'');
INSERT INTO ezcontentobject VALUES (161,14,1,10,'About this forum',4,0,1068047603,1069763531,1,'');
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
INSERT INTO ezcontentobject VALUES (226,14,1,20,'Sport forum',1,0,1069766830,1069766830,1,'');
INSERT INTO ezcontentobject VALUES (138,14,1,1,'Discussions',2,0,1068036060,1068041936,1,'');
INSERT INTO ezcontentobject VALUES (115,14,11,14,'Cache',4,0,1066991725,1068825448,1,'');
INSERT INTO ezcontentobject VALUES (116,14,11,14,'URL translator',3,0,1066992054,1068825521,1,'');
INSERT INTO ezcontentobject VALUES (117,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (141,14,1,20,'Music discussion',4,0,1068036586,1069766561,1,'');
INSERT INTO ezcontentobject VALUES (143,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (144,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (145,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (228,14,1,22,'Who is Odd?',1,0,1069767050,1069767050,1,'');
INSERT INTO ezcontentobject VALUES (227,14,1,21,'What is the best football team in Europe?',1,0,1069766947,1069766947,1,'');
INSERT INTO ezcontentobject VALUES (187,14,1,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (189,14,1,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (232,14,1,21,'Choose the correct forum',2,0,1069768853,1069768887,1,'');
INSERT INTO ezcontentobject VALUES (231,14,1,21,'How to Register a New User',2,0,1069768747,1069768899,1,'');
INSERT INTO ezcontentobject VALUES (211,14,1,1,'Forum main group',2,0,1068640085,1068640157,1,'');
INSERT INTO ezcontentobject VALUES (230,14,1,1,'Forum rules',1,0,1069768639,1069768639,1,'');
INSERT INTO ezcontentobject VALUES (229,14,1,22,'Gulset are better than Odd',1,0,1069768552,1069768552,1,'');
INSERT INTO ezcontentobject VALUES (217,14,1,22,'New Forum reply',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (218,14,4,2,'Choose the correct forum',1,0,1069763601,1069763601,1,'');
INSERT INTO ezcontentobject VALUES (219,14,4,2,'Latest forum: Dreamcars',1,0,1069763878,1069763878,1,'');
INSERT INTO ezcontentobject VALUES (220,14,1,20,'Dreamcars',2,0,1069763952,1069844000,1,'');
INSERT INTO ezcontentobject VALUES (221,14,1,21,'Koenigsegg is the master',1,0,1069765267,1069765267,1,'');
INSERT INTO ezcontentobject VALUES (222,14,1,21,'Can\'t leave Ferrari F40 out of it',1,0,1069765545,1069765545,1,'');
INSERT INTO ezcontentobject VALUES (223,14,1,22,'Königsegg is the best',2,0,1069765640,1069765670,1,'');
INSERT INTO ezcontentobject VALUES (224,14,1,21,'What is wrong with pop?',1,0,1069766105,1069766105,1,'');
INSERT INTO ezcontentobject VALUES (225,14,1,22,'Madonna is one of the greats',1,0,1069766473,1069766473,1,'');
INSERT INTO ezcontentobject VALUES (233,14,2,3,'Anonymous Users',1,0,1072180863,1072180863,1,'');
INSERT INTO ezcontentobject VALUES (234,14,11,1,'Common ini settings',1,0,1076579807,1076579807,1,'');
INSERT INTO ezcontentobject VALUES (235,14,11,23,'Common ini settings',2,0,1076579860,1076579954,1,'');
INSERT INTO ezcontentobject VALUES (236,14,11,14,'Common ini settings',1,0,1076579921,1076579921,1,'');

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
INSERT INTO ezcontentobject_attribute VALUES (125,'eng-GB',1,49,4,'News',0,0,0,0,'news','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (126,'eng-GB',1,49,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (832,'eng-GB',2,232,189,'Use a few minutes to consider which forum you should post to. Posting it to a \"General\" forum is not as effective as posting to the \"Install\" forum if you question is about install-related questions. Don\'t post in several different forums. If your question belongs in the \"Install\" forum, posting it in \"General\" or \"Developer\" aren\'t very helpful. \r\nConsider this: If you post to the wrong forum the chances for someone actually answering it is lower than if you post it in the correct forum. Furthermore your off-topic post will just make it harder for those posting correctly to be noticed among those who post in the wrong forums.\r\n',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (831,'eng-GB',2,232,188,'Choose the correct forum',0,0,0,0,'choose the correct forum','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',4,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',5,56,160,'intranet1',0,0,0,0,'intranet1','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (521,'eng-GB',1,160,177,'',0,0,0,0,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (516,'eng-GB',1,160,1,'News bulletin',0,0,0,0,'news bulletin','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (517,'eng-GB',1,160,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>This is the latest news from lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall . lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (518,'eng-GB',1,160,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>This is the latest news from lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall . lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall </paragraph>\n  <paragraph>This is the latest news from lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall . lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall lorem ipsum dill dall </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (519,'eng-GB',1,160,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"news_bulletin.\"\n         suffix=\"\"\n         basename=\"news_bulletin\"\n         dirpath=\"var/forum/storage/images/news/news_bulletin/519-1-eng-GB\"\n         url=\"var/forum/storage/images/news/news_bulletin/519-1-eng-GB/news_bulletin.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (520,'eng-GB',1,160,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',59,56,160,'forum_red',0,0,0,0,'forum_red','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',7,56,159,'',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (153,'eng-GB',7,56,160,'left_menu',0,0,0,0,'left_menu','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',7,56,161,'intranet888',0,0,0,0,'intranet888','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (329,'eng-GB',3,116,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (330,'eng-GB',3,116,155,'content/urltranslator/',0,0,0,0,'content/urltranslator/','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (796,'eng-GB',2,220,187,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>What is your dreamcar? Ferrari, Diablo or Beetle!</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (829,'eng-GB',2,231,190,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (797,'eng-GB',2,220,201,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"dreamcars.\"\n         suffix=\"\"\n         basename=\"dreamcars\"\n         dirpath=\"var/forum/storage/images/discussions/forum_main_group/dreamcars/797-2-eng-GB\"\n         url=\"var/forum/storage/images/discussions/forum_main_group/dreamcars/797-2-eng-GB/dreamcars.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069763923\">\n  <original attribute_id=\"797\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (818,'eng-GB',1,227,189,'It is Odd Grenland from Skien and Norway:-) Give the team five years and they will rule. They have many good players and are all very young.',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (819,'eng-GB',1,227,190,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (820,'eng-GB',1,227,194,'',0,0,0,0,'','ezsubtreesubscription');
INSERT INTO ezcontentobject_attribute VALUES (817,'eng-GB',1,227,188,'What is the best football team in Europe?',0,0,0,0,'what is the best football team in europe?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (816,'eng-GB',1,226,201,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"sport_forum.\"\n         suffix=\"\"\n         basename=\"sport_forum\"\n         dirpath=\"var/forum/storage/images/discussions/forum_main_group/sport_forum/816-1-eng-GB\"\n         url=\"var/forum/storage/images/discussions/forum_main_group/sport_forum/816-1-eng-GB/sport_forum.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069766768\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (815,'eng-GB',1,226,187,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Everybody has an opinion about sport. I can&apos;t live without sports and can not understand anyone who can while you hate everything about it.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (814,'eng-GB',1,226,186,'Sport forum',0,0,0,0,'sport forum','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (150,'eng-GB',59,56,157,'Forum',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (152,'eng-GB',59,56,159,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"forum.gif\"\n         suffix=\"gif\"\n         basename=\"forum\"\n         dirpath=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB\"\n         url=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum.gif\"\n         original_filename=\"forum.gif\"\n         mime_type=\"original\"\n         width=\"165\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069841319\">\n  <original attribute_id=\"152\"\n            attribute_version=\"58\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"forum_reference.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB\"\n         url=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_reference.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069841321\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"forum_medium.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB\"\n         url=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_medium.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"1069841321\"\n         is_valid=\"1\" />\n  <alias name=\"logo\"\n         filename=\"forum_logo.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB\"\n         url=\"var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_logo.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-447475028\"\n         timestamp=\"1069843348\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (828,'eng-GB',2,231,189,'You can register a new user by pressing the \"Login\" button here.\r\nAs soon as you have filled in the information you have created an account and have the privileges that comes with that.\r\n',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (834,'eng-GB',2,232,194,'',0,0,0,0,'','ezsubtreesubscription');
INSERT INTO ezcontentobject_attribute VALUES (827,'eng-GB',2,231,188,'How to Register a New User',0,0,0,0,'how to register a new user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (833,'eng-GB',2,232,190,'',1,0,0,1,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (151,'eng-GB',59,56,158,'author=eZ systems package team\ncopyright=eZ systems\ndescription=Content Management System\nkeywords=cms',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (102,'eng-GB',9,43,152,'Classes',0,0,0,0,'classes','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (325,'eng-GB',4,115,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (326,'eng-GB',4,115,155,'setup/cache',0,0,0,0,'setup/cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (103,'eng-GB',9,43,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"classes.png\"\n         suffix=\"png\"\n         basename=\"classes\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB/classes.png\"\n         original_filename=\"gnome-settings.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"103\"\n            attribute_version=\"8\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"classes_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"classes_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"classes_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (830,'eng-GB',2,231,194,'',1,0,0,0,'','ezsubtreesubscription');
INSERT INTO ezcontentobject_attribute VALUES (323,'eng-GB',4,115,152,'Cache',0,0,0,0,'cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (324,'eng-GB',4,115,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"cache.png\"\n         suffix=\"png\"\n         basename=\"cache\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB/cache.png\"\n         original_filename=\"gnome-ccperiph.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"324\"\n            attribute_version=\"3\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"cache_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"cache_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"cache_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (110,'eng-GB',10,45,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (111,'eng-GB',10,45,155,'content/edit/56',0,0,0,0,'content/edit/56','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (327,'eng-GB',3,116,152,'URL translator',0,0,0,0,'url translator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (328,'eng-GB',3,116,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"url_translator.png\"\n         suffix=\"png\"\n         basename=\"url_translator\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator.png\"\n         original_filename=\"gnome-globe.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"328\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"url_translator_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"url_translator_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"url_translator_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (108,'eng-GB',10,45,152,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (104,'eng-GB',9,43,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (105,'eng-GB',9,43,155,'class/grouplist',0,0,0,0,'class/grouplist','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (109,'eng-GB',10,45,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"look_and_feel.png\"\n         suffix=\"png\"\n         basename=\"look_and_feel\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel.png\"\n         original_filename=\"gnome-color-browser.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"109\"\n            attribute_version=\"9\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"look_and_feel_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"look_and_feel_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         is_valid=\"1\" />\n  <alias name=\"icon\"\n         filename=\"look_and_feel_icon.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_icon.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1993047904\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"look_and_feel_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (795,'eng-GB',2,220,186,'Dreamcars',0,0,0,0,'dreamcars','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (782,'eng-GB',59,56,202,'Copyright &copy; eZ systems as 1999-2004',0,0,0,0,'copyright &copy; ez systems as 1999-2004','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (671,'eng-GB',59,56,196,'ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (437,'eng-GB',59,56,180,'nospam@ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (154,'eng-GB',59,56,161,'forum_package',0,0,0,0,'forum_package','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (446,'eng-GB',2,138,4,'Discussions',0,0,0,0,'discussions','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (447,'eng-GB',2,138,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>Here you will find different discussion forums.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (759,'eng-GB',2,211,4,'Forum main group',0,0,0,0,'forum main group','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (760,'eng-GB',2,211,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>No description. This text may not be shown?</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (825,'eng-GB',1,230,4,'Forum rules',0,0,0,0,'forum rules','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (826,'eng-GB',1,230,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>There are certain rules you must follow in this forum. You must follow these rules or you can be removed.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (824,'eng-GB',1,229,193,'Gulset beat Odd a couple of years ago in the cup and since then they haven\'t played. So Gulset is better than Odd. In fact Gulset is the best team in the world.',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (823,'eng-GB',1,229,191,'Gulset are better than Odd',0,0,0,0,'gulset are better than odd','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (822,'eng-GB',1,228,193,'What is Odd Grenland? I have never heard of them. But maybe I will in five years then. Tranmere is the kings of Europe.',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (821,'eng-GB',1,228,191,'Who is Odd?',0,0,0,0,'who is odd?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (522,'eng-GB',4,161,140,'About this forum',0,0,0,0,'about this forum','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (523,'eng-GB',4,161,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>These guidelines also apply to any news groups, mailing lists or other web forums you frequent. If you follow the guidelines you will find that your problems get more attention from people and that your problems might actually get solved. </line>\n    <line>How to Log In</line>\n  </paragraph>\n  <paragraph>You can log in by entering your user name and password here</paragraph>\n  <paragraph>\n    <line>\n      <strong>How to Register a New User</strong>\n    </line>\n    <line>You can register a new user by pressing the &quot;Sign up&quot; button here.</line>\n    <line>As soon as you have filled in the information you have created an account and have the privileges that comes with that.</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Choose the correct forum</strong>\n    </line>\n    <line>Use a few minutes to consider which forum you should post to. Posting it to a &quot;General&quot; forum is not as effective as posting to the &quot;Install&quot; forum if you question is about install-related questions. Don&apos;t post in several different forums. If your question belongs in the &quot;Install&quot; forum, posting it in &quot;General&quot; or &quot;Developer&quot; aren&apos;t very helpful. </line>\n    <line>Consider this: If you post to the wrong forum the chances for someone actually answering it is lower than if you post it in the correct forum. Furthermore your off-topic post will just make it harder for those posting correctly to be noticed among those who post in the wrong forums.</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Search the forums</strong>\n    </line>\n    <line>Before you ask your question try to search the archives of the forum. You&apos;d be surprised to notice how often your exact problem has been solved. You should also read any and all documentation available and search them for relevant info. After all, if it is allready written somewhere, why should someone have to rewrite it into a forum to answer your question?</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Choose a clear title</strong>\n    </line>\n    <line>Choosing a clear and describing title is important, it is the first information someone considering answering your question will read. Saying &quot;I need help&quot;, &quot;Newbie question&quot;, or &quot;Installation question&quot; doesn&apos;t help anyone who reads the title. Everyone needs help, and if you&apos;re posting in the installation forum, don&apos;t you think that people know it&apos;s about installation? </line>\n    <line>Also your title will let a reader decide if the question you are posting is something they can answer. If they from your title can see that the question is outside their knowledge, they can use their time to answer someone whom they might actually be able to help.</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Describe your goal</strong>\n    </line>\n    <line>Sometimes a clear idea of what you&apos;re trying to achieve is relevant to the question asked. Use a few sentences describing what you&apos;re trying to do. Be brief and precise.</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Describe your problem</strong>\n    </line>\n    <line>&quot;Installation don&apos;t work&quot; isn&apos;t very descriptive. More information is needed. How far have you got? What does work? What testing have you done? What system are you running on? You should take at least five minutes to describe your problem. If you get any error messages in your logs, always paste them into you posting. Look in your apache error log, in your php error log and any error messages encountered in your browser. </line>\n    <line>The extra minutes you use to get this information and describing your problem clearly is well worth the time, since it might help someone answer your question. In fact, the few extra minutes you use on your question is well spent after using several hours on your problem. Who knows, you might even see the solution why you take the time to rethink your problem. </line>\n    <line>Remember to include the name of the program, module or plug-in you have a problem with, also remember their version numbers.</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Reread before you post</strong>\n    </line>\n    <line>Use a few minutes reading your posting. Try to see if you have left out important information, or if there are extra information you can supply.</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Don&apos;t expect an answer right away</strong>\n    </line>\n    <line>The forums are supported by the community. People answer at their leisure and level of knowledge. You will also find answers from the crew and together with the community this will be a very valuable part of the documentation.</line>\n  </paragraph>\n  <paragraph>\n    <line>\n      <strong>Do not use improper language</strong>\n    </line>\n    <line>A post that contains improper language like cursing and swearing will be removed from the forums. It will not be answered in any way and will be removed without warning by the administrators of the forum.</line>\n  </paragraph>\n  <paragraph>Otherwise normal behavior is expected.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (783,'eng-GB',1,218,1,'Choose the correct forum',0,0,0,0,'choose the correct forum','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (784,'eng-GB',1,218,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Use a few minutes to consider which forum you should post to. Posting it to a &quot;General&quot; forum is not as effective as posting to the &quot;Install&quot; forum if you question is about install-related questions. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (785,'eng-GB',1,218,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>Don&apos;t post in several different forums. If your question belongs in the &quot;Install&quot; forum, posting it in &quot;General&quot; or &quot;Developer&quot; aren&apos;t very helpful. </line>\n    <line>Consider this: If you post to the wrong forum the chances for someone actually answering it is lower than if you post it in the correct forum. Furthermore your off-topic post will just make it harder for those posting correctly to be noticed among those who post in the wrong forums.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (786,'eng-GB',1,218,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"choose_the_correct_forum.\"\n         suffix=\"\"\n         basename=\"choose_the_correct_forum\"\n         dirpath=\"var/forum/storage/images/news/choose_the_correct_forum/786-1-eng-GB\"\n         url=\"var/forum/storage/images/news/choose_the_correct_forum/786-1-eng-GB/choose_the_correct_forum.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069763577\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (524,'eng-GB',4,161,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"about_this_forum.\"\n         suffix=\"\"\n         basename=\"about_this_forum\"\n         dirpath=\"var/forum/storage/images/about_this_forum/524-4-eng-GB\"\n         url=\"var/forum/storage/images/about_this_forum/524-4-eng-GB/about_this_forum.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"524\"\n            attribute_version=\"3\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (787,'eng-GB',1,218,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (788,'eng-GB',1,218,177,'',0,0,0,0,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (789,'eng-GB',1,219,1,'Latest forum: Dreamcars',0,0,0,0,'latest forum: dreamcars','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (790,'eng-GB',1,219,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>The latest forum to be added is about dreamcars. What&apos;s your favorite dreamcar? </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (791,'eng-GB',1,219,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Many of us always dream about a red Ferrari or an angry Diablo. Let others know about the car of your dreams. Perhaps you have tested it or even own your dreamcar. </paragraph>\n  <paragraph>Perhaps your dreamcar is a Volvo C70, a Jaguar, a 79 Mustang or a Beetle. We all have different choices and dreams. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (792,'eng-GB',1,219,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"latest_forum_dreamcars.\"\n         suffix=\"\"\n         basename=\"latest_forum_dreamcars\"\n         dirpath=\"var/forum/storage/images/news/latest_forum_dreamcars/792-1-eng-GB\"\n         url=\"var/forum/storage/images/news/latest_forum_dreamcars/792-1-eng-GB/latest_forum_dreamcars.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069763611\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (793,'eng-GB',1,219,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (794,'eng-GB',1,219,177,'',0,0,0,0,'','ezinteger');
INSERT INTO ezcontentobject_attribute VALUES (798,'eng-GB',1,221,188,'Koenigsegg is the master',0,0,0,0,'koenigsegg is the master','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (799,'eng-GB',1,221,189,'Just imagine to have one if these parked in your garrage. It must be the most awsome car ever.',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (800,'eng-GB',1,221,190,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (801,'eng-GB',1,221,194,'',1,0,0,0,'','ezsubtreesubscription');
INSERT INTO ezcontentobject_attribute VALUES (802,'eng-GB',1,222,188,'Can\'t leave Ferrari F40 out of it',0,0,0,0,'can\'t leave ferrari f40 out of it','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (803,'eng-GB',1,222,189,'This IS the ulitmate dreamcar',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (804,'eng-GB',1,222,190,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (805,'eng-GB',1,222,194,'',0,0,0,0,'','ezsubtreesubscription');
INSERT INTO ezcontentobject_attribute VALUES (806,'eng-GB',2,223,191,'Königsegg is the best',0,0,0,0,'königsegg is the best','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (807,'eng-GB',2,223,193,'I just have to say it again. There are no car even close to this. ',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (28,'eng-GB',7,14,8,'Administrator',0,0,0,0,'administrator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (29,'eng-GB',7,14,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (30,'eng-GB',7,14,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (695,'eng-GB',7,14,197,'Site boss',0,0,0,0,'site boss','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (707,'eng-GB',7,14,198,'Skien/Norway',0,0,0,0,'skien/norway','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (719,'eng-GB',7,14,199,'Tim Tim',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (731,'eng-GB',7,14,200,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"administrator_user.\"\n         suffix=\"\"\n         basename=\"administrator_user\"\n         dirpath=\"var/forum/storage/images/users/administrator_users/administrator_user/731-7-eng-GB\"\n         url=\"var/forum/storage/images/users/administrator_users/administrator_user/731-7-eng-GB/administrator_user.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"731\"\n            attribute_version=\"6\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (808,'eng-GB',1,224,188,'What is wrong with pop?',0,0,0,0,'what is wrong with pop?','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (809,'eng-GB',1,224,189,'Pop is no longer misic in my eyes. What does Spears and Madonna ad to music history? Nothing at all I say. Nothing :-(',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (810,'eng-GB',1,224,190,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (811,'eng-GB',1,224,194,'',0,0,0,0,'','ezsubtreesubscription');
INSERT INTO ezcontentobject_attribute VALUES (812,'eng-GB',1,225,191,'Madonna is one of the greats',0,0,0,0,'madonna is one of the greats','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (813,'eng-GB',1,225,193,'And it\'s no doubt about that. Her list of hits are proof enough. ',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (454,'eng-GB',4,141,186,'Music discussion',0,0,0,0,'music discussion','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (455,'eng-GB',4,141,187,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Discuss music here.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (757,'eng-GB',4,141,201,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"music_discussion.\"\n         suffix=\"\"\n         basename=\"music_discussion\"\n         dirpath=\"var/forum/storage/images/discussions/forum_main_group/music_discussion/757-4-eng-GB\"\n         url=\"var/forum/storage/images/discussions/forum_main_group/music_discussion/757-4-eng-GB/music_discussion.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (835,'eng-GB',1,233,6,'Anonymous Users',0,0,0,0,'anonymous users','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (836,'eng-GB',1,233,7,'User group for the anonymous user',0,0,0,0,'user group for the anonymous user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (19,'eng-GB',2,10,8,'Anonymous',0,0,0,0,'anonymous','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (20,'eng-GB',2,10,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (21,'eng-GB',2,10,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (692,'eng-GB',2,10,197,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (704,'eng-GB',2,10,198,'',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (716,'eng-GB',2,10,199,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (728,'eng-GB',2,10,200,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"anonymous_user.\"\n         suffix=\"\"\n         basename=\"anonymous_user\"\n         dirpath=\"var/storage/images/users/anonymous_users/anonymous_user/728-2-eng-GB\"\n         url=\"var/storage/images/users/anonymous_users/anonymous_user/728-2-eng-GB/anonymous_user.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1072180869\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (1,'eng-GB',10,1,4,'Forum',0,0,0,0,'forum','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (2,'eng-GB',10,1,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>Welcome to our community site</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (837,'eng-GB',1,234,4,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (838,'eng-GB',1,234,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (839,'eng-GB',1,235,203,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (840,'eng-GB',1,235,204,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (841,'eng-GB',1,235,205,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (842,'eng-GB',1,235,206,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (843,'eng-GB',1,235,207,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (844,'eng-GB',1,235,208,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (845,'eng-GB',1,235,209,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (846,'eng-GB',1,235,210,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (847,'eng-GB',1,235,211,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (848,'eng-GB',1,235,212,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (849,'eng-GB',1,235,213,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (850,'eng-GB',1,235,214,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (851,'eng-GB',1,235,215,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (852,'eng-GB',1,236,152,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (853,'eng-GB',1,236,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"common_ini_settings1.png\"\n         suffix=\"png\"\n         basename=\"common_ini_settings1\"\n         dirpath=\"var/forum/storage/images-versioned/853/1-eng-GB\"\n         url=\"var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1.png\"\n         original_filename=\"exec.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1076579921\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"common_ini_settings1_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images-versioned/853/1-eng-GB\"\n         url=\"var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1_reference.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"183954394\"\n         timestamp=\"1076579923\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"common_ini_settings1_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images-versioned/853/1-eng-GB\"\n         url=\"var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1_medium.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"472385770\"\n         timestamp=\"1076579923\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"common_ini_settings1_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/forum/storage/images-versioned/853/1-eng-GB\"\n         url=\"var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1_large.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"-958410206\"\n         timestamp=\"1076579936\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (854,'eng-GB',1,236,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (855,'eng-GB',1,236,155,'content/edit/235',0,0,0,0,'content/edit/235','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (839,'eng-GB',2,235,203,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (840,'eng-GB',2,235,204,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (841,'eng-GB',2,235,205,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (842,'eng-GB',2,235,206,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (843,'eng-GB',2,235,207,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (844,'eng-GB',2,235,208,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (845,'eng-GB',2,235,209,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (846,'eng-GB',2,235,210,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (847,'eng-GB',2,235,211,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (848,'eng-GB',2,235,212,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (849,'eng-GB',2,235,213,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (850,'eng-GB',2,235,214,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (851,'eng-GB',2,235,215,'',0,0,0,0,'','ezinisetting');

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
INSERT INTO ezcontentobject_name VALUES (138,'Forum',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Corporate',34,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Intranet',20,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (160,'News bulletin',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (103,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (104,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (105,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (106,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (226,'Sport forum',1,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (141,'Music discussion',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (143,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (144,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (145,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',44,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (138,'Discussions',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (187,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (189,'test2 test2',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',46,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (220,'Dreamcars',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',59,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',58,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (231,'How to Register a New User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',57,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (227,'What is the best football team in Europe?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (228,'Who is Odd?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (229,'Gulset are better than Odd',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (230,'Forum rules',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (231,'How to Register a New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (141,'Music discussion',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (211,'Folder',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (211,'Forum main group',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (141,'Music discussion',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (232,'Choose the correct forum',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (232,'Choose the correct forum',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',8,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',50,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',52,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',53,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (217,'fsf',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',54,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (56,'Forum',56,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About this forum',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About this forum',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (161,'About this forum',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (218,'Choose the correct forum',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (219,'Latest forum: Dreamcars',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (220,'Dreamcars',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (221,'Koenigsegg is the master',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (222,'Can\'t leave Ferrari F40 out of it',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (223,'Königsegg is the best',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (223,'Königsegg is the best',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (14,'Administrator User',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (224,'What is wrong with pop?',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (225,'Madonna is one of the greats',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (141,'Music discussion',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (233,'Anonymous Users',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (10,'Anonymous User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Forum',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (234,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (235,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (236,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (235,'Common ini settings',2,'eng-GB','eng-GB');

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


INSERT INTO ezcontentobject_tree VALUES (1,1,0,1,1,0,'/1/',1,1,0,NULL,1,1076579954);
INSERT INTO ezcontentobject_tree VALUES (2,1,1,10,1,1,'/1/2/',9,1,0,'',2,1074094345);
INSERT INTO ezcontentobject_tree VALUES (5,1,4,1,0,1,'/1/5/',1,1,0,'users',5,1072180887);
INSERT INTO ezcontentobject_tree VALUES (11,171,10,2,1,3,'/1/5/171/11/',9,1,0,'users/anonymous_users/anonymous_user',11,1072180887);
INSERT INTO ezcontentobject_tree VALUES (12,5,11,1,1,2,'/1/5/12/',1,1,0,'users/guest_accounts',12,1033920746);
INSERT INTO ezcontentobject_tree VALUES (13,5,12,1,1,2,'/1/5/13/',1,1,0,'users/administrator_users',13,1069765740);
INSERT INTO ezcontentobject_tree VALUES (14,5,13,1,1,2,'/1/5/14/',1,1,0,'users/editors',14,1033920794);
INSERT INTO ezcontentobject_tree VALUES (15,13,14,7,1,3,'/1/5/13/15/',9,1,0,'users/administrator_users/administrator_user',15,1069765740);
INSERT INTO ezcontentobject_tree VALUES (43,1,41,1,1,1,'/1/43/',9,1,0,'media',43,1060695457);
INSERT INTO ezcontentobject_tree VALUES (44,1,42,1,1,1,'/1/44/',9,1,0,'setup',44,1076579954);
INSERT INTO ezcontentobject_tree VALUES (45,46,43,9,1,3,'/1/44/46/45/',9,1,0,'setup/setup_links/classes',45,1068825487);
INSERT INTO ezcontentobject_tree VALUES (46,44,44,1,1,2,'/1/44/46/',9,1,0,'setup/setup_links',46,1076579922);
INSERT INTO ezcontentobject_tree VALUES (47,46,45,10,1,3,'/1/44/46/47/',9,1,0,'setup/setup_links/look_and_feel',47,1068825503);
INSERT INTO ezcontentobject_tree VALUES (48,44,46,2,1,2,'/1/44/48/',9,1,0,'setup/look_and_feel',48,1069841894);
INSERT INTO ezcontentobject_tree VALUES (50,2,49,1,1,2,'/1/2/50/',9,1,0,'news',50,1069763878);
INSERT INTO ezcontentobject_tree VALUES (54,48,56,59,1,3,'/1/44/48/54/',9,1,0,'setup/look_and_feel/forum',54,1069841894);
INSERT INTO ezcontentobject_tree VALUES (95,46,115,4,1,3,'/1/44/46/95/',9,1,0,'setup/setup_links/cache',95,1068825448);
INSERT INTO ezcontentobject_tree VALUES (96,46,116,3,1,3,'/1/44/46/96/',9,1,0,'setup/setup_links/url_translator',96,1068825521);
INSERT INTO ezcontentobject_tree VALUES (111,2,138,2,1,2,'/1/2/111/',9,1,0,'discussions',111,1069844000);
INSERT INTO ezcontentobject_tree VALUES (114,152,141,4,1,4,'/1/2/111/152/114/',9,1,0,'discussions/forum_main_group/music_discussion',114,1069766561);
INSERT INTO ezcontentobject_tree VALUES (126,50,160,1,1,3,'/1/2/50/126/',9,1,0,'news/news_bulletin',126,1068047455);
INSERT INTO ezcontentobject_tree VALUES (127,2,161,4,1,2,'/1/2/127/',9,1,0,'about_this_forum',127,1069763531);
INSERT INTO ezcontentobject_tree VALUES (152,111,211,2,1,3,'/1/2/111/152/',9,1,0,'discussions/forum_main_group',152,1069844000);
INSERT INTO ezcontentobject_tree VALUES (156,50,218,1,1,3,'/1/2/50/156/',9,1,0,'news/choose_the_correct_forum',156,1069763601);
INSERT INTO ezcontentobject_tree VALUES (157,50,219,1,1,3,'/1/2/50/157/',9,1,0,'news/latest_forum_dreamcars',157,1069763878);
INSERT INTO ezcontentobject_tree VALUES (158,152,220,2,1,4,'/1/2/111/152/158/',9,1,0,'discussions/forum_main_group/dreamcars',158,1069844000);
INSERT INTO ezcontentobject_tree VALUES (159,158,221,1,1,5,'/1/2/111/152/158/159/',9,1,0,'discussions/forum_main_group/dreamcars/koenigsegg_is_the_master',159,1069765670);
INSERT INTO ezcontentobject_tree VALUES (160,158,222,1,1,5,'/1/2/111/152/158/160/',9,1,0,'discussions/forum_main_group/dreamcars/can_t_leave_ferrari_f40_out_of_it',160,1069765545);
INSERT INTO ezcontentobject_tree VALUES (161,159,223,2,1,6,'/1/2/111/152/158/159/161/',1,1,0,'discussions/forum_main_group/dreamcars/koenigsegg_is_the_master/k_nigsegg_is_the_best',161,1069765670);
INSERT INTO ezcontentobject_tree VALUES (162,114,224,1,1,5,'/1/2/111/152/114/162/',9,1,0,'discussions/forum_main_group/music_discussion/what_is_wrong_with_pop',162,1069766473);
INSERT INTO ezcontentobject_tree VALUES (163,162,225,1,1,6,'/1/2/111/152/114/162/163/',1,1,0,'discussions/forum_main_group/music_discussion/what_is_wrong_with_pop/madonna_is_one_of_the_greats',163,1069766473);
INSERT INTO ezcontentobject_tree VALUES (164,152,226,1,1,4,'/1/2/111/152/164/',9,1,0,'discussions/forum_main_group/sport_forum',164,1069768552);
INSERT INTO ezcontentobject_tree VALUES (165,164,227,1,1,5,'/1/2/111/152/164/165/',9,1,0,'discussions/forum_main_group/sport_forum/what_is_the_best_football_team_in_europe',165,1069768552);
INSERT INTO ezcontentobject_tree VALUES (166,165,228,1,1,6,'/1/2/111/152/164/165/166/',9,1,0,'discussions/forum_main_group/sport_forum/what_is_the_best_football_team_in_europe/who_is_odd',166,1069767050);
INSERT INTO ezcontentobject_tree VALUES (167,165,229,1,1,6,'/1/2/111/152/164/165/167/',9,1,0,'discussions/forum_main_group/sport_forum/what_is_the_best_football_team_in_europe/gulset_are_better_than_odd',167,1069768552);
INSERT INTO ezcontentobject_tree VALUES (168,111,230,1,1,3,'/1/2/111/168/',9,1,0,'discussions/forum_rules',168,1069768899);
INSERT INTO ezcontentobject_tree VALUES (169,168,231,2,1,4,'/1/2/111/168/169/',9,1,0,'discussions/forum_rules/how_to_register_a_new_user',169,1069768899);
INSERT INTO ezcontentobject_tree VALUES (170,168,232,2,1,4,'/1/2/111/168/170/',9,1,0,'discussions/forum_rules/choose_the_correct_forum',170,1069768887);
INSERT INTO ezcontentobject_tree VALUES (171,5,233,1,1,2,'/1/5/171/',9,1,0,'users/anonymous_users',171,1072180887);
INSERT INTO ezcontentobject_tree VALUES (172,44,234,1,1,2,'/1/44/172/',9,1,0,'setup/common_ini_settings',172,1076579954);
INSERT INTO ezcontentobject_tree VALUES (173,172,235,2,1,3,'/1/44/172/173/',9,1,0,'setup/common_ini_settings/common_ini_settings',173,1076579954);
INSERT INTO ezcontentobject_tree VALUES (174,46,236,1,1,3,'/1/44/46/174/',9,1,0,'setup/setup_links/common_ini_settings',174,1076579922);

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
INSERT INTO ezcontentobject_version VALUES (441,13,14,1,1033920786,1033920794,1,0,0);
INSERT INTO ezcontentobject_version VALUES (472,41,14,1,1060695450,1060695457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (473,42,14,1,1066383039,1066383068,1,0,0);
INSERT INTO ezcontentobject_version VALUES (475,44,14,1,1066384403,1066384457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (482,46,14,2,1066389882,1066389902,1,0,0);
INSERT INTO ezcontentobject_version VALUES (832,218,14,1,1069763574,1069763601,1,0,0);
INSERT INTO ezcontentobject_version VALUES (822,43,14,9,1068825480,1068825487,1,0,0);
INSERT INTO ezcontentobject_version VALUES (490,49,14,1,1066398007,1066398020,1,0,0);
INSERT INTO ezcontentobject_version VALUES (831,161,14,4,1069763471,1069763531,1,0,0);
INSERT INTO ezcontentobject_version VALUES (724,160,14,1,1068047416,1068047455,1,0,0);
INSERT INTO ezcontentobject_version VALUES (821,115,14,4,1068825440,1068825448,1,0,0);
INSERT INTO ezcontentobject_version VALUES (859,56,14,59,1069841661,1069841894,1,0,0);
INSERT INTO ezcontentobject_version VALUES (848,226,14,1,1069766765,1069766829,1,0,0);
INSERT INTO ezcontentobject_version VALUES (823,45,14,10,1068825496,1068825502,1,0,0);
INSERT INTO ezcontentobject_version VALUES (824,116,14,3,1068825510,1068825521,1,0,0);
INSERT INTO ezcontentobject_version VALUES (712,138,14,2,1068041924,1068041936,1,0,0);
INSERT INTO ezcontentobject_version VALUES (860,220,14,2,1069843977,1069844000,1,0,0);
INSERT INTO ezcontentobject_version VALUES (856,231,14,2,1069768893,1069768899,1,0,0);
INSERT INTO ezcontentobject_version VALUES (855,232,14,2,1069768881,1069768887,1,0,0);
INSERT INTO ezcontentobject_version VALUES (849,227,14,1,1069766846,1069766947,1,0,0);
INSERT INTO ezcontentobject_version VALUES (801,211,14,2,1068640100,1068640156,1,0,0);
INSERT INTO ezcontentobject_version VALUES (852,230,14,1,1069768587,1069768639,1,0,0);
INSERT INTO ezcontentobject_version VALUES (851,229,14,1,1069768479,1069768552,1,0,0);
INSERT INTO ezcontentobject_version VALUES (850,228,14,1,1069766960,1069767050,1,0,0);
INSERT INTO ezcontentobject_version VALUES (833,219,14,1,1069763609,1069763878,1,0,0);
INSERT INTO ezcontentobject_version VALUES (835,221,14,1,1069763985,1069765267,1,0,0);
INSERT INTO ezcontentobject_version VALUES (837,222,14,1,1069765507,1069765545,1,0,0);
INSERT INTO ezcontentobject_version VALUES (839,223,14,2,1069765654,1069765670,1,0,0);
INSERT INTO ezcontentobject_version VALUES (840,14,14,7,1069765717,1069765739,1,0,0);
INSERT INTO ezcontentobject_version VALUES (844,224,14,1,1069766009,1069766105,1,0,0);
INSERT INTO ezcontentobject_version VALUES (845,225,14,1,1069766168,1069766473,1,0,0);
INSERT INTO ezcontentobject_version VALUES (846,141,14,4,1069766551,1069766561,1,0,0);
INSERT INTO ezcontentobject_version VALUES (861,233,14,1,1072180854,1072180863,1,0,0);
INSERT INTO ezcontentobject_version VALUES (862,10,14,2,1072180869,1072180887,1,0,0);
INSERT INTO ezcontentobject_version VALUES (864,1,14,10,1074094332,1074094345,1,1,0);
INSERT INTO ezcontentobject_version VALUES (865,234,14,1,1076579795,1076579807,1,0,0);
INSERT INTO ezcontentobject_version VALUES (866,235,14,1,1076579824,1076579860,3,0,0);
INSERT INTO ezcontentobject_version VALUES (867,236,14,1,1076579889,1076579921,1,0,0);
INSERT INTO ezcontentobject_version VALUES (868,235,14,2,1076579941,1076579953,1,0,0);

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


INSERT INTO ezimagefile VALUES (1,152,'var/forum/storage/images/setup/look_and_feel/forum/152-54-eng-GB/forum.jpg');
INSERT INTO ezimagefile VALUES (2,152,'var/forum/storage/images/setup/look_and_feel/forum/152-54-eng-GB/forum_reference.jpg');
INSERT INTO ezimagefile VALUES (3,152,'var/forum/storage/images/setup/look_and_feel/forum/152-54-eng-GB/forum_medium.jpg');
INSERT INTO ezimagefile VALUES (8,524,'var/forum/storage/images/about_this_forum/524-2-eng-GB/about_this_forum.');
INSERT INTO ezimagefile VALUES (9,524,'var/forum/storage/images/about_this_forum/524-3-eng-GB/about_this_forum.');
INSERT INTO ezimagefile VALUES (10,524,'var/forum/storage/images/about_this_forum/524-4-eng-GB/about_this_forum.');
INSERT INTO ezimagefile VALUES (11,786,'var/forum/storage/images/news/choose_the_correct_forum/786-1-eng-GB/choose_the_correct_forum.');
INSERT INTO ezimagefile VALUES (12,792,'var/forum/storage/images/news/latest_forum_dreamcars/792-1-eng-GB/latest_forum_dreamcars.');
INSERT INTO ezimagefile VALUES (13,797,'var/forum/storage/images/discussions/forum_main_group/dreamcars/797-1-eng-GB/dreamcars.');
INSERT INTO ezimagefile VALUES (14,731,'var/forum/storage/images/users/administrator_users/administrator_user/731-6-eng-GB/administrator_user.');
INSERT INTO ezimagefile VALUES (15,731,'var/forum/storage/images/users/administrator_users/administrator_user/731-7-eng-GB/administrator_user.');
INSERT INTO ezimagefile VALUES (16,757,'var/forum/storage/images/discussions/forum_main_group/music_discussion/757-4-eng-GB/music_discussion.');
INSERT INTO ezimagefile VALUES (18,816,'var/forum/storage/images/discussions/forum_main_group/sport_forum/816-1-eng-GB/sport_forum.');
INSERT INTO ezimagefile VALUES (20,152,'var/forum/storage/images/setup/look_and_feel/forum/152-57-eng-GB/forum.gif');
INSERT INTO ezimagefile VALUES (21,152,'var/forum/storage/images/setup/look_and_feel/forum/152-57-eng-GB/forum_reference.gif');
INSERT INTO ezimagefile VALUES (22,152,'var/forum/storage/images/setup/look_and_feel/forum/152-57-eng-GB/forum_medium.gif');
INSERT INTO ezimagefile VALUES (23,152,'var/forum/storage/images/setup/look_and_feel/forum/152-57-eng-GB/forum_logo.gif');
INSERT INTO ezimagefile VALUES (25,152,'var/forum/storage/images/setup/look_and_feel/forum/152-58-eng-GB/forum.gif');
INSERT INTO ezimagefile VALUES (26,152,'var/forum/storage/images/setup/look_and_feel/forum/152-58-eng-GB/forum_reference.gif');
INSERT INTO ezimagefile VALUES (27,152,'var/forum/storage/images/setup/look_and_feel/forum/152-58-eng-GB/forum_medium.gif');
INSERT INTO ezimagefile VALUES (28,152,'var/forum/storage/images/setup/look_and_feel/forum/152-58-eng-GB/forum_logo.gif');
INSERT INTO ezimagefile VALUES (29,152,'var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum.gif');
INSERT INTO ezimagefile VALUES (30,152,'var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_reference.gif');
INSERT INTO ezimagefile VALUES (31,152,'var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_medium.gif');
INSERT INTO ezimagefile VALUES (32,152,'var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_logo.gif');
INSERT INTO ezimagefile VALUES (33,797,'var/forum/storage/images/discussions/forum_main_group/dreamcars/797-2-eng-GB/dreamcars.');
INSERT INTO ezimagefile VALUES (34,728,'var/storage/images/users/anonymous_users/anonymous_user/728-2-eng-GB/anonymous_user.');
INSERT INTO ezimagefile VALUES (35,109,'var/storage/original/image/phpvzmRGW.png');
INSERT INTO ezimagefile VALUES (36,109,'var/storage/original/image/phppIJtoa.jpg');
INSERT INTO ezimagefile VALUES (37,109,'var/storage/original/image/phpAhcEu9.png');
INSERT INTO ezimagefile VALUES (38,103,'var/storage/original/image/phpWJgae7.png');
INSERT INTO ezimagefile VALUES (39,109,'var/storage/original/image/phpbVfzkm.png');
INSERT INTO ezimagefile VALUES (40,103,'var/storage/original/image/php7ZhvcB.png');
INSERT INTO ezimagefile VALUES (41,103,'var/storage/original/image/phpXz5esv.jpg');
INSERT INTO ezimagefile VALUES (42,853,'var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1.png');
INSERT INTO ezimagefile VALUES (43,853,'var/forum/storage/images/setup/setup_links/common_ini_settings/853-1-eng-GB/common_ini_settings.png');
INSERT INTO ezimagefile VALUES (44,853,'var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1_reference.png');
INSERT INTO ezimagefile VALUES (45,853,'var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1_medium.png');
INSERT INTO ezimagefile VALUES (46,853,'var/forum/storage/images-versioned/853/1-eng-GB/common_ini_settings1_large.png');

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
INSERT INTO eznode_assignment VALUES (152,13,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (182,41,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (183,42,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (185,44,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (193,46,2,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (528,43,9,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (201,49,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (537,161,4,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (428,160,1,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (527,115,4,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (565,56,59,48,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (538,218,1,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (562,231,2,168,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (561,232,2,168,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (554,226,1,152,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (529,45,10,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (530,116,3,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (551,225,1,162,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (550,224,1,114,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (552,141,4,152,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (416,138,2,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (566,220,2,152,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (558,230,1,111,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (557,229,1,165,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (556,228,1,165,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (555,227,1,164,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (505,211,2,111,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (539,219,1,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (541,221,1,158,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (543,222,1,158,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (545,223,2,159,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (546,14,7,13,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (567,233,1,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (569,10,2,171,9,1,1,5,0);
INSERT INTO eznode_assignment VALUES (571,1,10,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (572,234,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (573,235,1,172,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (574,236,1,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (575,235,2,172,9,1,1,0,0);

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


INSERT INTO eznotificationevent VALUES (1,0,'ezpublish',234,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (2,0,'ezpublish',235,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (3,0,'ezpublish',236,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (4,0,'ezpublish',235,2,0,0,'','','','');

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
INSERT INTO ezpolicy VALUES (378,1,'read','content','');
INSERT INTO ezpolicy VALUES (377,1,'login','user','*');

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


INSERT INTO ezpolicy_limitation VALUES (298,378,'Class',0,'read','content');

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


INSERT INTO ezpolicy_limitation_value VALUES (584,298,'22');
INSERT INTO ezpolicy_limitation_value VALUES (583,298,'21');
INSERT INTO ezpolicy_limitation_value VALUES (582,298,'20');
INSERT INTO ezpolicy_limitation_value VALUES (581,298,'12');
INSERT INTO ezpolicy_limitation_value VALUES (580,298,'10');
INSERT INTO ezpolicy_limitation_value VALUES (579,298,'5');
INSERT INTO ezpolicy_limitation_value VALUES (578,298,'2');
INSERT INTO ezpolicy_limitation_value VALUES (577,298,'1');

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


INSERT INTO ezsearch_object_word_link VALUES (13417,138,1705,0,0,0,1705,1,1068036060,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13418,138,1705,0,1,1705,1706,1,1068036060,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13419,138,1706,0,2,1705,1707,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13420,138,1707,0,3,1706,1708,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13421,138,1708,0,4,1707,1709,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13422,138,1709,0,5,1708,1710,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13423,138,1710,0,6,1709,1711,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13424,138,1711,0,7,1710,1712,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13425,138,1712,0,8,1711,1706,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13426,138,1706,0,9,1712,1707,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13427,138,1707,0,10,1706,1708,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13428,138,1708,0,11,1707,1709,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13429,138,1709,0,12,1708,1710,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13430,138,1710,0,13,1709,1711,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13431,138,1711,0,14,1710,1712,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13432,138,1712,0,15,1711,0,1,1068036060,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13433,211,1713,0,0,0,1714,1,1068640085,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13434,211,1714,0,1,1713,1715,1,1068640085,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13435,211,1715,0,2,1714,1713,1,1068640085,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13436,211,1713,0,3,1715,1714,1,1068640085,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13437,211,1714,0,4,1713,1715,1,1068640085,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13438,211,1715,0,5,1714,1716,1,1068640085,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13439,211,1716,0,6,1715,1717,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13440,211,1717,0,7,1716,1718,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13441,211,1718,0,8,1717,1719,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13442,211,1719,0,9,1718,1720,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13443,211,1720,0,10,1719,1721,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13444,211,1721,0,11,1720,1722,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13445,211,1722,0,12,1721,1723,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13446,211,1723,0,13,1722,1716,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13447,211,1716,0,14,1723,1717,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13448,211,1717,0,15,1716,1718,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13449,211,1718,0,16,1717,1719,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13450,211,1719,0,17,1718,1720,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13451,211,1720,0,18,1719,1721,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13452,211,1721,0,19,1720,1722,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13453,211,1722,0,20,1721,1723,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13454,211,1723,0,21,1722,0,1,1068640085,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13455,141,1724,0,0,0,1711,20,1068036586,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13456,141,1711,0,1,1724,1724,20,1068036586,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13457,141,1724,0,2,1711,1711,20,1068036586,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13458,141,1711,0,3,1724,1725,20,1068036586,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13459,141,1725,0,4,1711,1724,20,1068036586,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13460,141,1724,0,5,1725,1706,20,1068036586,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13461,141,1706,0,6,1724,1725,20,1068036586,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13462,141,1725,0,7,1706,1724,20,1068036586,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13463,141,1724,0,8,1725,1706,20,1068036586,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13464,141,1706,0,9,1724,0,20,1068036586,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13465,224,1726,0,0,0,1727,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13466,224,1727,0,1,1726,1728,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13467,224,1728,0,2,1727,1729,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13468,224,1729,0,3,1728,1730,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13469,224,1730,0,4,1729,1726,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13470,224,1726,0,5,1730,1727,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13471,224,1727,0,6,1726,1728,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13472,224,1728,0,7,1727,1729,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13473,224,1729,0,8,1728,1730,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13474,224,1730,0,9,1729,1730,21,1069766105,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13475,224,1730,0,10,1730,1727,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13476,224,1727,0,11,1730,1716,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13477,224,1716,0,12,1727,1731,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13478,224,1731,0,13,1716,1732,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13479,224,1732,0,14,1731,1733,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13480,224,1733,0,15,1732,1734,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13481,224,1734,0,16,1733,1735,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13482,224,1735,0,17,1734,1726,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13483,224,1726,0,18,1735,1736,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13484,224,1736,0,19,1726,1737,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13485,224,1737,0,20,1736,1738,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13486,224,1738,0,21,1737,1739,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13487,224,1739,0,22,1738,1740,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13488,224,1740,0,23,1739,1741,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13489,224,1741,0,24,1740,1724,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13490,224,1724,0,25,1741,1742,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13491,224,1742,0,26,1724,1743,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13492,224,1743,0,27,1742,1744,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13493,224,1744,0,28,1743,1745,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13494,224,1745,0,29,1744,1746,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13495,224,1746,0,30,1745,1747,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13496,224,1747,0,31,1746,1743,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13497,224,1743,0,32,1747,1730,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13498,224,1730,0,33,1743,1727,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13499,224,1727,0,34,1730,1716,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13500,224,1716,0,35,1727,1731,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13501,224,1731,0,36,1716,1732,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13502,224,1732,0,37,1731,1733,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13503,224,1733,0,38,1732,1734,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13504,224,1734,0,39,1733,1735,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13505,224,1735,0,40,1734,1726,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13506,224,1726,0,41,1735,1736,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13507,224,1736,0,42,1726,1737,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13508,224,1737,0,43,1736,1738,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13509,224,1738,0,44,1737,1739,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13510,224,1739,0,45,1738,1740,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13511,224,1740,0,46,1739,1741,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13512,224,1741,0,47,1740,1724,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13513,224,1724,0,48,1741,1742,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13514,224,1742,0,49,1724,1743,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13515,224,1743,0,50,1742,1744,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13516,224,1744,0,51,1743,1745,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13517,224,1745,0,52,1744,1746,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13518,224,1746,0,53,1745,1747,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13519,224,1747,0,54,1746,1743,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13520,224,1743,0,55,1747,1748,21,1069766105,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13521,224,1748,0,56,1743,1748,21,1069766105,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13522,224,1748,0,57,1748,0,21,1069766105,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13523,225,1739,0,0,0,1727,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13524,225,1727,0,1,1739,1749,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13525,225,1749,0,2,1727,1750,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13526,225,1750,0,3,1749,1751,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13527,225,1751,0,4,1750,1752,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13528,225,1752,0,5,1751,1739,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13529,225,1739,0,6,1752,1727,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13530,225,1727,0,7,1739,1749,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13531,225,1749,0,8,1727,1750,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13532,225,1750,0,9,1749,1751,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13533,225,1751,0,10,1750,1752,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13534,225,1752,0,11,1751,1738,22,1069766473,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13535,225,1738,0,12,1752,1753,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13536,225,1753,0,13,1738,1754,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13537,225,1754,0,14,1753,1716,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13538,225,1716,0,15,1754,1755,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13539,225,1755,0,16,1716,1756,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13540,225,1756,0,17,1755,1757,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13541,225,1757,0,18,1756,1758,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13542,225,1758,0,19,1757,1759,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13543,225,1759,0,20,1758,1750,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13544,225,1750,0,21,1759,1760,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13545,225,1760,0,22,1750,1761,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13546,225,1761,0,23,1760,1762,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13547,225,1762,0,24,1761,1763,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13548,225,1763,0,25,1762,1738,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13549,225,1738,0,26,1763,1753,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13550,225,1753,0,27,1738,1754,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13551,225,1754,0,28,1753,1716,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13552,225,1716,0,29,1754,1755,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13553,225,1755,0,30,1716,1756,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13554,225,1756,0,31,1755,1757,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13555,225,1757,0,32,1756,1758,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13556,225,1758,0,33,1757,1759,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13557,225,1759,0,34,1758,1750,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13558,225,1750,0,35,1759,1760,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13559,225,1760,0,36,1750,1761,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13560,225,1761,0,37,1760,1762,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13561,225,1762,0,38,1761,1763,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13562,225,1763,0,39,1762,0,22,1069766473,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13563,220,1764,0,0,0,1764,20,1069763952,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13564,220,1764,0,1,1764,1726,20,1069763952,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13565,220,1726,0,2,1764,1727,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13566,220,1727,0,3,1726,1765,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13567,220,1765,0,4,1727,1766,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13568,220,1766,0,5,1765,1767,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13569,220,1767,0,6,1766,1768,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13570,220,1768,0,7,1767,1769,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13571,220,1769,0,8,1768,1770,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13572,220,1770,0,9,1769,1726,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13573,220,1726,0,10,1770,1727,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13574,220,1727,0,11,1726,1765,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13575,220,1765,0,12,1727,1766,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13576,220,1766,0,13,1765,1767,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13577,220,1767,0,14,1766,1768,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13578,220,1768,0,15,1767,1769,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13579,220,1769,0,16,1768,1770,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13580,220,1770,0,17,1769,0,20,1069763952,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13581,221,1771,0,0,0,1727,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13582,221,1727,0,1,1771,1751,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13583,221,1751,0,2,1727,1772,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13584,221,1772,0,3,1751,1771,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13585,221,1771,0,4,1772,1727,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13586,221,1727,0,5,1771,1751,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13587,221,1751,0,6,1727,1772,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13588,221,1772,0,7,1751,1773,21,1069765267,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13589,221,1773,0,8,1772,1774,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13590,221,1774,0,9,1773,1741,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13591,221,1741,0,10,1774,1775,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13592,221,1775,0,11,1741,1749,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13593,221,1749,0,12,1775,1776,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13594,221,1776,0,13,1749,1777,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13595,221,1777,0,14,1776,1778,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13596,221,1778,0,15,1777,1733,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13597,221,1733,0,16,1778,1765,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13598,221,1765,0,17,1733,1779,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13599,221,1779,0,18,1765,1753,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13600,221,1753,0,19,1779,1780,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13601,221,1780,0,20,1753,1722,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13602,221,1722,0,21,1780,1751,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13603,221,1751,0,22,1722,1781,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13604,221,1781,0,23,1751,1782,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13605,221,1782,0,24,1781,1783,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13606,221,1783,0,25,1782,1784,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13607,221,1784,0,26,1783,1773,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13608,221,1773,0,27,1784,1774,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13609,221,1774,0,28,1773,1741,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13610,221,1741,0,29,1774,1775,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13611,221,1775,0,30,1741,1749,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13612,221,1749,0,31,1775,1776,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13613,221,1776,0,32,1749,1777,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13614,221,1777,0,33,1776,1778,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13615,221,1778,0,34,1777,1733,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13616,221,1733,0,35,1778,1765,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13617,221,1765,0,36,1733,1779,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13618,221,1779,0,37,1765,1753,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13619,221,1753,0,38,1779,1780,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13620,221,1780,0,39,1753,1722,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13621,221,1722,0,40,1780,1751,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13622,221,1751,0,41,1722,1781,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13623,221,1781,0,42,1751,1782,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13624,221,1782,0,43,1781,1783,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13625,221,1783,0,44,1782,1784,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13626,221,1784,0,45,1783,1748,21,1069765267,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13627,221,1748,0,46,1784,1748,21,1069765267,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13628,221,1748,0,47,1748,0,21,1069765267,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13629,223,1785,0,0,0,1727,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13630,223,1727,0,1,1785,1751,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13631,223,1751,0,2,1727,1786,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13632,223,1786,0,3,1751,1785,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13633,223,1785,0,4,1786,1727,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13634,223,1727,0,5,1785,1751,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13635,223,1751,0,6,1727,1786,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13636,223,1786,0,7,1751,1746,22,1069765640,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13637,223,1746,0,8,1786,1773,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13638,223,1773,0,9,1746,1775,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13639,223,1775,0,10,1773,1741,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13640,223,1741,0,11,1775,1747,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13641,223,1747,0,12,1741,1753,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13642,223,1753,0,13,1747,1787,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13643,223,1787,0,14,1753,1788,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13644,223,1788,0,15,1787,1761,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13645,223,1761,0,16,1788,1716,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13646,223,1716,0,17,1761,1783,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13647,223,1783,0,18,1716,1789,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13648,223,1789,0,19,1783,1790,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13649,223,1790,0,20,1789,1741,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13650,223,1741,0,21,1790,1718,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13651,223,1718,0,22,1741,1746,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13652,223,1746,0,23,1718,1773,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13653,223,1773,0,24,1746,1775,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13654,223,1775,0,25,1773,1741,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13655,223,1741,0,26,1775,1747,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13656,223,1747,0,27,1741,1753,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13657,223,1753,0,28,1747,1787,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13658,223,1787,0,29,1753,1788,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13659,223,1788,0,30,1787,1761,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13660,223,1761,0,31,1788,1716,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13661,223,1716,0,32,1761,1783,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13662,223,1783,0,33,1716,1789,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13663,223,1789,0,34,1783,1790,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13664,223,1790,0,35,1789,1741,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13665,223,1741,0,36,1790,1718,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13666,223,1718,0,37,1741,0,22,1069765640,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13667,222,1791,0,0,0,1792,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13668,222,1792,0,1,1791,1793,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13669,222,1793,0,2,1792,1767,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13670,222,1767,0,3,1793,1794,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13671,222,1794,0,4,1767,1795,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13672,222,1795,0,5,1794,1750,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13673,222,1750,0,6,1795,1753,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13674,222,1753,0,7,1750,1791,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13675,222,1791,0,8,1753,1792,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13676,222,1792,0,9,1791,1793,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13677,222,1793,0,10,1792,1767,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13678,222,1767,0,11,1793,1794,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13679,222,1794,0,12,1767,1795,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13680,222,1795,0,13,1794,1750,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13681,222,1750,0,14,1795,1753,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13682,222,1753,0,15,1750,1718,21,1069765545,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13683,222,1718,0,16,1753,1727,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13684,222,1727,0,17,1718,1751,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13685,222,1751,0,18,1727,1796,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13686,222,1796,0,19,1751,1766,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13687,222,1766,0,20,1796,1718,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13688,222,1718,0,21,1766,1727,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13689,222,1727,0,22,1718,1751,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13690,222,1751,0,23,1727,1796,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13691,222,1796,0,24,1751,1766,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13692,222,1766,0,25,1796,1748,21,1069765545,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13693,222,1748,0,26,1766,1748,21,1069765545,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13694,222,1748,0,27,1748,0,21,1069765545,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13695,226,1797,0,0,0,1713,20,1069766830,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13696,226,1713,0,1,1797,1797,20,1069766830,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13697,226,1797,0,2,1713,1713,20,1069766830,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13698,226,1713,0,3,1797,1798,20,1069766830,1,186,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13699,226,1798,0,4,1713,1799,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13700,226,1799,0,5,1798,1800,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13701,226,1800,0,6,1799,1801,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13702,226,1801,0,7,1800,1756,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13703,226,1756,0,8,1801,1797,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13704,226,1797,0,9,1756,1746,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13705,226,1746,0,10,1797,1791,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13706,226,1791,0,11,1746,1792,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13707,226,1792,0,12,1791,1802,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13708,226,1802,0,13,1792,1803,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13709,226,1803,0,14,1802,1804,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13710,226,1804,0,15,1803,1738,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13711,226,1738,0,16,1804,1791,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13712,226,1791,0,17,1738,1721,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13713,226,1721,0,18,1791,1805,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13714,226,1805,0,19,1721,1806,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13715,226,1806,0,20,1805,1807,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13716,226,1807,0,21,1806,1791,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13717,226,1791,0,22,1807,1808,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13718,226,1808,0,23,1791,1707,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13719,226,1707,0,24,1808,1809,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13720,226,1809,0,25,1707,1810,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13721,226,1810,0,26,1809,1756,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13722,226,1756,0,27,1810,1753,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13723,226,1753,0,28,1756,1798,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13724,226,1798,0,29,1753,1799,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13725,226,1799,0,30,1798,1800,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13726,226,1800,0,31,1799,1801,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13727,226,1801,0,32,1800,1756,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13728,226,1756,0,33,1801,1797,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13729,226,1797,0,34,1756,1746,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13730,226,1746,0,35,1797,1791,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13731,226,1791,0,36,1746,1792,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13732,226,1792,0,37,1791,1802,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13733,226,1802,0,38,1792,1803,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13734,226,1803,0,39,1802,1804,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13735,226,1804,0,40,1803,1738,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13736,226,1738,0,41,1804,1791,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13737,226,1791,0,42,1738,1721,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13738,226,1721,0,43,1791,1805,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13739,226,1805,0,44,1721,1806,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13740,226,1806,0,45,1805,1807,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13741,226,1807,0,46,1806,1791,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13742,226,1791,0,47,1807,1808,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13743,226,1808,0,48,1791,1707,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13744,226,1707,0,49,1808,1809,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13745,226,1809,0,50,1707,1810,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13746,226,1810,0,51,1809,1756,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13747,226,1756,0,52,1810,1753,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13748,226,1753,0,53,1756,0,20,1069766830,1,187,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13749,227,1726,0,0,0,1727,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13750,227,1727,0,1,1726,1751,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13751,227,1751,0,2,1727,1786,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13752,227,1786,0,3,1751,1811,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13753,227,1811,0,4,1786,1812,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13754,227,1812,0,5,1811,1733,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13755,227,1733,0,6,1812,1813,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13756,227,1813,0,7,1733,1726,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13757,227,1726,0,8,1813,1727,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13758,227,1727,0,9,1726,1751,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13759,227,1751,0,10,1727,1786,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13760,227,1786,0,11,1751,1811,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13761,227,1811,0,12,1786,1812,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13762,227,1812,0,13,1811,1733,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13763,227,1733,0,14,1812,1813,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13764,227,1813,0,15,1733,1753,21,1069766947,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13765,227,1753,0,16,1813,1727,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13766,227,1727,0,17,1753,1814,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13767,227,1814,0,18,1727,1815,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13768,227,1815,0,19,1814,1816,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13769,227,1816,0,20,1815,1817,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13770,227,1817,0,21,1816,1738,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13771,227,1738,0,22,1817,1818,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13772,227,1818,0,23,1738,1819,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13773,227,1819,0,24,1818,1751,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13774,227,1751,0,25,1819,1812,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13775,227,1812,0,26,1751,1820,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13776,227,1820,0,27,1812,1821,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13777,227,1821,0,28,1820,1738,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13778,227,1738,0,29,1821,1822,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13779,227,1822,0,30,1738,1708,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13780,227,1708,0,31,1822,1823,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13781,227,1823,0,32,1708,1822,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13782,227,1822,0,33,1823,1775,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13783,227,1775,0,34,1822,1824,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13784,227,1824,0,35,1775,1825,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13785,227,1825,0,36,1824,1826,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13786,227,1826,0,37,1825,1738,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13787,227,1738,0,38,1826,1761,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13788,227,1761,0,39,1738,1745,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13789,227,1745,0,40,1761,1827,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13790,227,1827,0,41,1745,1828,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13791,227,1828,0,42,1827,1753,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13792,227,1753,0,43,1828,1727,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13793,227,1727,0,44,1753,1814,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13794,227,1814,0,45,1727,1815,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13795,227,1815,0,46,1814,1816,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13796,227,1816,0,47,1815,1817,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13797,227,1817,0,48,1816,1738,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13798,227,1738,0,49,1817,1818,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13799,227,1818,0,50,1738,1819,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13800,227,1819,0,51,1818,1751,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13801,227,1751,0,52,1819,1812,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13802,227,1812,0,53,1751,1820,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13803,227,1820,0,54,1812,1821,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13804,227,1821,0,55,1820,1738,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13805,227,1738,0,56,1821,1822,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13806,227,1822,0,57,1738,1708,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13807,227,1708,0,58,1822,1823,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13808,227,1823,0,59,1708,1822,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13809,227,1822,0,60,1823,1775,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13810,227,1775,0,61,1822,1824,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13811,227,1824,0,62,1775,1825,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13812,227,1825,0,63,1824,1826,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13813,227,1826,0,64,1825,1738,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13814,227,1738,0,65,1826,1761,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13815,227,1761,0,66,1738,1745,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13816,227,1745,0,67,1761,1827,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13817,227,1827,0,68,1745,1828,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13818,227,1828,0,69,1827,1748,21,1069766947,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13819,227,1748,0,70,1828,1748,21,1069766947,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13820,227,1748,0,71,1748,0,21,1069766947,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13821,228,1807,0,0,0,1727,22,1069767050,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13822,228,1727,0,1,1807,1814,22,1069767050,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13823,228,1814,0,2,1727,1807,22,1069767050,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13824,228,1807,0,3,1814,1727,22,1069767050,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13825,228,1727,0,4,1807,1814,22,1069767050,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13826,228,1814,0,5,1727,1726,22,1069767050,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13827,228,1726,0,6,1814,1727,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13828,228,1727,0,7,1726,1814,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13829,228,1814,0,8,1727,1815,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13830,228,1815,0,9,1814,1746,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13831,228,1746,0,10,1815,1775,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13832,228,1775,0,11,1746,1829,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13833,228,1829,0,12,1775,1830,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13834,228,1830,0,13,1829,1750,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13835,228,1750,0,14,1830,1831,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13836,228,1831,0,15,1750,1832,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13837,228,1832,0,16,1831,1833,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13838,228,1833,0,17,1832,1746,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13839,228,1746,0,18,1833,1708,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13840,228,1708,0,19,1746,1733,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13841,228,1733,0,20,1708,1820,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13842,228,1820,0,21,1733,1821,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13843,228,1821,0,22,1820,1834,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13844,228,1834,0,23,1821,1835,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13845,228,1835,0,24,1834,1727,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13846,228,1727,0,25,1835,1751,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13847,228,1751,0,26,1727,1836,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13848,228,1836,0,27,1751,1750,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13849,228,1750,0,28,1836,1813,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13850,228,1813,0,29,1750,1726,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13851,228,1726,0,30,1813,1727,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13852,228,1727,0,31,1726,1814,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13853,228,1814,0,32,1727,1815,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13854,228,1815,0,33,1814,1746,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13855,228,1746,0,34,1815,1775,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13856,228,1775,0,35,1746,1829,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13857,228,1829,0,36,1775,1830,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13858,228,1830,0,37,1829,1750,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13859,228,1750,0,38,1830,1831,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13860,228,1831,0,39,1750,1832,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13861,228,1832,0,40,1831,1833,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13862,228,1833,0,41,1832,1746,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13863,228,1746,0,42,1833,1708,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13864,228,1708,0,43,1746,1733,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13865,228,1733,0,44,1708,1820,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13866,228,1820,0,45,1733,1821,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13867,228,1821,0,46,1820,1834,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13868,228,1834,0,47,1821,1835,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13869,228,1835,0,48,1834,1727,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13870,228,1727,0,49,1835,1751,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13871,228,1751,0,50,1727,1836,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13872,228,1836,0,51,1751,1750,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13873,228,1750,0,52,1836,1813,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13874,228,1813,0,53,1750,0,22,1069767050,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13875,229,1837,0,0,0,1761,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13876,229,1761,0,1,1837,1838,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13877,229,1838,0,2,1761,1839,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13878,229,1839,0,3,1838,1814,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13879,229,1814,0,4,1839,1837,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13880,229,1837,0,5,1814,1761,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13881,229,1761,0,6,1837,1838,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13882,229,1838,0,7,1761,1839,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13883,229,1839,0,8,1838,1814,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13884,229,1814,0,9,1839,1837,22,1069768552,1,191,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13885,229,1837,0,10,1814,1840,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13886,229,1840,0,11,1837,1814,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13887,229,1814,0,12,1840,1841,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13888,229,1841,0,13,1814,1842,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13889,229,1842,0,14,1841,1750,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13890,229,1750,0,15,1842,1821,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13891,229,1821,0,16,1750,1843,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13892,229,1843,0,17,1821,1733,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13893,229,1733,0,18,1843,1751,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13894,229,1751,0,19,1733,1844,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13895,229,1844,0,20,1751,1738,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13896,229,1738,0,21,1844,1845,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13897,229,1845,0,22,1738,1834,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13898,229,1834,0,23,1845,1822,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13899,229,1822,0,24,1834,1846,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13900,229,1846,0,25,1822,1792,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13901,229,1792,0,26,1846,1847,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13902,229,1847,0,27,1792,1848,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13903,229,1848,0,28,1847,1837,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13904,229,1837,0,29,1848,1727,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13905,229,1727,0,30,1837,1838,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13906,229,1838,0,31,1727,1839,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13907,229,1839,0,32,1838,1814,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13908,229,1814,0,33,1839,1733,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13909,229,1733,0,34,1814,1849,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13910,229,1849,0,35,1733,1837,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13911,229,1837,0,36,1849,1727,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13912,229,1727,0,37,1837,1751,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13913,229,1751,0,38,1727,1786,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13914,229,1786,0,39,1751,1812,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13915,229,1812,0,40,1786,1733,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13916,229,1733,0,41,1812,1751,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13917,229,1751,0,42,1733,1850,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13918,229,1850,0,43,1751,1837,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13919,229,1837,0,44,1850,1840,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13920,229,1840,0,45,1837,1814,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13921,229,1814,0,46,1840,1841,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13922,229,1841,0,47,1814,1842,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13923,229,1842,0,48,1841,1750,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13924,229,1750,0,49,1842,1821,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13925,229,1821,0,50,1750,1843,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13926,229,1843,0,51,1821,1733,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13927,229,1733,0,52,1843,1751,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13928,229,1751,0,53,1733,1844,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13929,229,1844,0,54,1751,1738,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13930,229,1738,0,55,1844,1845,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13931,229,1845,0,56,1738,1834,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13932,229,1834,0,57,1845,1822,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13933,229,1822,0,58,1834,1846,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13934,229,1846,0,59,1822,1792,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13935,229,1792,0,60,1846,1847,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13936,229,1847,0,61,1792,1848,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13937,229,1848,0,62,1847,1837,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13938,229,1837,0,63,1848,1727,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13939,229,1727,0,64,1837,1838,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13940,229,1838,0,65,1727,1839,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13941,229,1839,0,66,1838,1814,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13942,229,1814,0,67,1839,1733,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13943,229,1733,0,68,1814,1849,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13944,229,1849,0,69,1733,1837,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13945,229,1837,0,70,1849,1727,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13946,229,1727,0,71,1837,1751,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13947,229,1751,0,72,1727,1786,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13948,229,1786,0,73,1751,1812,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13949,229,1812,0,74,1786,1733,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13950,229,1733,0,75,1812,1751,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13951,229,1751,0,76,1733,1850,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13952,229,1850,0,77,1751,0,22,1069768552,1,193,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13953,230,1713,0,0,0,1851,1,1069768639,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13954,230,1851,0,1,1713,1713,1,1069768639,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13955,230,1713,0,2,1851,1851,1,1069768639,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13956,230,1851,0,3,1713,1788,1,1069768639,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13957,230,1788,0,4,1851,1761,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13958,230,1761,0,5,1788,1852,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13959,230,1852,0,6,1761,1851,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13960,230,1851,0,7,1852,1707,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13961,230,1707,0,8,1851,1780,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13962,230,1780,0,9,1707,1853,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13963,230,1853,0,10,1780,1733,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13964,230,1733,0,11,1853,1718,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13965,230,1718,0,12,1733,1713,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13966,230,1713,0,13,1718,1707,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13967,230,1707,0,14,1713,1780,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13968,230,1780,0,15,1707,1853,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13969,230,1853,0,16,1780,1777,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13970,230,1777,0,17,1853,1851,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13971,230,1851,0,18,1777,1769,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13972,230,1769,0,19,1851,1707,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13973,230,1707,0,20,1769,1791,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13974,230,1791,0,21,1707,1722,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13975,230,1722,0,22,1791,1854,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13976,230,1854,0,23,1722,1788,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13977,230,1788,0,24,1854,1761,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13978,230,1761,0,25,1788,1852,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13979,230,1852,0,26,1761,1851,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13980,230,1851,0,27,1852,1707,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13981,230,1707,0,28,1851,1780,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13982,230,1780,0,29,1707,1853,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13983,230,1853,0,30,1780,1733,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13984,230,1733,0,31,1853,1718,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13985,230,1718,0,32,1733,1713,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13986,230,1713,0,33,1718,1707,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13987,230,1707,0,34,1713,1780,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13988,230,1780,0,35,1707,1853,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13989,230,1853,0,36,1780,1777,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13990,230,1777,0,37,1853,1851,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13991,230,1851,0,38,1777,1769,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13992,230,1769,0,39,1851,1707,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13993,230,1707,0,40,1769,1791,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13994,230,1791,0,41,1707,1722,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13995,230,1722,0,42,1791,1854,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13996,230,1854,0,43,1722,0,1,1069768639,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13997,231,1855,0,0,0,1741,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13998,231,1741,0,1,1855,1856,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (13999,231,1856,0,2,1741,1841,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14000,231,1841,0,3,1856,1857,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14001,231,1857,0,4,1841,1858,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14002,231,1858,0,5,1857,1855,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14003,231,1855,0,6,1858,1741,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14004,231,1741,0,7,1855,1856,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14005,231,1856,0,8,1741,1841,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14006,231,1841,0,9,1856,1857,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14007,231,1857,0,10,1841,1858,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14008,231,1858,0,11,1857,1707,21,1069768747,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14009,231,1707,0,12,1858,1791,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14010,231,1791,0,13,1707,1856,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14011,231,1856,0,14,1791,1841,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14012,231,1841,0,15,1856,1857,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14013,231,1857,0,16,1841,1858,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14014,231,1858,0,17,1857,1859,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14015,231,1859,0,18,1858,1860,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14016,231,1860,0,19,1859,1751,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14017,231,1751,0,20,1860,1861,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14018,231,1861,0,21,1751,1862,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14019,231,1862,0,22,1861,1706,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14020,231,1706,0,23,1862,1863,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14021,231,1863,0,24,1706,1864,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14022,231,1864,0,25,1863,1863,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14023,231,1863,0,26,1864,1707,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14024,231,1707,0,27,1863,1775,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14025,231,1775,0,28,1707,1865,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14026,231,1865,0,29,1775,1733,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14027,231,1733,0,30,1865,1751,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14028,231,1751,0,31,1733,1866,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14029,231,1866,0,32,1751,1707,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14030,231,1707,0,33,1866,1775,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14031,231,1775,0,34,1707,1867,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14032,231,1867,0,35,1775,1800,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14033,231,1800,0,36,1867,1868,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14034,231,1868,0,37,1800,1738,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14035,231,1738,0,38,1868,1775,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14036,231,1775,0,39,1738,1751,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14037,231,1751,0,40,1775,1869,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14038,231,1869,0,41,1751,1757,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14039,231,1757,0,42,1869,1870,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14040,231,1870,0,43,1757,1729,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14041,231,1729,0,44,1870,1757,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14042,231,1757,0,45,1729,1707,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14043,231,1707,0,46,1757,1791,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14044,231,1791,0,47,1707,1856,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14045,231,1856,0,48,1791,1841,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14046,231,1841,0,49,1856,1857,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14047,231,1857,0,50,1841,1858,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14048,231,1858,0,51,1857,1859,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14049,231,1859,0,52,1858,1860,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14050,231,1860,0,53,1859,1751,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14051,231,1751,0,54,1860,1861,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14052,231,1861,0,55,1751,1862,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14053,231,1862,0,56,1861,1706,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14054,231,1706,0,57,1862,1863,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14055,231,1863,0,58,1706,1864,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14056,231,1864,0,59,1863,1863,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14057,231,1863,0,60,1864,1707,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14058,231,1707,0,61,1863,1775,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14059,231,1775,0,62,1707,1865,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14060,231,1865,0,63,1775,1733,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14061,231,1733,0,64,1865,1751,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14062,231,1751,0,65,1733,1866,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14063,231,1866,0,66,1751,1707,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14064,231,1707,0,67,1866,1775,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14065,231,1775,0,68,1707,1867,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14066,231,1867,0,69,1775,1800,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14067,231,1800,0,70,1867,1868,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14068,231,1868,0,71,1800,1738,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14069,231,1738,0,72,1868,1775,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14070,231,1775,0,73,1738,1751,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14071,231,1751,0,74,1775,1869,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14072,231,1869,0,75,1751,1757,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14073,231,1757,0,76,1869,1870,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14074,231,1870,0,77,1757,1729,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14075,231,1729,0,78,1870,1757,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14076,231,1757,0,79,1729,1748,21,1069768747,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14077,231,1748,0,80,1757,1748,21,1069768747,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14078,231,1748,0,81,1748,0,21,1069768747,1,190,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14079,232,1871,0,0,0,1751,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14080,232,1751,0,1,1871,1872,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14081,232,1872,0,2,1751,1713,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14082,232,1713,0,3,1872,1871,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14083,232,1871,0,4,1713,1751,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14084,232,1751,0,5,1871,1872,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14085,232,1872,0,6,1751,1713,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14086,232,1713,0,7,1872,1873,21,1069768853,1,188,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14087,232,1873,0,8,1713,1841,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14088,232,1841,0,9,1873,1874,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14089,232,1874,0,10,1841,1875,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14090,232,1875,0,11,1874,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14091,232,1741,0,12,1875,1876,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14092,232,1876,0,13,1741,1877,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14093,232,1877,0,14,1876,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14094,232,1713,0,15,1877,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14095,232,1707,0,16,1713,1878,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14096,232,1878,0,17,1707,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14097,232,1879,0,18,1878,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14098,232,1741,0,19,1879,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14099,232,1880,0,20,1741,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14100,232,1753,0,21,1880,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14101,232,1741,0,22,1753,1841,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14102,232,1841,0,23,1741,1881,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14103,232,1881,0,24,1841,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14104,232,1713,0,25,1881,1727,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14105,232,1727,0,26,1713,1721,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14106,232,1721,0,27,1727,1863,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14107,232,1863,0,28,1721,1882,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14108,232,1882,0,29,1863,1863,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14109,232,1863,0,30,1882,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14110,232,1880,0,31,1863,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14111,232,1741,0,32,1880,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14112,232,1751,0,33,1741,1883,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14113,232,1883,0,34,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14114,232,1713,0,35,1883,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14115,232,1776,0,36,1713,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14116,232,1707,0,37,1776,1884,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14117,232,1884,0,38,1707,1727,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14118,232,1727,0,39,1884,1756,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14119,232,1756,0,40,1727,1885,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14120,232,1885,0,41,1756,1886,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14121,232,1886,0,42,1885,1887,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14122,232,1887,0,43,1886,1888,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14123,232,1888,0,44,1887,1792,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14124,232,1792,0,45,1888,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14125,232,1879,0,46,1792,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14126,232,1733,0,47,1879,1889,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14127,232,1889,0,48,1733,1710,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14128,232,1710,0,49,1889,1712,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14129,232,1712,0,50,1710,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14130,232,1776,0,51,1712,1765,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14131,232,1765,0,52,1776,1884,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14132,232,1884,0,53,1765,1890,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14133,232,1890,0,54,1884,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14134,232,1733,0,55,1890,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14135,232,1751,0,56,1733,1883,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14136,232,1883,0,57,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14137,232,1713,0,58,1883,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14138,232,1880,0,59,1713,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14139,232,1753,0,60,1880,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14140,232,1733,0,61,1753,1881,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14141,232,1881,0,62,1733,1769,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14142,232,1769,0,63,1881,1891,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14143,232,1891,0,64,1769,1892,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14144,232,1892,0,65,1891,1792,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14145,232,1792,0,66,1892,1827,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14146,232,1827,0,67,1792,1893,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14147,232,1893,0,68,1827,1876,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14148,232,1876,0,69,1893,1718,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14149,232,1718,0,70,1876,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14150,232,1776,0,71,1718,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14151,232,1707,0,72,1776,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14152,232,1879,0,73,1707,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14153,232,1741,0,74,1879,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14154,232,1751,0,75,1741,1728,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14155,232,1728,0,76,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14156,232,1713,0,77,1728,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14157,232,1751,0,78,1713,1894,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14158,232,1894,0,79,1751,1895,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14159,232,1895,0,80,1894,1896,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14160,232,1896,0,81,1895,1897,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14161,232,1897,0,82,1896,1898,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14162,232,1898,0,83,1897,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14163,232,1753,0,84,1898,1727,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14164,232,1727,0,85,1753,1899,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14165,232,1899,0,86,1727,1839,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14166,232,1839,0,87,1899,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14167,232,1776,0,88,1839,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14168,232,1707,0,89,1776,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14169,232,1879,0,90,1707,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14170,232,1753,0,91,1879,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14171,232,1733,0,92,1753,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14172,232,1751,0,93,1733,1872,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14173,232,1872,0,94,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14174,232,1713,0,95,1872,1900,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14175,232,1900,0,96,1713,1765,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14176,232,1765,0,97,1900,1901,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14177,232,1901,0,98,1765,1902,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14178,232,1902,0,99,1901,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14179,232,1879,0,100,1902,1708,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14180,232,1708,0,101,1879,1773,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14181,232,1773,0,102,1708,1903,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14182,232,1903,0,103,1773,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14183,232,1753,0,104,1903,1904,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14184,232,1904,0,105,1753,1895,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14185,232,1895,0,106,1904,1905,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14186,232,1905,0,107,1895,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14187,232,1880,0,108,1905,1906,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14188,232,1906,0,109,1880,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14189,232,1741,0,110,1906,1722,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14190,232,1722,0,111,1741,1907,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14191,232,1907,0,112,1722,1908,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14192,232,1908,0,113,1907,1905,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14193,232,1905,0,114,1908,1807,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14194,232,1807,0,115,1905,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14195,232,1879,0,116,1807,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14196,232,1733,0,117,1879,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14197,232,1751,0,118,1733,1728,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14198,232,1728,0,119,1751,1712,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14199,232,1712,0,120,1728,1873,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14200,232,1873,0,121,1712,1841,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14201,232,1841,0,122,1873,1874,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14202,232,1874,0,123,1841,1875,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14203,232,1875,0,124,1874,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14204,232,1741,0,125,1875,1876,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14205,232,1876,0,126,1741,1877,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14206,232,1877,0,127,1876,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14207,232,1713,0,128,1877,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14208,232,1707,0,129,1713,1878,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14209,232,1878,0,130,1707,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14210,232,1879,0,131,1878,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14211,232,1741,0,132,1879,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14212,232,1880,0,133,1741,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14213,232,1753,0,134,1880,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14214,232,1741,0,135,1753,1841,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14215,232,1841,0,136,1741,1881,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14216,232,1881,0,137,1841,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14217,232,1713,0,138,1881,1727,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14218,232,1727,0,139,1713,1721,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14219,232,1721,0,140,1727,1863,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14220,232,1863,0,141,1721,1882,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14221,232,1882,0,142,1863,1863,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14222,232,1863,0,143,1882,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14223,232,1880,0,144,1863,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14224,232,1741,0,145,1880,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14225,232,1751,0,146,1741,1883,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14226,232,1883,0,147,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14227,232,1713,0,148,1883,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14228,232,1776,0,149,1713,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14229,232,1707,0,150,1776,1884,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14230,232,1884,0,151,1707,1727,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14231,232,1727,0,152,1884,1756,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14232,232,1756,0,153,1727,1885,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14233,232,1885,0,154,1756,1886,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14234,232,1886,0,155,1885,1887,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14235,232,1887,0,156,1886,1888,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14236,232,1888,0,157,1887,1792,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14237,232,1792,0,158,1888,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14238,232,1879,0,159,1792,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14239,232,1733,0,160,1879,1889,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14240,232,1889,0,161,1733,1710,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14241,232,1710,0,162,1889,1712,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14242,232,1712,0,163,1710,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14243,232,1776,0,164,1712,1765,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14244,232,1765,0,165,1776,1884,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14245,232,1884,0,166,1765,1890,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14246,232,1890,0,167,1884,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14247,232,1733,0,168,1890,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14248,232,1751,0,169,1733,1883,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14249,232,1883,0,170,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14250,232,1713,0,171,1883,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14251,232,1880,0,172,1713,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14252,232,1753,0,173,1880,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14253,232,1733,0,174,1753,1881,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14254,232,1881,0,175,1733,1769,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14255,232,1769,0,176,1881,1891,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14256,232,1891,0,177,1769,1892,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14257,232,1892,0,178,1891,1792,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14258,232,1792,0,179,1892,1827,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14259,232,1827,0,180,1792,1893,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14260,232,1893,0,181,1827,1876,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14261,232,1876,0,182,1893,1718,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14262,232,1718,0,183,1876,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14263,232,1776,0,184,1718,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14264,232,1707,0,185,1776,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14265,232,1879,0,186,1707,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14266,232,1741,0,187,1879,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14267,232,1751,0,188,1741,1728,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14268,232,1728,0,189,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14269,232,1713,0,190,1728,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14270,232,1751,0,191,1713,1894,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14271,232,1894,0,192,1751,1895,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14272,232,1895,0,193,1894,1896,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14273,232,1896,0,194,1895,1897,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14274,232,1897,0,195,1896,1898,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14275,232,1898,0,196,1897,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14276,232,1753,0,197,1898,1727,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14277,232,1727,0,198,1753,1899,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14278,232,1899,0,199,1727,1839,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14279,232,1839,0,200,1899,1776,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14280,232,1776,0,201,1839,1707,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14281,232,1707,0,202,1776,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14282,232,1879,0,203,1707,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14283,232,1753,0,204,1879,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14284,232,1733,0,205,1753,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14285,232,1751,0,206,1733,1872,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14286,232,1872,0,207,1751,1713,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14287,232,1713,0,208,1872,1900,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14288,232,1900,0,209,1713,1765,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14289,232,1765,0,210,1900,1901,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14290,232,1901,0,211,1765,1902,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14291,232,1902,0,212,1901,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14292,232,1879,0,213,1902,1708,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14293,232,1708,0,214,1879,1773,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14294,232,1773,0,215,1708,1903,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14295,232,1903,0,216,1773,1753,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14296,232,1753,0,217,1903,1904,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14297,232,1904,0,218,1753,1895,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14298,232,1895,0,219,1904,1905,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14299,232,1905,0,220,1895,1880,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14300,232,1880,0,221,1905,1906,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14301,232,1906,0,222,1880,1741,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14302,232,1741,0,223,1906,1722,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14303,232,1722,0,224,1741,1907,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14304,232,1907,0,225,1722,1908,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14305,232,1908,0,226,1907,1905,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14306,232,1905,0,227,1908,1807,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14307,232,1807,0,228,1905,1879,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14308,232,1879,0,229,1807,1733,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14309,232,1733,0,230,1879,1751,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14310,232,1751,0,231,1733,1728,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14311,232,1728,0,232,1751,1712,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14312,232,1712,0,233,1728,1909,21,1069768853,1,189,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14313,232,1909,0,234,1712,1909,21,1069768853,1,190,'',1);
INSERT INTO ezsearch_object_word_link VALUES (14314,232,1909,0,235,1909,0,21,1069768853,1,190,'',1);
INSERT INTO ezsearch_object_word_link VALUES (14315,161,1756,0,0,0,1718,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14316,161,1718,0,1,1756,1713,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14317,161,1713,0,2,1718,1756,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14318,161,1756,0,3,1713,1718,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14319,161,1718,0,4,1756,1713,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14320,161,1713,0,5,1718,1777,10,1068047603,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14321,161,1777,0,6,1713,1910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14322,161,1910,0,7,1777,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14323,161,1911,0,8,1910,1912,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14324,161,1912,0,9,1911,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14325,161,1741,0,10,1912,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14326,161,1913,0,11,1741,1914,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14327,161,1914,0,12,1913,1915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14328,161,1915,0,13,1914,1916,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14329,161,1916,0,14,1915,1917,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14330,161,1917,0,15,1916,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14331,161,1769,0,16,1917,1918,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14332,161,1918,0,17,1769,1919,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14333,161,1919,0,18,1918,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14334,161,1712,0,19,1919,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14335,161,1707,0,20,1712,1920,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14336,161,1920,0,21,1707,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14337,161,1776,0,22,1920,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14338,161,1707,0,23,1776,1853,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14339,161,1853,0,24,1707,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14340,161,1751,0,25,1853,1910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14341,161,1910,0,26,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14342,161,1707,0,27,1910,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14343,161,1708,0,28,1707,1709,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14344,161,1709,0,29,1708,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14345,161,1757,0,30,1709,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14346,161,1765,0,31,1757,1921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14347,161,1921,0,32,1765,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14348,161,1922,0,33,1921,1923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14349,161,1923,0,34,1922,1924,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14350,161,1924,0,35,1923,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14351,161,1816,0,36,1924,1925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14352,161,1925,0,37,1816,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14353,161,1738,0,38,1925,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14354,161,1757,0,39,1738,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14355,161,1765,0,40,1757,1921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14356,161,1921,0,41,1765,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14357,161,1926,0,42,1921,1897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14358,161,1897,0,43,1926,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14359,161,1922,0,44,1897,1927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14360,161,1927,0,45,1922,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14361,161,1855,0,46,1927,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14362,161,1741,0,47,1855,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14363,161,1928,0,48,1741,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14364,161,1733,0,49,1928,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14365,161,1707,0,50,1733,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14366,161,1791,0,51,1707,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14367,161,1928,0,52,1791,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14368,161,1733,0,53,1928,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14369,161,1859,0,54,1733,1929,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14370,161,1929,0,55,1859,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14371,161,1765,0,56,1929,1858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14372,161,1858,0,57,1765,1930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14373,161,1930,0,58,1858,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14374,161,1738,0,59,1930,1931,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14375,161,1931,0,60,1738,1706,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14376,161,1706,0,61,1931,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14377,161,1855,0,62,1706,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14378,161,1741,0,63,1855,1856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14379,161,1856,0,64,1741,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14380,161,1841,0,65,1856,1857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14381,161,1857,0,66,1841,1858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14382,161,1858,0,67,1857,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14383,161,1707,0,68,1858,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14384,161,1791,0,69,1707,1856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14385,161,1856,0,70,1791,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14386,161,1841,0,71,1856,1857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14387,161,1857,0,72,1841,1858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14388,161,1858,0,73,1857,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14389,161,1859,0,74,1858,1860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14390,161,1860,0,75,1859,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14391,161,1751,0,76,1860,1932,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14392,161,1932,0,77,1751,1933,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14393,161,1933,0,78,1932,1862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14394,161,1862,0,79,1933,1706,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14395,161,1706,0,80,1862,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14396,161,1863,0,81,1706,1864,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14397,161,1864,0,82,1863,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14398,161,1863,0,83,1864,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14399,161,1707,0,84,1863,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14400,161,1775,0,85,1707,1865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14401,161,1865,0,86,1775,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14402,161,1733,0,87,1865,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14403,161,1751,0,88,1733,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14404,161,1866,0,89,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14405,161,1707,0,90,1866,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14406,161,1775,0,91,1707,1867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14407,161,1867,0,92,1775,1800,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14408,161,1800,0,93,1867,1868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14409,161,1868,0,94,1800,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14410,161,1738,0,95,1868,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14411,161,1775,0,96,1738,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14412,161,1751,0,97,1775,1869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14413,161,1869,0,98,1751,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14414,161,1757,0,99,1869,1870,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14415,161,1870,0,100,1757,1729,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14416,161,1729,0,101,1870,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14417,161,1757,0,102,1729,1871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14418,161,1871,0,103,1757,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14419,161,1751,0,104,1871,1872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14420,161,1872,0,105,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14421,161,1713,0,106,1872,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14422,161,1873,0,107,1713,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14423,161,1841,0,108,1873,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14424,161,1874,0,109,1841,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14425,161,1875,0,110,1874,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14426,161,1741,0,111,1875,1876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14427,161,1876,0,112,1741,1877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14428,161,1877,0,113,1876,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14429,161,1713,0,114,1877,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14430,161,1707,0,115,1713,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14431,161,1878,0,116,1707,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14432,161,1879,0,117,1878,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14433,161,1741,0,118,1879,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14434,161,1880,0,119,1741,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14435,161,1753,0,120,1880,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14436,161,1741,0,121,1753,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14437,161,1841,0,122,1741,1881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14438,161,1881,0,123,1841,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14439,161,1713,0,124,1881,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14440,161,1727,0,125,1713,1721,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14441,161,1721,0,126,1727,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14442,161,1863,0,127,1721,1882,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14443,161,1882,0,128,1863,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14444,161,1863,0,129,1882,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14445,161,1880,0,130,1863,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14446,161,1741,0,131,1880,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14447,161,1751,0,132,1741,1883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14448,161,1883,0,133,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14449,161,1713,0,134,1883,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14450,161,1776,0,135,1713,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14451,161,1707,0,136,1776,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14452,161,1884,0,137,1707,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14453,161,1727,0,138,1884,1756,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14454,161,1756,0,139,1727,1885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14455,161,1885,0,140,1756,1886,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14456,161,1886,0,141,1885,1887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14457,161,1887,0,142,1886,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14458,161,1888,0,143,1887,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14459,161,1792,0,144,1888,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14460,161,1879,0,145,1792,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14461,161,1733,0,146,1879,1889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14462,161,1889,0,147,1733,1710,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14463,161,1710,0,148,1889,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14464,161,1712,0,149,1710,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14465,161,1776,0,150,1712,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14466,161,1765,0,151,1776,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14467,161,1884,0,152,1765,1890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14468,161,1890,0,153,1884,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14469,161,1733,0,154,1890,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14470,161,1751,0,155,1733,1883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14471,161,1883,0,156,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14472,161,1713,0,157,1883,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14473,161,1880,0,158,1713,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14474,161,1753,0,159,1880,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14475,161,1733,0,160,1753,1881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14476,161,1881,0,161,1733,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14477,161,1769,0,162,1881,1891,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14478,161,1891,0,163,1769,1892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14479,161,1892,0,164,1891,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14480,161,1792,0,165,1892,1827,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14481,161,1827,0,166,1792,1893,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14482,161,1893,0,167,1827,1876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14483,161,1876,0,168,1893,1718,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14484,161,1718,0,169,1876,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14485,161,1776,0,170,1718,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14486,161,1707,0,171,1776,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14487,161,1879,0,172,1707,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14488,161,1741,0,173,1879,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14489,161,1751,0,174,1741,1728,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14490,161,1728,0,175,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14491,161,1713,0,176,1728,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14492,161,1751,0,177,1713,1894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14493,161,1894,0,178,1751,1895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14494,161,1895,0,179,1894,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14495,161,1896,0,180,1895,1897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14496,161,1897,0,181,1896,1898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14497,161,1898,0,182,1897,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14498,161,1753,0,183,1898,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14499,161,1727,0,184,1753,1899,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14500,161,1899,0,185,1727,1839,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14501,161,1839,0,186,1899,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14502,161,1776,0,187,1839,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14503,161,1707,0,188,1776,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14504,161,1879,0,189,1707,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14505,161,1753,0,190,1879,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14506,161,1733,0,191,1753,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14507,161,1751,0,192,1733,1872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14508,161,1872,0,193,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14509,161,1713,0,194,1872,1900,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14510,161,1900,0,195,1713,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14511,161,1765,0,196,1900,1901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14512,161,1901,0,197,1765,1902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14513,161,1902,0,198,1901,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14514,161,1879,0,199,1902,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14515,161,1708,0,200,1879,1773,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14516,161,1773,0,201,1708,1903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14517,161,1903,0,202,1773,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14518,161,1753,0,203,1903,1904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14519,161,1904,0,204,1753,1895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14520,161,1895,0,205,1904,1905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14521,161,1905,0,206,1895,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14522,161,1880,0,207,1905,1906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14523,161,1906,0,208,1880,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14524,161,1741,0,209,1906,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14525,161,1722,0,210,1741,1907,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14526,161,1907,0,211,1722,1908,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14527,161,1908,0,212,1907,1905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14528,161,1905,0,213,1908,1807,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14529,161,1807,0,214,1905,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14530,161,1879,0,215,1807,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14531,161,1733,0,216,1879,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14532,161,1751,0,217,1733,1728,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14533,161,1728,0,218,1751,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14534,161,1712,0,219,1728,1934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14535,161,1934,0,220,1712,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14536,161,1751,0,221,1934,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14537,161,1712,0,222,1751,1935,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14538,161,1935,0,223,1712,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14539,161,1707,0,224,1935,1936,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14540,161,1936,0,225,1707,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14541,161,1765,0,226,1936,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14542,161,1884,0,227,1765,1937,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14543,161,1937,0,228,1884,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14544,161,1741,0,229,1937,1934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14545,161,1934,0,230,1741,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14546,161,1751,0,231,1934,1938,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14547,161,1938,0,232,1751,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14548,161,1750,0,233,1938,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14549,161,1751,0,234,1750,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14550,161,1713,0,235,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14551,161,1707,0,236,1713,1939,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14552,161,1939,0,237,1707,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14553,161,1722,0,238,1939,1940,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14554,161,1940,0,239,1722,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14555,161,1741,0,240,1940,1941,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14556,161,1941,0,241,1741,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14557,161,1855,0,242,1941,1942,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14558,161,1942,0,243,1855,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14559,161,1765,0,244,1942,1943,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14560,161,1943,0,245,1765,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14561,161,1944,0,246,1943,1799,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14562,161,1799,0,247,1944,1945,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14563,161,1945,0,248,1799,1927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14564,161,1927,0,249,1945,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14565,161,1707,0,250,1927,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14566,161,1878,0,251,1707,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14567,161,1911,0,252,1878,1946,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14568,161,1946,0,253,1911,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14569,161,1913,0,254,1946,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14570,161,1738,0,255,1913,1745,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14571,161,1745,0,256,1738,1947,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14572,161,1947,0,257,1745,1948,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14573,161,1948,0,258,1947,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14574,161,1738,0,259,1948,1934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14575,161,1934,0,260,1738,1831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14576,161,1831,0,261,1934,1895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14577,161,1895,0,262,1831,1949,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14578,161,1949,0,263,1895,1950,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14579,161,1950,0,264,1949,1951,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14580,161,1951,0,265,1950,1745,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14581,161,1745,0,266,1951,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14582,161,1776,0,267,1745,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14583,161,1753,0,268,1776,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14584,161,1727,0,269,1753,1952,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14585,161,1952,0,270,1727,1953,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14586,161,1953,0,271,1952,1954,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14587,161,1954,0,272,1953,1955,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14588,161,1955,0,273,1954,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14589,161,1878,0,274,1955,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14590,161,1896,0,275,1878,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14591,161,1775,0,276,1896,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14592,161,1741,0,277,1775,1956,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14593,161,1956,0,278,1741,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14594,161,1753,0,279,1956,1957,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14595,161,1957,0,280,1753,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14596,161,1841,0,281,1957,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14597,161,1713,0,282,1841,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14598,161,1741,0,283,1713,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14599,161,1958,0,284,1741,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14600,161,1765,0,285,1958,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14601,161,1884,0,286,1765,1871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14602,161,1871,0,287,1884,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14603,161,1841,0,288,1871,1959,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14604,161,1959,0,289,1841,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14605,161,1960,0,290,1959,1961,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14606,161,1961,0,291,1960,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14607,161,1841,0,292,1961,1959,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14608,161,1959,0,293,1841,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14609,161,1738,0,294,1959,1962,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14610,161,1962,0,295,1738,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14611,161,1960,0,296,1962,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14612,161,1727,0,297,1960,1963,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14613,161,1963,0,298,1727,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14614,161,1753,0,299,1963,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14615,161,1727,0,300,1753,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14616,161,1751,0,301,1727,1964,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14617,161,1964,0,302,1751,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14618,161,1866,0,303,1964,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14619,161,1896,0,304,1866,1965,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14620,161,1965,0,305,1896,1898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14621,161,1898,0,306,1965,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14622,161,1765,0,307,1898,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14623,161,1884,0,308,1765,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14624,161,1708,0,309,1884,1946,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14625,161,1946,0,310,1708,1966,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14626,161,1966,0,311,1946,1967,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14627,161,1967,0,312,1966,1968,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14628,161,1968,0,313,1967,1969,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14629,161,1969,0,314,1968,1970,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14630,161,1970,0,315,1969,1971,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14631,161,1971,0,316,1970,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14632,161,1769,0,317,1971,1972,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14633,161,1972,0,318,1769,1971,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14634,161,1971,0,319,1972,1973,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14635,161,1973,0,320,1971,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14636,161,1792,0,321,1973,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14637,161,1974,0,322,1792,1806,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14638,161,1806,0,323,1974,1807,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14639,161,1807,0,324,1806,1975,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14640,161,1975,0,325,1807,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14641,161,1751,0,326,1975,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14642,161,1960,0,327,1751,1976,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14643,161,1976,0,328,1960,1977,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14644,161,1977,0,329,1976,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14645,161,1974,0,330,1977,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14646,161,1738,0,331,1974,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14647,161,1776,0,332,1738,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14648,161,1707,0,333,1776,1978,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14649,161,1978,0,334,1707,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14650,161,1880,0,335,1978,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14651,161,1733,0,336,1880,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14652,161,1751,0,337,1733,1979,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14653,161,1979,0,338,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14654,161,1713,0,339,1979,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14655,161,1888,0,340,1713,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14656,161,1792,0,341,1888,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14657,161,1707,0,342,1792,1980,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14658,161,1980,0,343,1707,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14659,161,1757,0,344,1980,1925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14660,161,1925,0,345,1757,1981,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14661,161,1981,0,346,1925,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14662,161,1753,0,347,1981,1754,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14663,161,1754,0,348,1753,1756,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14664,161,1756,0,349,1754,1979,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14665,161,1979,0,350,1756,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14666,161,1911,0,351,1979,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14667,161,1765,0,352,1911,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14668,161,1960,0,353,1765,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14669,161,1708,0,354,1960,1982,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14670,161,1982,0,355,1708,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14671,161,1841,0,356,1982,1983,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14672,161,1983,0,357,1841,1984,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14673,161,1984,0,358,1983,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14674,161,1776,0,359,1984,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14675,161,1751,0,360,1776,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14676,161,1884,0,361,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14677,161,1707,0,362,1884,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14678,161,1761,0,363,1707,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14679,161,1880,0,364,1761,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14680,161,1727,0,365,1880,1985,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14681,161,1985,0,366,1727,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14682,161,1822,0,367,1985,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14683,161,1791,0,368,1822,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14684,161,1958,0,369,1791,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14685,161,1776,0,370,1958,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14686,161,1822,0,371,1776,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14687,161,1816,0,372,1822,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14688,161,1765,0,373,1816,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14689,161,1960,0,374,1765,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14690,161,1791,0,375,1960,1986,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14691,161,1986,0,376,1791,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14692,161,1757,0,377,1986,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14693,161,1751,0,378,1757,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14694,161,1884,0,379,1751,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14695,161,1727,0,380,1884,1987,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14696,161,1987,0,381,1727,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14697,161,1988,0,382,1987,1989,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14698,161,1989,0,383,1988,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14699,161,1822,0,384,1989,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14700,161,1791,0,385,1822,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14701,161,1873,0,386,1791,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14702,161,1988,0,387,1873,1990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14703,161,1990,0,388,1988,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14704,161,1741,0,389,1990,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14705,161,1958,0,390,1741,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14706,161,1896,0,391,1958,1991,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14707,161,1991,0,392,1896,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14708,161,1822,0,393,1991,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14709,161,1926,0,394,1822,1897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14710,161,1897,0,395,1926,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14711,161,1722,0,396,1897,1992,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14712,161,1992,0,397,1722,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14713,161,1741,0,398,1992,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14714,161,1974,0,399,1741,1993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14715,161,1993,0,400,1974,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14716,161,1765,0,401,1993,1994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14717,161,1994,0,402,1765,1995,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14718,161,1995,0,403,1994,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14719,161,1841,0,404,1995,1959,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14720,161,1959,0,405,1841,1996,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14721,161,1996,0,406,1959,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14722,161,1750,0,407,1996,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14723,161,1726,0,408,1750,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14724,161,1707,0,409,1726,1978,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14725,161,1978,0,410,1707,1997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14726,161,1997,0,411,1978,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14727,161,1741,0,412,1997,1998,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14728,161,1998,0,413,1741,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14729,161,1727,0,414,1998,1949,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14730,161,1949,0,415,1727,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14731,161,1741,0,416,1949,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14732,161,1751,0,417,1741,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14733,161,1884,0,418,1751,1999,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14734,161,1999,0,419,1884,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14735,161,1873,0,420,1999,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14736,161,1841,0,421,1873,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14737,161,1874,0,422,1841,2000,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14738,161,2000,0,423,1874,1962,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14739,161,1962,0,424,2000,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14740,161,1726,0,425,1962,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14741,161,1707,0,426,1726,1978,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14742,161,1978,0,427,1707,1997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14743,161,1997,0,428,1978,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14744,161,1741,0,429,1997,2001,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14745,161,2001,0,430,1741,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14746,161,1722,0,431,2001,2002,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14747,161,2002,0,432,1722,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14748,161,1738,0,433,2002,2003,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14749,161,2003,0,434,1738,1993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14750,161,1993,0,435,2003,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14751,161,1765,0,436,1993,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14752,161,1944,0,437,1765,1972,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14753,161,1972,0,438,1944,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14754,161,1888,0,439,1972,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14755,161,1792,0,440,1888,2004,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14756,161,2004,0,441,1792,2005,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14757,161,2005,0,442,2004,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14758,161,1792,0,443,2005,1827,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14759,161,1827,0,444,1792,2006,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14760,161,2006,0,445,1827,1923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14761,161,1923,0,446,2006,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14762,161,1866,0,447,1923,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14763,161,1727,0,448,1866,2007,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14764,161,2007,0,449,1727,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14765,161,1855,0,450,2007,2008,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14766,161,2008,0,451,1855,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14767,161,1775,0,452,2008,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14768,161,1707,0,453,1775,2009,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14769,161,2009,0,454,1707,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14770,161,1726,0,455,2009,1736,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14771,161,1736,0,456,1726,2010,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14772,161,2010,0,457,1736,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14773,161,1726,0,458,2010,2011,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14774,161,2011,0,459,1726,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14775,161,1775,0,460,2011,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14776,161,1707,0,461,1775,2012,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14777,161,2012,0,462,1707,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14778,161,1726,0,463,2012,2013,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14779,161,2013,0,464,1726,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14780,161,1761,0,465,2013,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14781,161,1707,0,466,1761,2014,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14782,161,2014,0,467,1707,2015,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14783,161,2015,0,468,2014,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14784,161,1707,0,469,2015,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14785,161,1878,0,470,1707,2016,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14786,161,2016,0,471,1878,1744,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14787,161,1744,0,472,2016,2017,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14788,161,2017,0,473,1744,1820,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14789,161,1820,0,474,2017,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14790,161,1875,0,475,1820,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14791,161,1741,0,476,1875,1993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14792,161,1993,0,477,1741,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14793,161,1765,0,478,1993,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14794,161,1944,0,479,1765,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14795,161,1776,0,480,1944,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14796,161,1707,0,481,1776,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14797,161,1922,0,482,1707,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14798,161,1913,0,483,1922,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14799,161,2018,0,484,1913,2019,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14800,161,2019,0,485,2018,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14801,161,1733,0,486,2019,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14802,161,1765,0,487,1733,2020,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14803,161,2020,0,488,1765,2021,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14804,161,2021,0,489,2020,2022,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14805,161,2022,0,490,2021,1831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14806,161,1831,0,491,2022,1957,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14807,161,1957,0,492,1831,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14808,161,1707,0,493,1957,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14809,161,1880,0,494,1707,2023,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14810,161,2023,0,495,1880,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14811,161,1733,0,496,2023,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14812,161,1765,0,497,1733,2024,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14813,161,2024,0,498,1765,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14814,161,2018,0,499,2024,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14815,161,1928,0,500,2018,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14816,161,1733,0,501,1928,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14817,161,1765,0,502,1733,2025,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14818,161,2025,0,503,1765,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14819,161,2018,0,504,2025,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14820,161,1928,0,505,2018,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14821,161,1738,0,506,1928,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14822,161,1913,0,507,1738,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14823,161,2018,0,508,1913,2019,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14824,161,2019,0,509,2018,2026,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14825,161,2026,0,510,2019,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14826,161,1733,0,511,2026,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14827,161,1765,0,512,1733,2027,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14828,161,2027,0,513,1765,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14829,161,1751,0,514,2027,2028,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14830,161,2028,0,515,1751,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14831,161,1875,0,516,2028,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14832,161,1707,0,517,1875,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14833,161,1873,0,518,1707,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14834,161,1741,0,519,1873,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14835,161,1922,0,520,1741,1718,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14836,161,1718,0,521,1922,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14837,161,1866,0,522,1718,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14838,161,1738,0,523,1866,1962,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14839,161,1962,0,524,1738,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14840,161,1765,0,525,1962,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14841,161,1944,0,526,1765,2029,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14842,161,2029,0,527,1944,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14843,161,1727,0,528,2029,2030,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14844,161,2030,0,529,1727,2031,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14845,161,2031,0,530,2030,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14846,161,1751,0,531,2031,1990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14847,161,1990,0,532,1751,1845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14848,161,1845,0,533,1990,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14849,161,1753,0,534,1845,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14850,161,1926,0,535,1753,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14851,161,1974,0,536,1926,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14852,161,1896,0,537,1974,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14853,161,1958,0,538,1896,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14854,161,1765,0,539,1958,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14855,161,1884,0,540,1765,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14856,161,1733,0,541,1884,1849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14857,161,1849,0,542,1733,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14858,161,1751,0,543,1849,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14859,161,1874,0,544,1751,2028,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14860,161,2028,0,545,1874,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14861,161,1875,0,546,2028,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14862,161,1707,0,547,1875,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14863,161,1873,0,548,1707,2015,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14864,161,2015,0,549,1873,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14865,161,1765,0,550,2015,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14866,161,1884,0,551,1765,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14867,161,1727,0,552,1884,2030,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14868,161,2030,0,553,1727,2032,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14869,161,2032,0,554,2030,1951,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14870,161,1951,0,555,2032,2033,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14871,161,2033,0,556,1951,1889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14872,161,1889,0,557,2033,2034,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14873,161,2034,0,558,1889,2015,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14874,161,2015,0,559,2034,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14875,161,1765,0,560,2015,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14876,161,1944,0,561,1765,1807,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14877,161,1807,0,562,1944,2035,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14878,161,2035,0,563,1807,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14879,161,1707,0,564,2035,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14880,161,1926,0,565,1707,1789,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14881,161,1789,0,566,1926,1986,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14882,161,1986,0,567,1789,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14883,161,1751,0,568,1986,2036,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14884,161,2036,0,569,1751,1955,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14885,161,1955,0,570,2036,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14886,161,1707,0,571,1955,2016,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14887,161,2016,0,572,1707,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14888,161,1751,0,573,2016,1990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14889,161,1990,0,574,1751,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14890,161,1741,0,575,1990,2037,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14891,161,2037,0,576,1741,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14892,161,1765,0,577,2037,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14893,161,1944,0,578,1765,2038,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14894,161,2038,0,579,1944,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14895,161,1741,0,580,2038,2039,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14896,161,2039,0,581,1741,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14897,161,1751,0,582,2039,1930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14898,161,1930,0,583,1751,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14899,161,1750,0,584,1930,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14900,161,1751,0,585,1750,2040,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14901,161,2040,0,586,1751,2041,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14902,161,2041,0,587,2040,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14903,161,1769,0,588,2041,2042,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14904,161,2042,0,589,1769,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14905,161,1733,0,590,2042,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14906,161,1707,0,591,1733,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14907,161,1775,0,592,1707,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14908,161,1841,0,593,1775,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14909,161,1944,0,594,1841,1729,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14910,161,1729,0,595,1944,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14911,161,1911,0,596,1729,2038,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14912,161,2038,0,597,1911,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14913,161,1988,0,598,2038,2043,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14914,161,2043,0,599,1988,2044,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14915,161,2044,0,600,2043,2045,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14916,161,2045,0,601,2044,1935,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14917,161,1935,0,602,2045,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14918,161,1707,0,603,1935,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14919,161,1879,0,604,1707,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14920,161,1873,0,605,1879,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14921,161,1841,0,606,1873,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14922,161,1874,0,607,1841,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14923,161,1875,0,608,1874,2046,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14924,161,2046,0,609,1875,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14925,161,1765,0,610,2046,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14926,161,1880,0,611,1765,1937,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14927,161,1937,0,612,1880,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14928,161,1741,0,613,1937,1986,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14929,161,1986,0,614,1741,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14930,161,1776,0,615,1986,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14931,161,1707,0,616,1776,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14932,161,1775,0,617,1707,2047,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14933,161,2047,0,618,1775,1795,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14934,161,1795,0,619,2047,1963,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14935,161,1963,0,620,1795,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14936,161,1866,0,621,1963,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14937,161,1769,0,622,1866,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14938,161,1776,0,623,1769,1788,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14939,161,1788,0,624,1776,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14940,161,1761,0,625,1788,2028,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14941,161,2028,0,626,1761,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14942,161,1866,0,627,2028,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14943,161,1707,0,628,1866,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14944,161,1791,0,629,1707,2048,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14945,161,2048,0,630,1791,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14946,161,1888,0,631,2048,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14947,161,1792,0,632,1888,2049,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14948,161,2049,0,633,1792,1800,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14949,161,1800,0,634,2049,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14950,161,1958,0,635,1800,2050,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14951,161,2050,0,636,1958,2051,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14952,161,2051,0,637,2050,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14953,161,1751,0,638,2051,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14954,161,1712,0,639,1751,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14955,161,1761,0,640,1712,2052,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14956,161,2052,0,641,1761,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14957,161,1859,0,642,2052,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14958,161,1751,0,643,1859,2053,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14959,161,2053,0,644,1751,1925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14960,161,1925,0,645,2053,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14961,161,1958,0,646,1925,1744,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14962,161,1744,0,647,1958,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14963,161,1988,0,648,1744,2054,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14964,161,2054,0,649,1988,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14965,161,1738,0,650,2054,2055,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14966,161,2055,0,651,1738,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14967,161,1750,0,652,2055,1989,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14968,161,1989,0,653,1750,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14969,161,1707,0,654,1989,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14970,161,1708,0,655,1707,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14971,161,1911,0,656,1708,1709,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14972,161,1709,0,657,1911,2056,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14973,161,2056,0,658,1709,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14974,161,1816,0,659,2056,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14975,161,1751,0,660,1816,2057,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14976,161,2057,0,661,1751,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14977,161,1738,0,662,2057,2058,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14978,161,2058,0,663,1738,1729,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14979,161,1729,0,664,2058,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14980,161,1751,0,665,1729,2053,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14981,161,2053,0,666,1751,1718,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14982,161,1718,0,667,2053,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14983,161,1708,0,668,1718,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14984,161,1722,0,669,1708,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14985,161,1841,0,670,1722,1827,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14986,161,1827,0,671,1841,2059,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14987,161,2059,0,672,1827,2060,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14988,161,2060,0,673,2059,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14989,161,1750,0,674,2060,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14990,161,1751,0,675,1750,1947,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14991,161,1947,0,676,1751,2001,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14992,161,2001,0,677,1947,1721,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14993,161,1721,0,678,2001,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14994,161,1873,0,679,1721,2061,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14995,161,2061,0,680,1873,2062,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14996,161,2062,0,681,2061,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14997,161,1841,0,682,2062,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14998,161,1879,0,683,1841,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (14999,161,1757,0,684,1879,2063,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15000,161,2063,0,685,1757,2061,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15001,161,2061,0,686,2063,2062,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15002,161,2062,0,687,2061,2064,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15003,161,2064,0,688,2062,2065,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15004,161,2065,0,689,2064,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15005,161,1738,0,690,2065,2066,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15006,161,2066,0,691,1738,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15007,161,1708,0,692,2066,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15008,161,1722,0,693,1708,1854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15009,161,1854,0,694,1722,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15010,161,1816,0,695,1854,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15011,161,1751,0,696,1816,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15012,161,1712,0,697,1751,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15013,161,1753,0,698,1712,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15014,161,1708,0,699,1753,1721,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15015,161,1721,0,700,1708,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15016,161,1722,0,701,1721,2067,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15017,161,2067,0,702,1722,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15018,161,1733,0,703,2067,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15019,161,1913,0,704,1733,2068,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15020,161,2068,0,705,1913,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15021,161,1738,0,706,2068,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15022,161,1708,0,707,1738,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15023,161,1722,0,708,1708,1854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15024,161,1854,0,709,1722,1803,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15025,161,1803,0,710,1854,2069,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15026,161,2069,0,711,1803,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15027,161,1859,0,712,2069,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15028,161,1751,0,713,1859,2070,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15029,161,2070,0,714,1751,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15030,161,1750,0,715,2070,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15031,161,1751,0,716,1750,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15032,161,1713,0,717,1751,2071,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15033,161,2071,0,718,1713,2072,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15034,161,2072,0,719,2071,2073,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15035,161,2073,0,720,2072,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15036,161,1727,0,721,2073,2074,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15037,161,2074,0,722,1727,1777,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15038,161,1777,0,723,2074,1910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15039,161,1910,0,724,1777,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15040,161,1911,0,725,1910,1912,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15041,161,1912,0,726,1911,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15042,161,1741,0,727,1912,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15043,161,1913,0,728,1741,1914,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15044,161,1914,0,729,1913,1915,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15045,161,1915,0,730,1914,1916,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15046,161,1916,0,731,1915,1917,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15047,161,1917,0,732,1916,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15048,161,1769,0,733,1917,1918,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15049,161,1918,0,734,1769,1919,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15050,161,1919,0,735,1918,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15051,161,1712,0,736,1919,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15052,161,1707,0,737,1712,1920,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15053,161,1920,0,738,1707,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15054,161,1776,0,739,1920,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15055,161,1707,0,740,1776,1853,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15056,161,1853,0,741,1707,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15057,161,1751,0,742,1853,1910,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15058,161,1910,0,743,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15059,161,1707,0,744,1910,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15060,161,1708,0,745,1707,1709,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15061,161,1709,0,746,1708,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15062,161,1757,0,747,1709,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15063,161,1765,0,748,1757,1921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15064,161,1921,0,749,1765,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15065,161,1922,0,750,1921,1923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15066,161,1923,0,751,1922,1924,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15067,161,1924,0,752,1923,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15068,161,1816,0,753,1924,1925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15069,161,1925,0,754,1816,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15070,161,1738,0,755,1925,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15071,161,1757,0,756,1738,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15072,161,1765,0,757,1757,1921,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15073,161,1921,0,758,1765,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15074,161,1926,0,759,1921,1897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15075,161,1897,0,760,1926,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15076,161,1922,0,761,1897,1927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15077,161,1927,0,762,1922,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15078,161,1855,0,763,1927,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15079,161,1741,0,764,1855,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15080,161,1928,0,765,1741,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15081,161,1733,0,766,1928,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15082,161,1707,0,767,1733,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15083,161,1791,0,768,1707,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15084,161,1928,0,769,1791,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15085,161,1733,0,770,1928,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15086,161,1859,0,771,1733,1929,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15087,161,1929,0,772,1859,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15088,161,1765,0,773,1929,1858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15089,161,1858,0,774,1765,1930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15090,161,1930,0,775,1858,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15091,161,1738,0,776,1930,1931,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15092,161,1931,0,777,1738,1706,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15093,161,1706,0,778,1931,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15094,161,1855,0,779,1706,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15095,161,1741,0,780,1855,1856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15096,161,1856,0,781,1741,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15097,161,1841,0,782,1856,1857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15098,161,1857,0,783,1841,1858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15099,161,1858,0,784,1857,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15100,161,1707,0,785,1858,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15101,161,1791,0,786,1707,1856,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15102,161,1856,0,787,1791,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15103,161,1841,0,788,1856,1857,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15104,161,1857,0,789,1841,1858,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15105,161,1858,0,790,1857,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15106,161,1859,0,791,1858,1860,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15107,161,1860,0,792,1859,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15108,161,1751,0,793,1860,1932,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15109,161,1932,0,794,1751,1933,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15110,161,1933,0,795,1932,1862,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15111,161,1862,0,796,1933,1706,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15112,161,1706,0,797,1862,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15113,161,1863,0,798,1706,1864,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15114,161,1864,0,799,1863,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15115,161,1863,0,800,1864,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15116,161,1707,0,801,1863,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15117,161,1775,0,802,1707,1865,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15118,161,1865,0,803,1775,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15119,161,1733,0,804,1865,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15120,161,1751,0,805,1733,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15121,161,1866,0,806,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15122,161,1707,0,807,1866,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15123,161,1775,0,808,1707,1867,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15124,161,1867,0,809,1775,1800,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15125,161,1800,0,810,1867,1868,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15126,161,1868,0,811,1800,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15127,161,1738,0,812,1868,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15128,161,1775,0,813,1738,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15129,161,1751,0,814,1775,1869,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15130,161,1869,0,815,1751,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15131,161,1757,0,816,1869,1870,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15132,161,1870,0,817,1757,1729,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15133,161,1729,0,818,1870,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15134,161,1757,0,819,1729,1871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15135,161,1871,0,820,1757,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15136,161,1751,0,821,1871,1872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15137,161,1872,0,822,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15138,161,1713,0,823,1872,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15139,161,1873,0,824,1713,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15140,161,1841,0,825,1873,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15141,161,1874,0,826,1841,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15142,161,1875,0,827,1874,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15143,161,1741,0,828,1875,1876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15144,161,1876,0,829,1741,1877,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15145,161,1877,0,830,1876,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15146,161,1713,0,831,1877,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15147,161,1707,0,832,1713,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15148,161,1878,0,833,1707,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15149,161,1879,0,834,1878,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15150,161,1741,0,835,1879,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15151,161,1880,0,836,1741,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15152,161,1753,0,837,1880,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15153,161,1741,0,838,1753,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15154,161,1841,0,839,1741,1881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15155,161,1881,0,840,1841,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15156,161,1713,0,841,1881,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15157,161,1727,0,842,1713,1721,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15158,161,1721,0,843,1727,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15159,161,1863,0,844,1721,1882,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15160,161,1882,0,845,1863,1863,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15161,161,1863,0,846,1882,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15162,161,1880,0,847,1863,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15163,161,1741,0,848,1880,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15164,161,1751,0,849,1741,1883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15165,161,1883,0,850,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15166,161,1713,0,851,1883,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15167,161,1776,0,852,1713,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15168,161,1707,0,853,1776,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15169,161,1884,0,854,1707,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15170,161,1727,0,855,1884,1756,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15171,161,1756,0,856,1727,1885,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15172,161,1885,0,857,1756,1886,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15173,161,1886,0,858,1885,1887,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15174,161,1887,0,859,1886,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15175,161,1888,0,860,1887,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15176,161,1792,0,861,1888,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15177,161,1879,0,862,1792,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15178,161,1733,0,863,1879,1889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15179,161,1889,0,864,1733,1710,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15180,161,1710,0,865,1889,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15181,161,1712,0,866,1710,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15182,161,1776,0,867,1712,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15183,161,1765,0,868,1776,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15184,161,1884,0,869,1765,1890,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15185,161,1890,0,870,1884,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15186,161,1733,0,871,1890,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15187,161,1751,0,872,1733,1883,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15188,161,1883,0,873,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15189,161,1713,0,874,1883,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15190,161,1880,0,875,1713,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15191,161,1753,0,876,1880,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15192,161,1733,0,877,1753,1881,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15193,161,1881,0,878,1733,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15194,161,1769,0,879,1881,1891,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15195,161,1891,0,880,1769,1892,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15196,161,1892,0,881,1891,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15197,161,1792,0,882,1892,1827,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15198,161,1827,0,883,1792,1893,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15199,161,1893,0,884,1827,1876,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15200,161,1876,0,885,1893,1718,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15201,161,1718,0,886,1876,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15202,161,1776,0,887,1718,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15203,161,1707,0,888,1776,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15204,161,1879,0,889,1707,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15205,161,1741,0,890,1879,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15206,161,1751,0,891,1741,1728,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15207,161,1728,0,892,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15208,161,1713,0,893,1728,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15209,161,1751,0,894,1713,1894,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15210,161,1894,0,895,1751,1895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15211,161,1895,0,896,1894,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15212,161,1896,0,897,1895,1897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15213,161,1897,0,898,1896,1898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15214,161,1898,0,899,1897,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15215,161,1753,0,900,1898,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15216,161,1727,0,901,1753,1899,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15217,161,1899,0,902,1727,1839,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15218,161,1839,0,903,1899,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15219,161,1776,0,904,1839,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15220,161,1707,0,905,1776,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15221,161,1879,0,906,1707,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15222,161,1753,0,907,1879,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15223,161,1733,0,908,1753,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15224,161,1751,0,909,1733,1872,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15225,161,1872,0,910,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15226,161,1713,0,911,1872,1900,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15227,161,1900,0,912,1713,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15228,161,1765,0,913,1900,1901,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15229,161,1901,0,914,1765,1902,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15230,161,1902,0,915,1901,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15231,161,1879,0,916,1902,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15232,161,1708,0,917,1879,1773,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15233,161,1773,0,918,1708,1903,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15234,161,1903,0,919,1773,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15235,161,1753,0,920,1903,1904,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15236,161,1904,0,921,1753,1895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15237,161,1895,0,922,1904,1905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15238,161,1905,0,923,1895,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15239,161,1880,0,924,1905,1906,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15240,161,1906,0,925,1880,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15241,161,1741,0,926,1906,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15242,161,1722,0,927,1741,1907,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15243,161,1907,0,928,1722,1908,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15244,161,1908,0,929,1907,1905,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15245,161,1905,0,930,1908,1807,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15246,161,1807,0,931,1905,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15247,161,1879,0,932,1807,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15248,161,1733,0,933,1879,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15249,161,1751,0,934,1733,1728,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15250,161,1728,0,935,1751,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15251,161,1712,0,936,1728,1934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15252,161,1934,0,937,1712,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15253,161,1751,0,938,1934,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15254,161,1712,0,939,1751,1935,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15255,161,1935,0,940,1712,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15256,161,1707,0,941,1935,1936,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15257,161,1936,0,942,1707,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15258,161,1765,0,943,1936,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15259,161,1884,0,944,1765,1937,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15260,161,1937,0,945,1884,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15261,161,1741,0,946,1937,1934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15262,161,1934,0,947,1741,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15263,161,1751,0,948,1934,1938,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15264,161,1938,0,949,1751,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15265,161,1750,0,950,1938,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15266,161,1751,0,951,1750,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15267,161,1713,0,952,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15268,161,1707,0,953,1713,1939,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15269,161,1939,0,954,1707,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15270,161,1722,0,955,1939,1940,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15271,161,1940,0,956,1722,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15272,161,1741,0,957,1940,1941,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15273,161,1941,0,958,1741,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15274,161,1855,0,959,1941,1942,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15275,161,1942,0,960,1855,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15276,161,1765,0,961,1942,1943,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15277,161,1943,0,962,1765,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15278,161,1944,0,963,1943,1799,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15279,161,1799,0,964,1944,1945,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15280,161,1945,0,965,1799,1927,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15281,161,1927,0,966,1945,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15282,161,1707,0,967,1927,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15283,161,1878,0,968,1707,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15284,161,1911,0,969,1878,1946,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15285,161,1946,0,970,1911,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15286,161,1913,0,971,1946,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15287,161,1738,0,972,1913,1745,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15288,161,1745,0,973,1738,1947,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15289,161,1947,0,974,1745,1948,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15290,161,1948,0,975,1947,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15291,161,1738,0,976,1948,1934,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15292,161,1934,0,977,1738,1831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15293,161,1831,0,978,1934,1895,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15294,161,1895,0,979,1831,1949,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15295,161,1949,0,980,1895,1950,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15296,161,1950,0,981,1949,1951,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15297,161,1951,0,982,1950,1745,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15298,161,1745,0,983,1951,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15299,161,1776,0,984,1745,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15300,161,1753,0,985,1776,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15301,161,1727,0,986,1753,1952,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15302,161,1952,0,987,1727,1953,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15303,161,1953,0,988,1952,1954,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15304,161,1954,0,989,1953,1955,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15305,161,1955,0,990,1954,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15306,161,1878,0,991,1955,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15307,161,1896,0,992,1878,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15308,161,1775,0,993,1896,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15309,161,1741,0,994,1775,1956,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15310,161,1956,0,995,1741,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15311,161,1753,0,996,1956,1957,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15312,161,1957,0,997,1753,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15313,161,1841,0,998,1957,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15314,161,1713,0,999,1841,0,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15315,161,1741,0,1000,0,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15316,161,1958,0,1001,1741,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15317,161,1765,0,1002,1958,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15318,161,1884,0,1003,1765,1871,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15319,161,1871,0,1004,1884,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15320,161,1841,0,1005,1871,1959,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15321,161,1959,0,1006,1841,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15322,161,1960,0,1007,1959,1961,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15323,161,1961,0,1008,1960,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15324,161,1841,0,1009,1961,1959,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15325,161,1959,0,1010,1841,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15326,161,1738,0,1011,1959,1962,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15327,161,1962,0,1012,1738,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15328,161,1960,0,1013,1962,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15329,161,1727,0,1014,1960,1963,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15330,161,1963,0,1015,1727,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15331,161,1753,0,1016,1963,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15332,161,1727,0,1017,1753,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15333,161,1751,0,1018,1727,1964,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15334,161,1964,0,1019,1751,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15335,161,1866,0,1020,1964,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15336,161,1896,0,1021,1866,1965,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15337,161,1965,0,1022,1896,1898,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15338,161,1898,0,1023,1965,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15339,161,1765,0,1024,1898,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15340,161,1884,0,1025,1765,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15341,161,1708,0,1026,1884,1946,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15342,161,1946,0,1027,1708,1966,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15343,161,1966,0,1028,1946,1967,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15344,161,1967,0,1029,1966,1968,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15345,161,1968,0,1030,1967,1969,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15346,161,1969,0,1031,1968,1970,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15347,161,1970,0,1032,1969,1971,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15348,161,1971,0,1033,1970,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15349,161,1769,0,1034,1971,1972,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15350,161,1972,0,1035,1769,1971,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15351,161,1971,0,1036,1972,1973,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15352,161,1973,0,1037,1971,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15353,161,1792,0,1038,1973,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15354,161,1974,0,1039,1792,1806,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15355,161,1806,0,1040,1974,1807,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15356,161,1807,0,1041,1806,1975,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15357,161,1975,0,1042,1807,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15358,161,1751,0,1043,1975,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15359,161,1960,0,1044,1751,1976,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15360,161,1976,0,1045,1960,1977,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15361,161,1977,0,1046,1976,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15362,161,1974,0,1047,1977,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15363,161,1738,0,1048,1974,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15364,161,1776,0,1049,1738,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15365,161,1707,0,1050,1776,1978,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15366,161,1978,0,1051,1707,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15367,161,1880,0,1052,1978,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15368,161,1733,0,1053,1880,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15369,161,1751,0,1054,1733,1979,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15370,161,1979,0,1055,1751,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15371,161,1713,0,1056,1979,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15372,161,1888,0,1057,1713,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15373,161,1792,0,1058,1888,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15374,161,1707,0,1059,1792,1980,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15375,161,1980,0,1060,1707,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15376,161,1757,0,1061,1980,1925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15377,161,1925,0,1062,1757,1981,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15378,161,1981,0,1063,1925,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15379,161,1753,0,1064,1981,1754,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15380,161,1754,0,1065,1753,1756,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15381,161,1756,0,1066,1754,1979,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15382,161,1979,0,1067,1756,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15383,161,1911,0,1068,1979,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15384,161,1765,0,1069,1911,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15385,161,1960,0,1070,1765,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15386,161,1708,0,1071,1960,1982,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15387,161,1982,0,1072,1708,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15388,161,1841,0,1073,1982,1983,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15389,161,1983,0,1074,1841,1984,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15390,161,1984,0,1075,1983,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15391,161,1776,0,1076,1984,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15392,161,1751,0,1077,1776,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15393,161,1884,0,1078,1751,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15394,161,1707,0,1079,1884,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15395,161,1761,0,1080,1707,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15396,161,1880,0,1081,1761,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15397,161,1727,0,1082,1880,1985,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15398,161,1985,0,1083,1727,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15399,161,1822,0,1084,1985,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15400,161,1791,0,1085,1822,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15401,161,1958,0,1086,1791,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15402,161,1776,0,1087,1958,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15403,161,1822,0,1088,1776,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15404,161,1816,0,1089,1822,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15405,161,1765,0,1090,1816,1960,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15406,161,1960,0,1091,1765,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15407,161,1791,0,1092,1960,1986,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15408,161,1986,0,1093,1791,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15409,161,1757,0,1094,1986,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15410,161,1751,0,1095,1757,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15411,161,1884,0,1096,1751,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15412,161,1727,0,1097,1884,1987,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15413,161,1987,0,1098,1727,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15414,161,1988,0,1099,1987,1989,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15415,161,1989,0,1100,1988,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15416,161,1822,0,1101,1989,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15417,161,1791,0,1102,1822,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15418,161,1873,0,1103,1791,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15419,161,1988,0,1104,1873,1990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15420,161,1990,0,1105,1988,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15421,161,1741,0,1106,1990,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15422,161,1958,0,1107,1741,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15423,161,1896,0,1108,1958,1991,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15424,161,1991,0,1109,1896,1822,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15425,161,1822,0,1110,1991,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15426,161,1926,0,1111,1822,1897,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15427,161,1897,0,1112,1926,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15428,161,1722,0,1113,1897,1992,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15429,161,1992,0,1114,1722,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15430,161,1741,0,1115,1992,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15431,161,1974,0,1116,1741,1993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15432,161,1993,0,1117,1974,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15433,161,1765,0,1118,1993,1994,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15434,161,1994,0,1119,1765,1995,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15435,161,1995,0,1120,1994,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15436,161,1841,0,1121,1995,1959,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15437,161,1959,0,1122,1841,1996,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15438,161,1996,0,1123,1959,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15439,161,1750,0,1124,1996,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15440,161,1726,0,1125,1750,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15441,161,1707,0,1126,1726,1978,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15442,161,1978,0,1127,1707,1997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15443,161,1997,0,1128,1978,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15444,161,1741,0,1129,1997,1998,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15445,161,1998,0,1130,1741,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15446,161,1727,0,1131,1998,1949,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15447,161,1949,0,1132,1727,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15448,161,1741,0,1133,1949,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15449,161,1751,0,1134,1741,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15450,161,1884,0,1135,1751,1999,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15451,161,1999,0,1136,1884,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15452,161,1873,0,1137,1999,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15453,161,1841,0,1138,1873,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15454,161,1874,0,1139,1841,2000,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15455,161,2000,0,1140,1874,1962,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15456,161,1962,0,1141,2000,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15457,161,1726,0,1142,1962,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15458,161,1707,0,1143,1726,1978,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15459,161,1978,0,1144,1707,1997,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15460,161,1997,0,1145,1978,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15461,161,1741,0,1146,1997,2001,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15462,161,2001,0,1147,1741,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15463,161,1722,0,1148,2001,2002,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15464,161,2002,0,1149,1722,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15465,161,1738,0,1150,2002,2003,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15466,161,2003,0,1151,1738,1993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15467,161,1993,0,1152,2003,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15468,161,1765,0,1153,1993,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15469,161,1944,0,1154,1765,1972,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15470,161,1972,0,1155,1944,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15471,161,1888,0,1156,1972,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15472,161,1792,0,1157,1888,2004,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15473,161,2004,0,1158,1792,2005,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15474,161,2005,0,1159,2004,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15475,161,1792,0,1160,2005,1827,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15476,161,1827,0,1161,1792,2006,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15477,161,2006,0,1162,1827,1923,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15478,161,1923,0,1163,2006,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15479,161,1866,0,1164,1923,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15480,161,1727,0,1165,1866,2007,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15481,161,2007,0,1166,1727,1855,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15482,161,1855,0,1167,2007,2008,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15483,161,2008,0,1168,1855,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15484,161,1775,0,1169,2008,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15485,161,1707,0,1170,1775,2009,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15486,161,2009,0,1171,1707,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15487,161,1726,0,1172,2009,1736,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15488,161,1736,0,1173,1726,2010,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15489,161,2010,0,1174,1736,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15490,161,1726,0,1175,2010,2011,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15491,161,2011,0,1176,1726,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15492,161,1775,0,1177,2011,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15493,161,1707,0,1178,1775,2012,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15494,161,2012,0,1179,1707,1726,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15495,161,1726,0,1180,2012,2013,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15496,161,2013,0,1181,1726,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15497,161,1761,0,1182,2013,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15498,161,1707,0,1183,1761,2014,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15499,161,2014,0,1184,1707,2015,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15500,161,2015,0,1185,2014,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15501,161,1707,0,1186,2015,1878,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15502,161,1878,0,1187,1707,2016,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15503,161,2016,0,1188,1878,1744,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15504,161,1744,0,1189,2016,2017,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15505,161,2017,0,1190,1744,1820,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15506,161,1820,0,1191,2017,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15507,161,1875,0,1192,1820,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15508,161,1741,0,1193,1875,1993,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15509,161,1993,0,1194,1741,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15510,161,1765,0,1195,1993,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15511,161,1944,0,1196,1765,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15512,161,1776,0,1197,1944,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15513,161,1707,0,1198,1776,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15514,161,1922,0,1199,1707,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15515,161,1913,0,1200,1922,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15516,161,2018,0,1201,1913,2019,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15517,161,2019,0,1202,2018,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15518,161,1733,0,1203,2019,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15519,161,1765,0,1204,1733,2020,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15520,161,2020,0,1205,1765,2021,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15521,161,2021,0,1206,2020,2022,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15522,161,2022,0,1207,2021,1831,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15523,161,1831,0,1208,2022,1957,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15524,161,1957,0,1209,1831,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15525,161,1707,0,1210,1957,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15526,161,1880,0,1211,1707,2023,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15527,161,2023,0,1212,1880,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15528,161,1733,0,1213,2023,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15529,161,1765,0,1214,1733,2024,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15530,161,2024,0,1215,1765,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15531,161,2018,0,1216,2024,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15532,161,1928,0,1217,2018,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15533,161,1733,0,1218,1928,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15534,161,1765,0,1219,1733,2025,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15535,161,2025,0,1220,1765,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15536,161,2018,0,1221,2025,1928,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15537,161,1928,0,1222,2018,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15538,161,1738,0,1223,1928,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15539,161,1913,0,1224,1738,2018,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15540,161,2018,0,1225,1913,2019,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15541,161,2019,0,1226,2018,2026,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15542,161,2026,0,1227,2019,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15543,161,1733,0,1228,2026,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15544,161,1765,0,1229,1733,2027,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15545,161,2027,0,1230,1765,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15546,161,1751,0,1231,2027,2028,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15547,161,2028,0,1232,1751,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15548,161,1875,0,1233,2028,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15549,161,1707,0,1234,1875,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15550,161,1873,0,1235,1707,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15551,161,1741,0,1236,1873,1922,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15552,161,1922,0,1237,1741,1718,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15553,161,1718,0,1238,1922,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15554,161,1866,0,1239,1718,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15555,161,1738,0,1240,1866,1962,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15556,161,1962,0,1241,1738,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15557,161,1765,0,1242,1962,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15558,161,1944,0,1243,1765,2029,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15559,161,2029,0,1244,1944,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15560,161,1727,0,1245,2029,2030,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15561,161,2030,0,1246,1727,2031,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15562,161,2031,0,1247,2030,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15563,161,1751,0,1248,2031,1990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15564,161,1990,0,1249,1751,1845,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15565,161,1845,0,1250,1990,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15566,161,1753,0,1251,1845,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15567,161,1926,0,1252,1753,1974,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15568,161,1974,0,1253,1926,1896,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15569,161,1896,0,1254,1974,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15570,161,1958,0,1255,1896,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15571,161,1765,0,1256,1958,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15572,161,1884,0,1257,1765,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15573,161,1733,0,1258,1884,1849,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15574,161,1849,0,1259,1733,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15575,161,1751,0,1260,1849,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15576,161,1874,0,1261,1751,2028,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15577,161,2028,0,1262,1874,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15578,161,1875,0,1263,2028,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15579,161,1707,0,1264,1875,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15580,161,1873,0,1265,1707,2015,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15581,161,2015,0,1266,1873,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15582,161,1765,0,1267,2015,1884,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15583,161,1884,0,1268,1765,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15584,161,1727,0,1269,1884,2030,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15585,161,2030,0,1270,1727,2032,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15586,161,2032,0,1271,2030,1951,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15587,161,1951,0,1272,2032,2033,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15588,161,2033,0,1273,1951,1889,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15589,161,1889,0,1274,2033,2034,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15590,161,2034,0,1275,1889,2015,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15591,161,2015,0,1276,2034,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15592,161,1765,0,1277,2015,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15593,161,1944,0,1278,1765,1807,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15594,161,1807,0,1279,1944,2035,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15595,161,2035,0,1280,1807,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15596,161,1707,0,1281,2035,1926,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15597,161,1926,0,1282,1707,1789,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15598,161,1789,0,1283,1926,1986,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15599,161,1986,0,1284,1789,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15600,161,1751,0,1285,1986,2036,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15601,161,2036,0,1286,1751,1955,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15602,161,1955,0,1287,2036,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15603,161,1707,0,1288,1955,2016,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15604,161,2016,0,1289,1707,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15605,161,1751,0,1290,2016,1990,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15606,161,1990,0,1291,1751,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15607,161,1741,0,1292,1990,2037,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15608,161,2037,0,1293,1741,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15609,161,1765,0,1294,2037,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15610,161,1944,0,1295,1765,2038,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15611,161,2038,0,1296,1944,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15612,161,1741,0,1297,2038,2039,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15613,161,2039,0,1298,1741,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15614,161,1751,0,1299,2039,1930,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15615,161,1930,0,1300,1751,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15616,161,1750,0,1301,1930,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15617,161,1751,0,1302,1750,2040,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15618,161,2040,0,1303,1751,2041,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15619,161,2041,0,1304,2040,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15620,161,1769,0,1305,2041,2042,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15621,161,2042,0,1306,1769,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15622,161,1733,0,1307,2042,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15623,161,1707,0,1308,1733,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15624,161,1775,0,1309,1707,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15625,161,1841,0,1310,1775,1944,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15626,161,1944,0,1311,1841,1729,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15627,161,1729,0,1312,1944,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15628,161,1911,0,1313,1729,2038,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15629,161,2038,0,1314,1911,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15630,161,1988,0,1315,2038,2043,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15631,161,2043,0,1316,1988,2044,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15632,161,2044,0,1317,2043,2045,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15633,161,2045,0,1318,2044,1935,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15634,161,1935,0,1319,2045,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15635,161,1707,0,1320,1935,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15636,161,1879,0,1321,1707,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15637,161,1873,0,1322,1879,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15638,161,1841,0,1323,1873,1874,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15639,161,1874,0,1324,1841,1875,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15640,161,1875,0,1325,1874,2046,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15641,161,2046,0,1326,1875,1765,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15642,161,1765,0,1327,2046,1880,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15643,161,1880,0,1328,1765,1937,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15644,161,1937,0,1329,1880,1741,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15645,161,1741,0,1330,1937,1986,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15646,161,1986,0,1331,1741,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15647,161,1776,0,1332,1986,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15648,161,1707,0,1333,1776,1775,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15649,161,1775,0,1334,1707,2047,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15650,161,2047,0,1335,1775,1795,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15651,161,1795,0,1336,2047,1963,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15652,161,1963,0,1337,1795,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15653,161,1866,0,1338,1963,1769,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15654,161,1769,0,1339,1866,1776,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15655,161,1776,0,1340,1769,1788,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15656,161,1788,0,1341,1776,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15657,161,1761,0,1342,1788,2028,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15658,161,2028,0,1343,1761,1866,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15659,161,1866,0,1344,2028,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15660,161,1707,0,1345,1866,1791,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15661,161,1791,0,1346,1707,2048,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15662,161,2048,0,1347,1791,1888,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15663,161,1888,0,1348,2048,1792,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15664,161,1792,0,1349,1888,2049,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15665,161,2049,0,1350,1792,1800,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15666,161,1800,0,1351,2049,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15667,161,1958,0,1352,1800,2050,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15668,161,2050,0,1353,1958,2051,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15669,161,2051,0,1354,2050,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15670,161,1751,0,1355,2051,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15671,161,1712,0,1356,1751,1761,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15672,161,1761,0,1357,1712,2052,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15673,161,2052,0,1358,1761,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15674,161,1859,0,1359,2052,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15675,161,1751,0,1360,1859,2053,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15676,161,2053,0,1361,1751,1925,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15677,161,1925,0,1362,2053,1958,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15678,161,1958,0,1363,1925,1744,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15679,161,1744,0,1364,1958,1988,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15680,161,1988,0,1365,1744,2054,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15681,161,2054,0,1366,1988,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15682,161,1738,0,1367,2054,2055,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15683,161,2055,0,1368,1738,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15684,161,1750,0,1369,2055,1989,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15685,161,1989,0,1370,1750,1707,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15686,161,1707,0,1371,1989,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15687,161,1708,0,1372,1707,1911,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15688,161,1911,0,1373,1708,1709,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15689,161,1709,0,1374,1911,2056,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15690,161,2056,0,1375,1709,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15691,161,1816,0,1376,2056,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15692,161,1751,0,1377,1816,2057,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15693,161,2057,0,1378,1751,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15694,161,1738,0,1379,2057,2058,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15695,161,2058,0,1380,1738,1729,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15696,161,1729,0,1381,2058,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15697,161,1751,0,1382,1729,2053,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15698,161,2053,0,1383,1751,1718,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15699,161,1718,0,1384,2053,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15700,161,1708,0,1385,1718,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15701,161,1722,0,1386,1708,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15702,161,1841,0,1387,1722,1827,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15703,161,1827,0,1388,1841,2059,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15704,161,2059,0,1389,1827,2060,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15705,161,2060,0,1390,2059,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15706,161,1750,0,1391,2060,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15707,161,1751,0,1392,1750,1947,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15708,161,1947,0,1393,1751,2001,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15709,161,2001,0,1394,1947,1721,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15710,161,1721,0,1395,2001,1873,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15711,161,1873,0,1396,1721,2061,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15712,161,2061,0,1397,1873,2062,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15713,161,2062,0,1398,2061,1841,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15714,161,1841,0,1399,2062,1879,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15715,161,1879,0,1400,1841,1757,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15716,161,1757,0,1401,1879,2063,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15717,161,2063,0,1402,1757,2061,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15718,161,2061,0,1403,2063,2062,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15719,161,2062,0,1404,2061,2064,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15720,161,2064,0,1405,2062,2065,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15721,161,2065,0,1406,2064,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15722,161,1738,0,1407,2065,2066,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15723,161,2066,0,1408,1738,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15724,161,1708,0,1409,2066,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15725,161,1722,0,1410,1708,1854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15726,161,1854,0,1411,1722,1816,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15727,161,1816,0,1412,1854,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15728,161,1751,0,1413,1816,1712,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15729,161,1712,0,1414,1751,1753,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15730,161,1753,0,1415,1712,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15731,161,1708,0,1416,1753,1721,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15732,161,1721,0,1417,1708,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15733,161,1722,0,1418,1721,2067,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15734,161,2067,0,1419,1722,1733,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15735,161,1733,0,1420,2067,1913,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15736,161,1913,0,1421,1733,2068,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15737,161,2068,0,1422,1913,1738,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15738,161,1738,0,1423,2068,1708,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15739,161,1708,0,1424,1738,1722,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15740,161,1722,0,1425,1708,1854,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15741,161,1854,0,1426,1722,1803,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15742,161,1803,0,1427,1854,2069,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15743,161,2069,0,1428,1803,1859,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15744,161,1859,0,1429,2069,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15745,161,1751,0,1430,1859,2070,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15746,161,2070,0,1431,1751,1750,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15747,161,1750,0,1432,2070,1751,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15748,161,1751,0,1433,1750,1713,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15749,161,1713,0,1434,1751,2071,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15750,161,2071,0,1435,1713,2072,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15751,161,2072,0,1436,2071,2073,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15752,161,2073,0,1437,2072,1727,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15753,161,1727,0,1438,2073,2074,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15754,161,2074,0,1439,1727,0,10,1068047603,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15755,49,1914,0,0,0,1914,1,1066398020,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15756,49,1914,0,1,1914,0,1,1066398020,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15757,160,1914,0,0,0,2075,2,1068047455,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15758,160,2075,0,1,1914,1914,2,1068047455,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15759,160,1914,0,2,2075,2075,2,1068047455,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15760,160,2075,0,3,1914,1718,2,1068047455,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15761,160,1718,0,4,2075,1727,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15762,160,1727,0,5,1718,1751,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15763,160,1751,0,6,1727,2076,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15764,160,2076,0,7,1751,1914,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15765,160,1914,0,8,2076,1816,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15766,160,1816,0,9,1914,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15767,160,2077,0,10,1816,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15768,160,2078,0,11,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15769,160,2079,0,12,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15770,160,2080,0,13,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15771,160,2077,0,14,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15772,160,2078,0,15,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15773,160,2079,0,16,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15774,160,2080,0,17,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15775,160,2077,0,18,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15776,160,2078,0,19,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15777,160,2079,0,20,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15778,160,2080,0,21,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15779,160,2077,0,22,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15780,160,2078,0,23,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15781,160,2079,0,24,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15782,160,2080,0,25,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15783,160,2077,0,26,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15784,160,2078,0,27,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15785,160,2079,0,28,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15786,160,2080,0,29,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15787,160,2077,0,30,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15788,160,2078,0,31,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15789,160,2079,0,32,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15790,160,2080,0,33,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15791,160,2077,0,34,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15792,160,2078,0,35,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15793,160,2079,0,36,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15794,160,2080,0,37,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15795,160,2077,0,38,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15796,160,2078,0,39,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15797,160,2079,0,40,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15798,160,2080,0,41,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15799,160,2077,0,42,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15800,160,2078,0,43,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15801,160,2079,0,44,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15802,160,2080,0,45,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15803,160,2077,0,46,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15804,160,2078,0,47,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15805,160,2079,0,48,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15806,160,2080,0,49,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15807,160,2077,0,50,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15808,160,2078,0,51,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15809,160,2079,0,52,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15810,160,2080,0,53,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15811,160,2077,0,54,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15812,160,2078,0,55,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15813,160,2079,0,56,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15814,160,2080,0,57,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15815,160,2077,0,58,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15816,160,2078,0,59,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15817,160,2079,0,60,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15818,160,2080,0,61,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15819,160,2077,0,62,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15820,160,2078,0,63,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15821,160,2079,0,64,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15822,160,2080,0,65,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15823,160,2077,0,66,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15824,160,2078,0,67,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15825,160,2079,0,68,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15826,160,2080,0,69,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15827,160,2077,0,70,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15828,160,2078,0,71,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15829,160,2079,0,72,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15830,160,2080,0,73,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15831,160,2077,0,74,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15832,160,2078,0,75,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15833,160,2079,0,76,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15834,160,2080,0,77,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15835,160,2077,0,78,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15836,160,2078,0,79,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15837,160,2079,0,80,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15838,160,2080,0,81,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15839,160,2077,0,82,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15840,160,2078,0,83,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15841,160,2079,0,84,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15842,160,2080,0,85,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15843,160,2077,0,86,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15844,160,2078,0,87,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15845,160,2079,0,88,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15846,160,2080,0,89,2079,1718,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15847,160,1718,0,90,2080,1727,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15848,160,1727,0,91,1718,1751,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15849,160,1751,0,92,1727,2076,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15850,160,2076,0,93,1751,1914,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15851,160,1914,0,94,2076,1816,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15852,160,1816,0,95,1914,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15853,160,2077,0,96,1816,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15854,160,2078,0,97,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15855,160,2079,0,98,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15856,160,2080,0,99,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15857,160,2077,0,100,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15858,160,2078,0,101,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15859,160,2079,0,102,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15860,160,2080,0,103,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15861,160,2077,0,104,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15862,160,2078,0,105,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15863,160,2079,0,106,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15864,160,2080,0,107,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15865,160,2077,0,108,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15866,160,2078,0,109,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15867,160,2079,0,110,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15868,160,2080,0,111,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15869,160,2077,0,112,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15870,160,2078,0,113,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15871,160,2079,0,114,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15872,160,2080,0,115,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15873,160,2077,0,116,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15874,160,2078,0,117,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15875,160,2079,0,118,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15876,160,2080,0,119,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15877,160,2077,0,120,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15878,160,2078,0,121,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15879,160,2079,0,122,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15880,160,2080,0,123,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15881,160,2077,0,124,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15882,160,2078,0,125,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15883,160,2079,0,126,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15884,160,2080,0,127,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15885,160,2077,0,128,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15886,160,2078,0,129,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15887,160,2079,0,130,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15888,160,2080,0,131,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15889,160,2077,0,132,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15890,160,2078,0,133,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15891,160,2079,0,134,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15892,160,2080,0,135,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15893,160,2077,0,136,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15894,160,2078,0,137,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15895,160,2079,0,138,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15896,160,2080,0,139,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15897,160,2077,0,140,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15898,160,2078,0,141,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15899,160,2079,0,142,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15900,160,2080,0,143,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15901,160,2077,0,144,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15902,160,2078,0,145,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15903,160,2079,0,146,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15904,160,2080,0,147,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15905,160,2077,0,148,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15906,160,2078,0,149,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15907,160,2079,0,150,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15908,160,2080,0,151,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15909,160,2077,0,152,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15910,160,2078,0,153,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15911,160,2079,0,154,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15912,160,2080,0,155,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15913,160,2077,0,156,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15914,160,2078,0,157,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15915,160,2079,0,158,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15916,160,2080,0,159,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15917,160,2077,0,160,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15918,160,2078,0,161,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15919,160,2079,0,162,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15920,160,2080,0,163,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15921,160,2077,0,164,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15922,160,2078,0,165,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15923,160,2079,0,166,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15924,160,2080,0,167,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15925,160,2077,0,168,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15926,160,2078,0,169,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15927,160,2079,0,170,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15928,160,2080,0,171,2079,2077,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15929,160,2077,0,172,2080,2078,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15930,160,2078,0,173,2077,2079,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15931,160,2079,0,174,2078,2080,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15932,160,2080,0,175,2079,1718,2,1068047455,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15933,160,1718,0,176,2080,1727,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15934,160,1727,0,177,1718,1751,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15935,160,1751,0,178,1727,2076,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15936,160,2076,0,179,1751,1914,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15937,160,1914,0,180,2076,1816,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15938,160,1816,0,181,1914,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15939,160,2077,0,182,1816,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15940,160,2078,0,183,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15941,160,2079,0,184,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15942,160,2080,0,185,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15943,160,2077,0,186,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15944,160,2078,0,187,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15945,160,2079,0,188,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15946,160,2080,0,189,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15947,160,2077,0,190,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15948,160,2078,0,191,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15949,160,2079,0,192,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15950,160,2080,0,193,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15951,160,2077,0,194,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15952,160,2078,0,195,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15953,160,2079,0,196,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15954,160,2080,0,197,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15955,160,2077,0,198,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15956,160,2078,0,199,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15957,160,2079,0,200,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15958,160,2080,0,201,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15959,160,2077,0,202,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15960,160,2078,0,203,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15961,160,2079,0,204,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15962,160,2080,0,205,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15963,160,2077,0,206,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15964,160,2078,0,207,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15965,160,2079,0,208,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15966,160,2080,0,209,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15967,160,2077,0,210,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15968,160,2078,0,211,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15969,160,2079,0,212,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15970,160,2080,0,213,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15971,160,2077,0,214,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15972,160,2078,0,215,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15973,160,2079,0,216,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15974,160,2080,0,217,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15975,160,2077,0,218,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15976,160,2078,0,219,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15977,160,2079,0,220,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15978,160,2080,0,221,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15979,160,2077,0,222,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15980,160,2078,0,223,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15981,160,2079,0,224,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15982,160,2080,0,225,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15983,160,2077,0,226,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15984,160,2078,0,227,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15985,160,2079,0,228,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15986,160,2080,0,229,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15987,160,2077,0,230,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15988,160,2078,0,231,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15989,160,2079,0,232,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15990,160,2080,0,233,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15991,160,2077,0,234,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15992,160,2078,0,235,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15993,160,2079,0,236,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15994,160,2080,0,237,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15995,160,2077,0,238,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15996,160,2078,0,239,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15997,160,2079,0,240,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15998,160,2080,0,241,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (15999,160,2077,0,242,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16000,160,2078,0,243,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16001,160,2079,0,244,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16002,160,2080,0,245,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16003,160,2077,0,246,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16004,160,2078,0,247,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16005,160,2079,0,248,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16006,160,2080,0,249,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16007,160,2077,0,250,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16008,160,2078,0,251,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16009,160,2079,0,252,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16010,160,2080,0,253,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16011,160,2077,0,254,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16012,160,2078,0,255,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16013,160,2079,0,256,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16014,160,2080,0,257,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16015,160,2077,0,258,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16016,160,2078,0,259,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16017,160,2079,0,260,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16018,160,2080,0,261,2079,1718,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16019,160,1718,0,262,2080,1727,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16020,160,1727,0,263,1718,1751,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16021,160,1751,0,264,1727,2076,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16022,160,2076,0,265,1751,1914,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16023,160,1914,0,266,2076,1816,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16024,160,1816,0,267,1914,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16025,160,2077,0,268,1816,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16026,160,2078,0,269,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16027,160,2079,0,270,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16028,160,2080,0,271,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16029,160,2077,0,272,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16030,160,2078,0,273,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16031,160,2079,0,274,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16032,160,2080,0,275,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16033,160,2077,0,276,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16034,160,2078,0,277,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16035,160,2079,0,278,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16036,160,2080,0,279,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16037,160,2077,0,280,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16038,160,2078,0,281,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16039,160,2079,0,282,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16040,160,2080,0,283,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16041,160,2077,0,284,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16042,160,2078,0,285,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16043,160,2079,0,286,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16044,160,2080,0,287,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16045,160,2077,0,288,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16046,160,2078,0,289,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16047,160,2079,0,290,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16048,160,2080,0,291,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16049,160,2077,0,292,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16050,160,2078,0,293,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16051,160,2079,0,294,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16052,160,2080,0,295,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16053,160,2077,0,296,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16054,160,2078,0,297,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16055,160,2079,0,298,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16056,160,2080,0,299,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16057,160,2077,0,300,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16058,160,2078,0,301,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16059,160,2079,0,302,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16060,160,2080,0,303,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16061,160,2077,0,304,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16062,160,2078,0,305,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16063,160,2079,0,306,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16064,160,2080,0,307,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16065,160,2077,0,308,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16066,160,2078,0,309,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16067,160,2079,0,310,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16068,160,2080,0,311,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16069,160,2077,0,312,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16070,160,2078,0,313,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16071,160,2079,0,314,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16072,160,2080,0,315,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16073,160,2077,0,316,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16074,160,2078,0,317,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16075,160,2079,0,318,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16076,160,2080,0,319,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16077,160,2077,0,320,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16078,160,2078,0,321,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16079,160,2079,0,322,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16080,160,2080,0,323,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16081,160,2077,0,324,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16082,160,2078,0,325,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16083,160,2079,0,326,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16084,160,2080,0,327,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16085,160,2077,0,328,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16086,160,2078,0,329,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16087,160,2079,0,330,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16088,160,2080,0,331,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16089,160,2077,0,332,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16090,160,2078,0,333,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16091,160,2079,0,334,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16092,160,2080,0,335,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16093,160,2077,0,336,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16094,160,2078,0,337,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16095,160,2079,0,338,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16096,160,2080,0,339,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16097,160,2077,0,340,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16098,160,2078,0,341,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16099,160,2079,0,342,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16100,160,2080,0,343,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16101,160,2077,0,344,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16102,160,2078,0,345,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16103,160,2079,0,346,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16104,160,2080,0,347,2079,1718,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16105,160,1718,0,348,2080,1727,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16106,160,1727,0,349,1718,1751,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16107,160,1751,0,350,1727,2076,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16108,160,2076,0,351,1751,1914,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16109,160,1914,0,352,2076,1816,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16110,160,1816,0,353,1914,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16111,160,2077,0,354,1816,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16112,160,2078,0,355,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16113,160,2079,0,356,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16114,160,2080,0,357,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16115,160,2077,0,358,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16116,160,2078,0,359,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16117,160,2079,0,360,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16118,160,2080,0,361,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16119,160,2077,0,362,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16120,160,2078,0,363,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16121,160,2079,0,364,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16122,160,2080,0,365,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16123,160,2077,0,366,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16124,160,2078,0,367,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16125,160,2079,0,368,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16126,160,2080,0,369,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16127,160,2077,0,370,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16128,160,2078,0,371,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16129,160,2079,0,372,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16130,160,2080,0,373,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16131,160,2077,0,374,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16132,160,2078,0,375,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16133,160,2079,0,376,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16134,160,2080,0,377,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16135,160,2077,0,378,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16136,160,2078,0,379,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16137,160,2079,0,380,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16138,160,2080,0,381,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16139,160,2077,0,382,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16140,160,2078,0,383,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16141,160,2079,0,384,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16142,160,2080,0,385,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16143,160,2077,0,386,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16144,160,2078,0,387,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16145,160,2079,0,388,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16146,160,2080,0,389,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16147,160,2077,0,390,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16148,160,2078,0,391,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16149,160,2079,0,392,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16150,160,2080,0,393,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16151,160,2077,0,394,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16152,160,2078,0,395,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16153,160,2079,0,396,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16154,160,2080,0,397,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16155,160,2077,0,398,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16156,160,2078,0,399,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16157,160,2079,0,400,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16158,160,2080,0,401,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16159,160,2077,0,402,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16160,160,2078,0,403,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16161,160,2079,0,404,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16162,160,2080,0,405,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16163,160,2077,0,406,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16164,160,2078,0,407,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16165,160,2079,0,408,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16166,160,2080,0,409,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16167,160,2077,0,410,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16168,160,2078,0,411,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16169,160,2079,0,412,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16170,160,2080,0,413,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16171,160,2077,0,414,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16172,160,2078,0,415,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16173,160,2079,0,416,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16174,160,2080,0,417,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16175,160,2077,0,418,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16176,160,2078,0,419,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16177,160,2079,0,420,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16178,160,2080,0,421,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16179,160,2077,0,422,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16180,160,2078,0,423,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16181,160,2079,0,424,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16182,160,2080,0,425,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16183,160,2077,0,426,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16184,160,2078,0,427,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16185,160,2079,0,428,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16186,160,2080,0,429,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16187,160,2077,0,430,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16188,160,2078,0,431,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16189,160,2079,0,432,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16190,160,2080,0,433,2079,1718,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16191,160,1718,0,434,2080,1727,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16192,160,1727,0,435,1718,1751,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16193,160,1751,0,436,1727,2076,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16194,160,2076,0,437,1751,1914,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16195,160,1914,0,438,2076,1816,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16196,160,1816,0,439,1914,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16197,160,2077,0,440,1816,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16198,160,2078,0,441,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16199,160,2079,0,442,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16200,160,2080,0,443,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16201,160,2077,0,444,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16202,160,2078,0,445,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16203,160,2079,0,446,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16204,160,2080,0,447,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16205,160,2077,0,448,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16206,160,2078,0,449,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16207,160,2079,0,450,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16208,160,2080,0,451,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16209,160,2077,0,452,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16210,160,2078,0,453,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16211,160,2079,0,454,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16212,160,2080,0,455,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16213,160,2077,0,456,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16214,160,2078,0,457,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16215,160,2079,0,458,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16216,160,2080,0,459,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16217,160,2077,0,460,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16218,160,2078,0,461,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16219,160,2079,0,462,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16220,160,2080,0,463,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16221,160,2077,0,464,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16222,160,2078,0,465,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16223,160,2079,0,466,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16224,160,2080,0,467,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16225,160,2077,0,468,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16226,160,2078,0,469,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16227,160,2079,0,470,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16228,160,2080,0,471,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16229,160,2077,0,472,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16230,160,2078,0,473,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16231,160,2079,0,474,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16232,160,2080,0,475,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16233,160,2077,0,476,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16234,160,2078,0,477,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16235,160,2079,0,478,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16236,160,2080,0,479,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16237,160,2077,0,480,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16238,160,2078,0,481,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16239,160,2079,0,482,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16240,160,2080,0,483,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16241,160,2077,0,484,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16242,160,2078,0,485,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16243,160,2079,0,486,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16244,160,2080,0,487,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16245,160,2077,0,488,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16246,160,2078,0,489,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16247,160,2079,0,490,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16248,160,2080,0,491,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16249,160,2077,0,492,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16250,160,2078,0,493,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16251,160,2079,0,494,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16252,160,2080,0,495,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16253,160,2077,0,496,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16254,160,2078,0,497,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16255,160,2079,0,498,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16256,160,2080,0,499,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16257,160,2077,0,500,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16258,160,2078,0,501,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16259,160,2079,0,502,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16260,160,2080,0,503,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16261,160,2077,0,504,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16262,160,2078,0,505,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16263,160,2079,0,506,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16264,160,2080,0,507,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16265,160,2077,0,508,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16266,160,2078,0,509,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16267,160,2079,0,510,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16268,160,2080,0,511,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16269,160,2077,0,512,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16270,160,2078,0,513,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16271,160,2079,0,514,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16272,160,2080,0,515,2079,2077,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16273,160,2077,0,516,2080,2078,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16274,160,2078,0,517,2077,2079,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16275,160,2079,0,518,2078,2080,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16276,160,2080,0,519,2079,0,2,1068047455,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16277,218,1871,0,0,0,1751,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16278,218,1751,0,1,1871,1872,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16279,218,1872,0,2,1751,1713,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16280,218,1713,0,3,1872,1871,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16281,218,1871,0,4,1713,1751,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16282,218,1751,0,5,1871,1872,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16283,218,1872,0,6,1751,1713,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16284,218,1713,0,7,1872,1873,2,1069763601,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16285,218,1873,0,8,1713,1841,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16286,218,1841,0,9,1873,1874,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16287,218,1874,0,10,1841,1875,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16288,218,1875,0,11,1874,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16289,218,1741,0,12,1875,1876,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16290,218,1876,0,13,1741,1877,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16291,218,1877,0,14,1876,1713,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16292,218,1713,0,15,1877,1707,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16293,218,1707,0,16,1713,1878,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16294,218,1878,0,17,1707,1879,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16295,218,1879,0,18,1878,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16296,218,1741,0,19,1879,1880,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16297,218,1880,0,20,1741,1753,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16298,218,1753,0,21,1880,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16299,218,1741,0,22,1753,1841,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16300,218,1841,0,23,1741,1881,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16301,218,1881,0,24,1841,1713,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16302,218,1713,0,25,1881,1727,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16303,218,1727,0,26,1713,1721,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16304,218,1721,0,27,1727,1863,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16305,218,1863,0,28,1721,1882,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16306,218,1882,0,29,1863,1863,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16307,218,1863,0,30,1882,1880,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16308,218,1880,0,31,1863,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16309,218,1741,0,32,1880,1751,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16310,218,1751,0,33,1741,1883,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16311,218,1883,0,34,1751,1713,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16312,218,1713,0,35,1883,1776,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16313,218,1776,0,36,1713,1707,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16314,218,1707,0,37,1776,1884,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16315,218,1884,0,38,1707,1727,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16316,218,1727,0,39,1884,1756,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16317,218,1756,0,40,1727,1885,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16318,218,1885,0,41,1756,1886,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16319,218,1886,0,42,1885,1887,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16320,218,1887,0,43,1886,1873,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16321,218,1873,0,44,1887,1841,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16322,218,1841,0,45,1873,1874,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16323,218,1874,0,46,1841,1875,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16324,218,1875,0,47,1874,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16325,218,1741,0,48,1875,1876,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16326,218,1876,0,49,1741,1877,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16327,218,1877,0,50,1876,1713,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16328,218,1713,0,51,1877,1707,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16329,218,1707,0,52,1713,1878,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16330,218,1878,0,53,1707,1879,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16331,218,1879,0,54,1878,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16332,218,1741,0,55,1879,1880,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16333,218,1880,0,56,1741,1753,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16334,218,1753,0,57,1880,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16335,218,1741,0,58,1753,1841,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16336,218,1841,0,59,1741,1881,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16337,218,1881,0,60,1841,1713,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16338,218,1713,0,61,1881,1727,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16339,218,1727,0,62,1713,1721,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16340,218,1721,0,63,1727,1863,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16341,218,1863,0,64,1721,1882,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16342,218,1882,0,65,1863,1863,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16343,218,1863,0,66,1882,1880,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16344,218,1880,0,67,1863,1741,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16345,218,1741,0,68,1880,1751,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16346,218,1751,0,69,1741,1883,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16347,218,1883,0,70,1751,1713,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16348,218,1713,0,71,1883,1776,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16349,218,1776,0,72,1713,1707,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16350,218,1707,0,73,1776,1884,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16351,218,1884,0,74,1707,1727,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16352,218,1727,0,75,1884,1756,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16353,218,1756,0,76,1727,1885,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16354,218,1885,0,77,1756,1886,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16355,218,1886,0,78,1885,1887,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16356,218,1887,0,79,1886,1888,2,1069763601,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16357,218,1888,0,80,1887,1792,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16358,218,1792,0,81,1888,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16359,218,1879,0,82,1792,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16360,218,1733,0,83,1879,1889,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16361,218,1889,0,84,1733,1710,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16362,218,1710,0,85,1889,1712,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16363,218,1712,0,86,1710,1776,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16364,218,1776,0,87,1712,1765,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16365,218,1765,0,88,1776,1884,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16366,218,1884,0,89,1765,1890,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16367,218,1890,0,90,1884,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16368,218,1733,0,91,1890,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16369,218,1751,0,92,1733,1883,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16370,218,1883,0,93,1751,1713,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16371,218,1713,0,94,1883,1880,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16372,218,1880,0,95,1713,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16373,218,1753,0,96,1880,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16374,218,1733,0,97,1753,1881,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16375,218,1881,0,98,1733,1769,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16376,218,1769,0,99,1881,1891,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16377,218,1891,0,100,1769,1892,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16378,218,1892,0,101,1891,1792,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16379,218,1792,0,102,1892,1827,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16380,218,1827,0,103,1792,1893,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16381,218,1893,0,104,1827,1876,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16382,218,1876,0,105,1893,1718,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16383,218,1718,0,106,1876,1776,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16384,218,1776,0,107,1718,1707,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16385,218,1707,0,108,1776,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16386,218,1879,0,109,1707,1741,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16387,218,1741,0,110,1879,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16388,218,1751,0,111,1741,1728,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16389,218,1728,0,112,1751,1713,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16390,218,1713,0,113,1728,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16391,218,1751,0,114,1713,1894,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16392,218,1894,0,115,1751,1895,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16393,218,1895,0,116,1894,1896,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16394,218,1896,0,117,1895,1897,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16395,218,1897,0,118,1896,1898,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16396,218,1898,0,119,1897,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16397,218,1753,0,120,1898,1727,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16398,218,1727,0,121,1753,1899,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16399,218,1899,0,122,1727,1839,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16400,218,1839,0,123,1899,1776,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16401,218,1776,0,124,1839,1707,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16402,218,1707,0,125,1776,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16403,218,1879,0,126,1707,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16404,218,1753,0,127,1879,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16405,218,1733,0,128,1753,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16406,218,1751,0,129,1733,1872,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16407,218,1872,0,130,1751,1713,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16408,218,1713,0,131,1872,1900,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16409,218,1900,0,132,1713,1765,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16410,218,1765,0,133,1900,1901,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16411,218,1901,0,134,1765,1902,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16412,218,1902,0,135,1901,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16413,218,1879,0,136,1902,1708,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16414,218,1708,0,137,1879,1773,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16415,218,1773,0,138,1708,1903,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16416,218,1903,0,139,1773,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16417,218,1753,0,140,1903,1904,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16418,218,1904,0,141,1753,1895,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16419,218,1895,0,142,1904,1905,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16420,218,1905,0,143,1895,1880,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16421,218,1880,0,144,1905,1906,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16422,218,1906,0,145,1880,1741,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16423,218,1741,0,146,1906,1722,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16424,218,1722,0,147,1741,1907,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16425,218,1907,0,148,1722,1908,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16426,218,1908,0,149,1907,1905,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16427,218,1905,0,150,1908,1807,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16428,218,1807,0,151,1905,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16429,218,1879,0,152,1807,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16430,218,1733,0,153,1879,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16431,218,1751,0,154,1733,1728,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16432,218,1728,0,155,1751,1712,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16433,218,1712,0,156,1728,1888,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16434,218,1888,0,157,1712,1792,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16435,218,1792,0,158,1888,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16436,218,1879,0,159,1792,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16437,218,1733,0,160,1879,1889,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16438,218,1889,0,161,1733,1710,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16439,218,1710,0,162,1889,1712,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16440,218,1712,0,163,1710,1776,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16441,218,1776,0,164,1712,1765,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16442,218,1765,0,165,1776,1884,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16443,218,1884,0,166,1765,1890,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16444,218,1890,0,167,1884,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16445,218,1733,0,168,1890,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16446,218,1751,0,169,1733,1883,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16447,218,1883,0,170,1751,1713,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16448,218,1713,0,171,1883,1880,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16449,218,1880,0,172,1713,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16450,218,1753,0,173,1880,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16451,218,1733,0,174,1753,1881,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16452,218,1881,0,175,1733,1769,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16453,218,1769,0,176,1881,1891,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16454,218,1891,0,177,1769,1892,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16455,218,1892,0,178,1891,1792,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16456,218,1792,0,179,1892,1827,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16457,218,1827,0,180,1792,1893,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16458,218,1893,0,181,1827,1876,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16459,218,1876,0,182,1893,1718,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16460,218,1718,0,183,1876,1776,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16461,218,1776,0,184,1718,1707,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16462,218,1707,0,185,1776,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16463,218,1879,0,186,1707,1741,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16464,218,1741,0,187,1879,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16465,218,1751,0,188,1741,1728,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16466,218,1728,0,189,1751,1713,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16467,218,1713,0,190,1728,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16468,218,1751,0,191,1713,1894,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16469,218,1894,0,192,1751,1895,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16470,218,1895,0,193,1894,1896,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16471,218,1896,0,194,1895,1897,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16472,218,1897,0,195,1896,1898,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16473,218,1898,0,196,1897,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16474,218,1753,0,197,1898,1727,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16475,218,1727,0,198,1753,1899,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16476,218,1899,0,199,1727,1839,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16477,218,1839,0,200,1899,1776,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16478,218,1776,0,201,1839,1707,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16479,218,1707,0,202,1776,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16480,218,1879,0,203,1707,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16481,218,1753,0,204,1879,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16482,218,1733,0,205,1753,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16483,218,1751,0,206,1733,1872,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16484,218,1872,0,207,1751,1713,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16485,218,1713,0,208,1872,1900,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16486,218,1900,0,209,1713,1765,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16487,218,1765,0,210,1900,1901,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16488,218,1901,0,211,1765,1902,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16489,218,1902,0,212,1901,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16490,218,1879,0,213,1902,1708,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16491,218,1708,0,214,1879,1773,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16492,218,1773,0,215,1708,1903,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16493,218,1903,0,216,1773,1753,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16494,218,1753,0,217,1903,1904,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16495,218,1904,0,218,1753,1895,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16496,218,1895,0,219,1904,1905,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16497,218,1905,0,220,1895,1880,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16498,218,1880,0,221,1905,1906,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16499,218,1906,0,222,1880,1741,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16500,218,1741,0,223,1906,1722,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16501,218,1722,0,224,1741,1907,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16502,218,1907,0,225,1722,1908,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16503,218,1908,0,226,1907,1905,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16504,218,1905,0,227,1908,1807,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16505,218,1807,0,228,1905,1879,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16506,218,1879,0,229,1807,1733,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16507,218,1733,0,230,1879,1751,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16508,218,1751,0,231,1733,1728,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16509,218,1728,0,232,1751,1712,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16510,218,1712,0,233,1728,0,2,1069763601,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16511,219,2076,0,0,0,1713,2,1069763878,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16512,219,1713,0,1,2076,1764,2,1069763878,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16513,219,1764,0,2,1713,2076,2,1069763878,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16514,219,2076,0,3,1764,1713,2,1069763878,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16515,219,1713,0,4,2076,1764,2,1069763878,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16516,219,1764,0,5,1713,1751,2,1069763878,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16517,219,1751,0,6,1764,2076,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16518,219,2076,0,7,1751,1713,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16519,219,1713,0,8,2076,1741,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16520,219,1741,0,9,1713,1722,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16521,219,1722,0,10,1741,2081,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16522,219,2081,0,11,1722,1727,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16523,219,1727,0,12,2081,1756,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16524,219,1756,0,13,1727,1764,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16525,219,1764,0,14,1756,1726,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16526,219,1726,0,15,1764,1754,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16527,219,1754,0,16,1726,1765,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16528,219,1765,0,17,1754,2082,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16529,219,2082,0,18,1765,1766,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16530,219,1766,0,19,2082,1751,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16531,219,1751,0,20,1766,2076,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16532,219,2076,0,21,1751,1713,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16533,219,1713,0,22,2076,1741,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16534,219,1741,0,23,1713,1722,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16535,219,1722,0,24,1741,2081,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16536,219,2081,0,25,1722,1727,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16537,219,1727,0,26,2081,1756,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16538,219,1756,0,27,1727,1764,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16539,219,1764,0,28,1756,1726,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16540,219,1726,0,29,1764,1754,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16541,219,1754,0,30,1726,1765,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16542,219,1765,0,31,1754,2082,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16543,219,2082,0,32,1765,1766,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16544,219,1766,0,33,2082,1824,2,1069763878,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16545,219,1824,0,34,1766,1750,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16546,219,1750,0,35,1824,2083,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16547,219,2083,0,36,1750,2021,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16548,219,2021,0,37,2083,2084,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16549,219,2084,0,38,2021,1756,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16550,219,1756,0,39,2084,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16551,219,1841,0,40,1756,2085,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16552,219,2085,0,41,1841,1767,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16553,219,1767,0,42,2085,1769,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16554,219,1769,0,43,1767,1800,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16555,219,1800,0,44,1769,2086,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16556,219,2086,0,45,1800,1768,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16557,219,1768,0,46,2086,1982,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16558,219,1982,0,47,1768,2087,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16559,219,2087,0,48,1982,1981,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16560,219,1981,0,49,2087,1756,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16561,219,1756,0,50,1981,1751,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16562,219,1751,0,51,1756,1783,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16563,219,1783,0,52,1751,1750,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16564,219,1750,0,53,1783,1765,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16565,219,1765,0,54,1750,2088,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16566,219,2088,0,55,1765,2089,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16567,219,2089,0,56,2088,1707,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16568,219,1707,0,57,2089,1775,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16569,219,1775,0,58,1707,2090,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16570,219,2090,0,59,1775,1753,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16571,219,1753,0,60,2090,1769,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16572,219,1769,0,61,1753,1789,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16573,219,1789,0,62,1769,2091,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16574,219,2091,0,63,1789,1765,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16575,219,1765,0,64,2091,1766,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16576,219,1766,0,65,1765,2089,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16577,219,2089,0,66,1766,1765,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16578,219,1765,0,67,2089,1766,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16579,219,1766,0,68,1765,1727,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16580,219,1727,0,69,1766,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16581,219,1841,0,70,1727,2092,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16582,219,2092,0,71,1841,2093,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16583,219,2093,0,72,2092,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16584,219,1841,0,73,2093,2094,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16585,219,2094,0,74,1841,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16586,219,1841,0,75,2094,2095,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16587,219,2095,0,76,1841,2096,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16588,219,2096,0,77,2095,1769,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16589,219,1769,0,78,2096,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16590,219,1841,0,79,1769,1770,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16591,219,1770,0,80,1841,2097,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16592,219,2097,0,81,1770,1745,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16593,219,1745,0,82,2097,1775,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16594,219,1775,0,83,1745,1710,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16595,219,1710,0,84,1775,2098,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16596,219,2098,0,85,1710,1738,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16597,219,1738,0,86,2098,2088,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16598,219,2088,0,87,1738,1824,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16599,219,1824,0,88,2088,1750,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16600,219,1750,0,89,1824,2083,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16601,219,2083,0,90,1750,2021,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16602,219,2021,0,91,2083,2084,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16603,219,2084,0,92,2021,1756,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16604,219,1756,0,93,2084,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16605,219,1841,0,94,1756,2085,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16606,219,2085,0,95,1841,1767,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16607,219,1767,0,96,2085,1769,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16608,219,1769,0,97,1767,1800,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16609,219,1800,0,98,1769,2086,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16610,219,2086,0,99,1800,1768,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16611,219,1768,0,100,2086,1982,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16612,219,1982,0,101,1768,2087,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16613,219,2087,0,102,1982,1981,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16614,219,1981,0,103,2087,1756,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16615,219,1756,0,104,1981,1751,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16616,219,1751,0,105,1756,1783,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16617,219,1783,0,106,1751,1750,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16618,219,1750,0,107,1783,1765,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16619,219,1765,0,108,1750,2088,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16620,219,2088,0,109,1765,2089,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16621,219,2089,0,110,2088,1707,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16622,219,1707,0,111,2089,1775,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16623,219,1775,0,112,1707,2090,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16624,219,2090,0,113,1775,1753,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16625,219,1753,0,114,2090,1769,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16626,219,1769,0,115,1753,1789,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16627,219,1789,0,116,1769,2091,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16628,219,2091,0,117,1789,1765,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16629,219,1765,0,118,2091,1766,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16630,219,1766,0,119,1765,2089,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16631,219,2089,0,120,1766,1765,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16632,219,1765,0,121,2089,1766,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16633,219,1766,0,122,1765,1727,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16634,219,1727,0,123,1766,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16635,219,1841,0,124,1727,2092,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16636,219,2092,0,125,1841,2093,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16637,219,2093,0,126,2092,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16638,219,1841,0,127,2093,2094,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16639,219,2094,0,128,1841,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16640,219,1841,0,129,2094,2095,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16641,219,2095,0,130,1841,2096,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16642,219,2096,0,131,2095,1769,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16643,219,1769,0,132,2096,1841,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16644,219,1841,0,133,1769,1770,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16645,219,1770,0,134,1841,2097,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16646,219,2097,0,135,1770,1745,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16647,219,1745,0,136,2097,1775,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16648,219,1775,0,137,1745,1710,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16649,219,1710,0,138,1775,2098,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16650,219,2098,0,139,1710,1738,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16651,219,1738,0,140,2098,2088,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16652,219,2088,0,141,1738,0,2,1069763878,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16653,11,2099,0,0,0,2100,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16654,11,2100,0,1,2099,2099,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16655,11,2099,0,2,2100,2100,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16656,11,2100,0,3,2099,0,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16657,12,2101,0,0,0,2102,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16658,12,2102,0,1,2101,2101,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16659,12,2101,0,2,2102,2102,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16660,12,2102,0,3,2101,0,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16661,14,2101,0,0,0,2101,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16662,14,2101,0,1,2101,1858,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16663,14,1858,0,2,2101,1858,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16664,14,1858,0,3,1858,2103,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16665,14,2103,0,4,1858,2104,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16666,14,2104,0,5,2103,2103,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16667,14,2103,0,6,2104,2104,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16668,14,2104,0,7,2103,2105,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16669,14,2105,0,8,2104,2106,4,1033920830,2,197,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16670,14,2106,0,9,2105,2105,4,1033920830,2,197,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16671,14,2105,0,10,2106,2106,4,1033920830,2,197,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16672,14,2106,0,11,2105,1817,4,1033920830,2,197,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16673,14,1817,0,12,2106,1818,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16674,14,1818,0,13,1817,1817,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16675,14,1817,0,14,1818,1818,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16676,14,1818,0,15,1817,2107,4,1033920830,2,198,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16677,14,2107,0,16,1818,2107,4,1033920830,2,199,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16678,14,2107,0,17,2107,2107,4,1033920830,2,199,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16679,14,2107,0,18,2107,2107,4,1033920830,2,199,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16680,14,2107,0,19,2107,0,4,1033920830,2,199,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16681,13,2108,0,0,0,2108,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16682,13,2108,0,1,2108,0,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16683,233,2109,0,0,0,2102,3,1072180863,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16684,233,2102,0,1,2109,2109,3,1072180863,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16685,233,2109,0,2,2102,2102,3,1072180863,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16686,233,2102,0,3,2109,1858,3,1072180863,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16687,233,1858,0,4,2102,1715,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16688,233,1715,0,5,1858,1895,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16689,233,1895,0,6,1715,1751,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16690,233,1751,0,7,1895,2109,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16691,233,2109,0,8,1751,1858,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16692,233,1858,0,9,2109,1858,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16693,233,1858,0,10,1858,1715,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16694,233,1715,0,11,1858,1895,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16695,233,1895,0,12,1715,1751,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16696,233,1751,0,13,1895,2109,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16697,233,2109,0,14,1751,1858,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16698,233,1858,0,15,2109,0,3,1072180863,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16699,10,2109,0,0,0,2109,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16700,10,2109,0,1,2109,1858,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16701,10,1858,0,2,2109,1858,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16702,10,1858,0,3,1858,2109,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16703,10,2109,0,4,1858,2104,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16704,10,2104,0,5,2109,2109,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16705,10,2109,0,6,2104,2104,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16706,10,2104,0,7,2109,0,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16707,44,2110,0,0,0,2111,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16708,44,2111,0,1,2110,2110,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16709,44,2110,0,2,2111,2111,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16710,44,2111,0,3,2110,0,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16711,43,2112,0,0,0,2112,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16712,43,2112,0,1,2112,2113,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16713,43,2113,0,2,2112,2114,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16714,43,2114,0,3,2113,2113,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16715,43,2113,0,4,2114,2114,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16716,43,2114,0,5,2113,0,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16717,45,2023,0,0,0,1738,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16718,45,1738,0,1,2023,2115,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16719,45,2115,0,2,1738,2023,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16720,45,2023,0,3,2115,1738,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16721,45,1738,0,4,2023,2115,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16722,45,2115,0,5,1738,2116,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16723,45,2116,0,6,2115,2117,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16724,45,2117,0,7,2116,2118,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16725,45,2118,0,8,2117,2116,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16726,45,2116,0,9,2118,2117,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16727,45,2117,0,10,2116,2118,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16728,45,2118,0,11,2117,0,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16729,115,2119,0,0,0,2119,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16730,115,2119,0,1,2119,2110,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16731,115,2110,0,2,2119,2119,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16732,115,2119,0,3,2110,2110,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16733,115,2110,0,4,2119,2119,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16734,115,2119,0,5,2110,0,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16735,116,2120,0,0,0,2121,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16736,116,2121,0,1,2120,2120,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16737,116,2120,0,2,2121,2121,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16738,116,2121,0,3,2120,2116,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16739,116,2116,0,4,2121,2122,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16740,116,2122,0,5,2116,2116,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16741,116,2116,0,6,2122,2122,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16742,116,2122,0,7,2116,0,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16743,46,2023,0,0,0,1738,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16744,46,1738,0,1,2023,2115,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16745,46,2115,0,2,1738,2023,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16746,46,2023,0,3,2115,1738,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16747,46,1738,0,4,2023,2115,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16748,46,2115,0,5,1738,0,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16749,56,2123,0,0,0,2123,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16750,56,2123,0,1,2123,2124,15,1066643397,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16751,56,2124,0,2,2123,2125,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16752,56,2125,0,3,2124,2126,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16753,56,2126,0,4,2125,2127,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16754,56,2127,0,5,2126,1863,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16755,56,1863,0,6,2127,2128,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16756,56,2128,0,7,1863,2129,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16757,56,2129,0,8,2128,2124,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16758,56,2124,0,9,2129,2125,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16759,56,2125,0,10,2124,2126,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16760,56,2126,0,11,2125,2127,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16761,56,2127,0,12,2126,1863,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16762,56,1863,0,13,2127,2128,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16763,56,2128,0,14,1863,2129,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16764,56,2129,0,15,2128,0,15,1066643397,11,202,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16765,234,2130,0,0,0,2131,1,1076579807,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16766,234,2131,0,1,2130,2132,1,1076579807,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16767,234,2132,0,2,2131,2130,1,1076579807,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16768,234,2130,0,3,2132,2131,1,1076579807,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16769,234,2131,0,4,2130,2132,1,1076579807,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16770,234,2132,0,5,2131,0,1,1076579807,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16794,235,2132,0,5,2131,0,23,1076579860,11,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16793,235,2131,0,4,2130,2132,23,1076579860,11,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16792,235,2130,0,3,2132,2131,23,1076579860,11,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16791,235,2132,0,2,2131,2130,23,1076579860,11,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16790,235,2131,0,1,2130,2132,23,1076579860,11,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16789,235,2130,0,0,0,2131,23,1076579860,11,203,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16777,236,2130,0,0,0,2131,14,1076579921,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16778,236,2131,0,1,2130,2132,14,1076579921,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16779,236,2132,0,2,2131,2130,14,1076579921,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16780,236,2130,0,3,2132,2131,14,1076579921,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16781,236,2131,0,4,2130,2132,14,1076579921,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16782,236,2132,0,5,2131,2116,14,1076579921,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16783,236,2116,0,6,2132,2117,14,1076579921,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16784,236,2117,0,7,2116,2133,14,1076579921,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16785,236,2133,0,8,2117,2116,14,1076579921,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16786,236,2116,0,9,2133,2117,14,1076579921,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16787,236,2117,0,10,2116,2133,14,1076579921,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (16788,236,2133,0,11,2117,0,14,1076579921,11,155,'',0);

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


INSERT INTO ezsearch_word VALUES (1705,'discussions',1);
INSERT INTO ezsearch_word VALUES (1706,'here',4);
INSERT INTO ezsearch_word VALUES (1707,'you',8);
INSERT INTO ezsearch_word VALUES (1708,'will',6);
INSERT INTO ezsearch_word VALUES (1709,'find',2);
INSERT INTO ezsearch_word VALUES (1710,'different',5);
INSERT INTO ezsearch_word VALUES (1711,'discussion',2);
INSERT INTO ezsearch_word VALUES (1712,'forums',4);
INSERT INTO ezsearch_word VALUES (1713,'forum',7);
INSERT INTO ezsearch_word VALUES (1714,'main',1);
INSERT INTO ezsearch_word VALUES (1715,'group',2);
INSERT INTO ezsearch_word VALUES (1716,'no',4);
INSERT INTO ezsearch_word VALUES (1717,'description',1);
INSERT INTO ezsearch_word VALUES (1718,'this',8);
INSERT INTO ezsearch_word VALUES (1719,'text',1);
INSERT INTO ezsearch_word VALUES (1720,'may',1);
INSERT INTO ezsearch_word VALUES (1721,'not',5);
INSERT INTO ezsearch_word VALUES (1722,'be',7);
INSERT INTO ezsearch_word VALUES (1723,'shown',1);
INSERT INTO ezsearch_word VALUES (1724,'music',2);
INSERT INTO ezsearch_word VALUES (1725,'discuss',1);
INSERT INTO ezsearch_word VALUES (1726,'what',6);
INSERT INTO ezsearch_word VALUES (1727,'is',14);
INSERT INTO ezsearch_word VALUES (1728,'wrong',4);
INSERT INTO ezsearch_word VALUES (1729,'with',3);
INSERT INTO ezsearch_word VALUES (1730,'pop',1);
INSERT INTO ezsearch_word VALUES (1731,'longer',1);
INSERT INTO ezsearch_word VALUES (1732,'misic',1);
INSERT INTO ezsearch_word VALUES (1733,'in',10);
INSERT INTO ezsearch_word VALUES (1734,'my',1);
INSERT INTO ezsearch_word VALUES (1735,'eyes',1);
INSERT INTO ezsearch_word VALUES (1736,'does',2);
INSERT INTO ezsearch_word VALUES (1737,'spears',1);
INSERT INTO ezsearch_word VALUES (1738,'and',10);
INSERT INTO ezsearch_word VALUES (1739,'madonna',2);
INSERT INTO ezsearch_word VALUES (1740,'ad',1);
INSERT INTO ezsearch_word VALUES (1741,'to',8);
INSERT INTO ezsearch_word VALUES (1742,'history',1);
INSERT INTO ezsearch_word VALUES (1743,'nothing',1);
INSERT INTO ezsearch_word VALUES (1744,'at',2);
INSERT INTO ezsearch_word VALUES (1745,'all',4);
INSERT INTO ezsearch_word VALUES (1746,'i',4);
INSERT INTO ezsearch_word VALUES (1747,'say',2);
INSERT INTO ezsearch_word VALUES (1748,'0',5);
INSERT INTO ezsearch_word VALUES (1749,'one',2);
INSERT INTO ezsearch_word VALUES (1750,'of',6);
INSERT INTO ezsearch_word VALUES (1751,'the',14);
INSERT INTO ezsearch_word VALUES (1752,'greats',1);
INSERT INTO ezsearch_word VALUES (1753,'it',10);
INSERT INTO ezsearch_word VALUES (1754,'s',3);
INSERT INTO ezsearch_word VALUES (1755,'doubt',1);
INSERT INTO ezsearch_word VALUES (1756,'about',6);
INSERT INTO ezsearch_word VALUES (1757,'that',3);
INSERT INTO ezsearch_word VALUES (1758,'her',1);
INSERT INTO ezsearch_word VALUES (1759,'list',1);
INSERT INTO ezsearch_word VALUES (1760,'hits',1);
INSERT INTO ezsearch_word VALUES (1761,'are',6);
INSERT INTO ezsearch_word VALUES (1762,'proof',1);
INSERT INTO ezsearch_word VALUES (1763,'enough',1);
INSERT INTO ezsearch_word VALUES (1764,'dreamcars',2);
INSERT INTO ezsearch_word VALUES (1765,'your',6);
INSERT INTO ezsearch_word VALUES (1766,'dreamcar',3);
INSERT INTO ezsearch_word VALUES (1767,'ferrari',3);
INSERT INTO ezsearch_word VALUES (1768,'diablo',2);
INSERT INTO ezsearch_word VALUES (1769,'or',6);
INSERT INTO ezsearch_word VALUES (1770,'beetle',2);
INSERT INTO ezsearch_word VALUES (1771,'koenigsegg',1);
INSERT INTO ezsearch_word VALUES (1772,'master',1);
INSERT INTO ezsearch_word VALUES (1773,'just',5);
INSERT INTO ezsearch_word VALUES (1774,'imagine',1);
INSERT INTO ezsearch_word VALUES (1775,'have',7);
INSERT INTO ezsearch_word VALUES (1776,'if',4);
INSERT INTO ezsearch_word VALUES (1777,'these',3);
INSERT INTO ezsearch_word VALUES (1778,'parked',1);
INSERT INTO ezsearch_word VALUES (1779,'garrage',1);
INSERT INTO ezsearch_word VALUES (1780,'must',2);
INSERT INTO ezsearch_word VALUES (1781,'most',1);
INSERT INTO ezsearch_word VALUES (1782,'awsome',1);
INSERT INTO ezsearch_word VALUES (1783,'car',3);
INSERT INTO ezsearch_word VALUES (1784,'ever',1);
INSERT INTO ezsearch_word VALUES (1785,'königsegg',1);
INSERT INTO ezsearch_word VALUES (1786,'best',3);
INSERT INTO ezsearch_word VALUES (1787,'again',1);
INSERT INTO ezsearch_word VALUES (1788,'there',3);
INSERT INTO ezsearch_word VALUES (1789,'even',3);
INSERT INTO ezsearch_word VALUES (1790,'close',1);
INSERT INTO ezsearch_word VALUES (1791,'can',5);
INSERT INTO ezsearch_word VALUES (1792,'t',6);
INSERT INTO ezsearch_word VALUES (1793,'leave',1);
INSERT INTO ezsearch_word VALUES (1794,'f40',1);
INSERT INTO ezsearch_word VALUES (1795,'out',2);
INSERT INTO ezsearch_word VALUES (1796,'ulitmate',1);
INSERT INTO ezsearch_word VALUES (1797,'sport',1);
INSERT INTO ezsearch_word VALUES (1798,'everybody',1);
INSERT INTO ezsearch_word VALUES (1799,'has',2);
INSERT INTO ezsearch_word VALUES (1800,'an',4);
INSERT INTO ezsearch_word VALUES (1801,'opinion',1);
INSERT INTO ezsearch_word VALUES (1802,'live',1);
INSERT INTO ezsearch_word VALUES (1803,'without',2);
INSERT INTO ezsearch_word VALUES (1804,'sports',1);
INSERT INTO ezsearch_word VALUES (1805,'understand',1);
INSERT INTO ezsearch_word VALUES (1806,'anyone',2);
INSERT INTO ezsearch_word VALUES (1807,'who',5);
INSERT INTO ezsearch_word VALUES (1808,'while',1);
INSERT INTO ezsearch_word VALUES (1809,'hate',1);
INSERT INTO ezsearch_word VALUES (1810,'everything',1);
INSERT INTO ezsearch_word VALUES (1811,'football',1);
INSERT INTO ezsearch_word VALUES (1812,'team',2);
INSERT INTO ezsearch_word VALUES (1813,'europe',2);
INSERT INTO ezsearch_word VALUES (1814,'odd',3);
INSERT INTO ezsearch_word VALUES (1815,'grenland',2);
INSERT INTO ezsearch_word VALUES (1816,'from',3);
INSERT INTO ezsearch_word VALUES (1817,'skien',2);
INSERT INTO ezsearch_word VALUES (1818,'norway',2);
INSERT INTO ezsearch_word VALUES (1819,'give',1);
INSERT INTO ezsearch_word VALUES (1820,'five',3);
INSERT INTO ezsearch_word VALUES (1821,'years',3);
INSERT INTO ezsearch_word VALUES (1822,'they',3);
INSERT INTO ezsearch_word VALUES (1823,'rule',1);
INSERT INTO ezsearch_word VALUES (1824,'many',2);
INSERT INTO ezsearch_word VALUES (1825,'good',1);
INSERT INTO ezsearch_word VALUES (1826,'players',1);
INSERT INTO ezsearch_word VALUES (1827,'very',4);
INSERT INTO ezsearch_word VALUES (1828,'young',1);
INSERT INTO ezsearch_word VALUES (1829,'never',1);
INSERT INTO ezsearch_word VALUES (1830,'heard',1);
INSERT INTO ezsearch_word VALUES (1831,'them',2);
INSERT INTO ezsearch_word VALUES (1832,'but',1);
INSERT INTO ezsearch_word VALUES (1833,'maybe',1);
INSERT INTO ezsearch_word VALUES (1834,'then',2);
INSERT INTO ezsearch_word VALUES (1835,'tranmere',1);
INSERT INTO ezsearch_word VALUES (1836,'kings',1);
INSERT INTO ezsearch_word VALUES (1837,'gulset',1);
INSERT INTO ezsearch_word VALUES (1838,'better',1);
INSERT INTO ezsearch_word VALUES (1839,'than',4);
INSERT INTO ezsearch_word VALUES (1840,'beat',1);
INSERT INTO ezsearch_word VALUES (1841,'a',6);
INSERT INTO ezsearch_word VALUES (1842,'couple',1);
INSERT INTO ezsearch_word VALUES (1843,'ago',1);
INSERT INTO ezsearch_word VALUES (1844,'cup',1);
INSERT INTO ezsearch_word VALUES (1845,'since',2);
INSERT INTO ezsearch_word VALUES (1846,'haven',1);
INSERT INTO ezsearch_word VALUES (1847,'played',1);
INSERT INTO ezsearch_word VALUES (1848,'so',1);
INSERT INTO ezsearch_word VALUES (1849,'fact',2);
INSERT INTO ezsearch_word VALUES (1850,'world',1);
INSERT INTO ezsearch_word VALUES (1851,'rules',1);
INSERT INTO ezsearch_word VALUES (1852,'certain',1);
INSERT INTO ezsearch_word VALUES (1853,'follow',2);
INSERT INTO ezsearch_word VALUES (1854,'removed',2);
INSERT INTO ezsearch_word VALUES (1855,'how',2);
INSERT INTO ezsearch_word VALUES (1856,'register',2);
INSERT INTO ezsearch_word VALUES (1857,'new',2);
INSERT INTO ezsearch_word VALUES (1858,'user',5);
INSERT INTO ezsearch_word VALUES (1859,'by',2);
INSERT INTO ezsearch_word VALUES (1860,'pressing',2);
INSERT INTO ezsearch_word VALUES (1861,'\"login\"',1);
INSERT INTO ezsearch_word VALUES (1862,'button',2);
INSERT INTO ezsearch_word VALUES (1863,'as',5);
INSERT INTO ezsearch_word VALUES (1864,'soon',2);
INSERT INTO ezsearch_word VALUES (1865,'filled',2);
INSERT INTO ezsearch_word VALUES (1866,'information',2);
INSERT INTO ezsearch_word VALUES (1867,'created',2);
INSERT INTO ezsearch_word VALUES (1868,'account',2);
INSERT INTO ezsearch_word VALUES (1869,'privileges',2);
INSERT INTO ezsearch_word VALUES (1870,'comes',2);
INSERT INTO ezsearch_word VALUES (1871,'choose',3);
INSERT INTO ezsearch_word VALUES (1872,'correct',3);
INSERT INTO ezsearch_word VALUES (1873,'use',3);
INSERT INTO ezsearch_word VALUES (1874,'few',3);
INSERT INTO ezsearch_word VALUES (1875,'minutes',3);
INSERT INTO ezsearch_word VALUES (1876,'consider',3);
INSERT INTO ezsearch_word VALUES (1877,'which',3);
INSERT INTO ezsearch_word VALUES (1878,'should',3);
INSERT INTO ezsearch_word VALUES (1879,'post',3);
INSERT INTO ezsearch_word VALUES (1880,'posting',3);
INSERT INTO ezsearch_word VALUES (1881,'\"general\"',3);
INSERT INTO ezsearch_word VALUES (1882,'effective',3);
INSERT INTO ezsearch_word VALUES (1883,'\"install\"',3);
INSERT INTO ezsearch_word VALUES (1884,'question',3);
INSERT INTO ezsearch_word VALUES (1885,'install',3);
INSERT INTO ezsearch_word VALUES (1886,'related',3);
INSERT INTO ezsearch_word VALUES (1887,'questions',3);
INSERT INTO ezsearch_word VALUES (1888,'don',3);
INSERT INTO ezsearch_word VALUES (1889,'several',3);
INSERT INTO ezsearch_word VALUES (1890,'belongs',3);
INSERT INTO ezsearch_word VALUES (1891,'\"developer\"',3);
INSERT INTO ezsearch_word VALUES (1892,'aren',3);
INSERT INTO ezsearch_word VALUES (1893,'helpful',3);
INSERT INTO ezsearch_word VALUES (1894,'chances',3);
INSERT INTO ezsearch_word VALUES (1895,'for',4);
INSERT INTO ezsearch_word VALUES (1896,'someone',3);
INSERT INTO ezsearch_word VALUES (1897,'actually',3);
INSERT INTO ezsearch_word VALUES (1898,'answering',3);
INSERT INTO ezsearch_word VALUES (1899,'lower',3);
INSERT INTO ezsearch_word VALUES (1900,'furthermore',3);
INSERT INTO ezsearch_word VALUES (1901,'off',3);
INSERT INTO ezsearch_word VALUES (1902,'topic',3);
INSERT INTO ezsearch_word VALUES (1903,'make',3);
INSERT INTO ezsearch_word VALUES (1904,'harder',3);
INSERT INTO ezsearch_word VALUES (1905,'those',3);
INSERT INTO ezsearch_word VALUES (1906,'correctly',3);
INSERT INTO ezsearch_word VALUES (1907,'noticed',3);
INSERT INTO ezsearch_word VALUES (1908,'among',3);
INSERT INTO ezsearch_word VALUES (1909,'1',1);
INSERT INTO ezsearch_word VALUES (1910,'guidelines',1);
INSERT INTO ezsearch_word VALUES (1911,'also',1);
INSERT INTO ezsearch_word VALUES (1912,'apply',1);
INSERT INTO ezsearch_word VALUES (1913,'any',1);
INSERT INTO ezsearch_word VALUES (1914,'news',3);
INSERT INTO ezsearch_word VALUES (1915,'groups',1);
INSERT INTO ezsearch_word VALUES (1916,'mailing',1);
INSERT INTO ezsearch_word VALUES (1917,'lists',1);
INSERT INTO ezsearch_word VALUES (1918,'other',1);
INSERT INTO ezsearch_word VALUES (1919,'web',1);
INSERT INTO ezsearch_word VALUES (1920,'frequent',1);
INSERT INTO ezsearch_word VALUES (1921,'problems',1);
INSERT INTO ezsearch_word VALUES (1922,'get',1);
INSERT INTO ezsearch_word VALUES (1923,'more',1);
INSERT INTO ezsearch_word VALUES (1924,'attention',1);
INSERT INTO ezsearch_word VALUES (1925,'people',1);
INSERT INTO ezsearch_word VALUES (1926,'might',1);
INSERT INTO ezsearch_word VALUES (1927,'solved',1);
INSERT INTO ezsearch_word VALUES (1928,'log',1);
INSERT INTO ezsearch_word VALUES (1929,'entering',1);
INSERT INTO ezsearch_word VALUES (1930,'name',1);
INSERT INTO ezsearch_word VALUES (1931,'password',1);
INSERT INTO ezsearch_word VALUES (1932,'\"sign',1);
INSERT INTO ezsearch_word VALUES (1933,'up\"',1);
INSERT INTO ezsearch_word VALUES (1934,'search',1);
INSERT INTO ezsearch_word VALUES (1935,'before',1);
INSERT INTO ezsearch_word VALUES (1936,'ask',1);
INSERT INTO ezsearch_word VALUES (1937,'try',1);
INSERT INTO ezsearch_word VALUES (1938,'archives',1);
INSERT INTO ezsearch_word VALUES (1939,'d',1);
INSERT INTO ezsearch_word VALUES (1940,'surprised',1);
INSERT INTO ezsearch_word VALUES (1941,'notice',1);
INSERT INTO ezsearch_word VALUES (1942,'often',1);
INSERT INTO ezsearch_word VALUES (1943,'exact',1);
INSERT INTO ezsearch_word VALUES (1944,'problem',1);
INSERT INTO ezsearch_word VALUES (1945,'been',1);
INSERT INTO ezsearch_word VALUES (1946,'read',1);
INSERT INTO ezsearch_word VALUES (1947,'documentation',1);
INSERT INTO ezsearch_word VALUES (1948,'available',1);
INSERT INTO ezsearch_word VALUES (1949,'relevant',1);
INSERT INTO ezsearch_word VALUES (1950,'info',1);
INSERT INTO ezsearch_word VALUES (1951,'after',1);
INSERT INTO ezsearch_word VALUES (1952,'allready',1);
INSERT INTO ezsearch_word VALUES (1953,'written',1);
INSERT INTO ezsearch_word VALUES (1954,'somewhere',1);
INSERT INTO ezsearch_word VALUES (1955,'why',1);
INSERT INTO ezsearch_word VALUES (1956,'rewrite',1);
INSERT INTO ezsearch_word VALUES (1957,'into',1);
INSERT INTO ezsearch_word VALUES (1958,'answer',1);
INSERT INTO ezsearch_word VALUES (1959,'clear',1);
INSERT INTO ezsearch_word VALUES (1960,'title',1);
INSERT INTO ezsearch_word VALUES (1961,'choosing',1);
INSERT INTO ezsearch_word VALUES (1962,'describing',1);
INSERT INTO ezsearch_word VALUES (1963,'important',1);
INSERT INTO ezsearch_word VALUES (1964,'first',1);
INSERT INTO ezsearch_word VALUES (1965,'considering',1);
INSERT INTO ezsearch_word VALUES (1966,'saying',1);
INSERT INTO ezsearch_word VALUES (1967,'\"i',1);
INSERT INTO ezsearch_word VALUES (1968,'need',1);
INSERT INTO ezsearch_word VALUES (1969,'help\"',1);
INSERT INTO ezsearch_word VALUES (1970,'\"newbie',1);
INSERT INTO ezsearch_word VALUES (1971,'question\"',1);
INSERT INTO ezsearch_word VALUES (1972,'\"installation',1);
INSERT INTO ezsearch_word VALUES (1973,'doesn',1);
INSERT INTO ezsearch_word VALUES (1974,'help',1);
INSERT INTO ezsearch_word VALUES (1975,'reads',1);
INSERT INTO ezsearch_word VALUES (1976,'everyone',1);
INSERT INTO ezsearch_word VALUES (1977,'needs',1);
INSERT INTO ezsearch_word VALUES (1978,'re',1);
INSERT INTO ezsearch_word VALUES (1979,'installation',1);
INSERT INTO ezsearch_word VALUES (1980,'think',1);
INSERT INTO ezsearch_word VALUES (1981,'know',2);
INSERT INTO ezsearch_word VALUES (1982,'let',2);
INSERT INTO ezsearch_word VALUES (1983,'reader',1);
INSERT INTO ezsearch_word VALUES (1984,'decide',1);
INSERT INTO ezsearch_word VALUES (1985,'something',1);
INSERT INTO ezsearch_word VALUES (1986,'see',1);
INSERT INTO ezsearch_word VALUES (1987,'outside',1);
INSERT INTO ezsearch_word VALUES (1988,'their',1);
INSERT INTO ezsearch_word VALUES (1989,'knowledge',1);
INSERT INTO ezsearch_word VALUES (1990,'time',1);
INSERT INTO ezsearch_word VALUES (1991,'whom',1);
INSERT INTO ezsearch_word VALUES (1992,'able',1);
INSERT INTO ezsearch_word VALUES (1993,'describe',1);
INSERT INTO ezsearch_word VALUES (1994,'goal',1);
INSERT INTO ezsearch_word VALUES (1995,'sometimes',1);
INSERT INTO ezsearch_word VALUES (1996,'idea',1);
INSERT INTO ezsearch_word VALUES (1997,'trying',1);
INSERT INTO ezsearch_word VALUES (1998,'achieve',1);
INSERT INTO ezsearch_word VALUES (1999,'asked',1);
INSERT INTO ezsearch_word VALUES (2000,'sentences',1);
INSERT INTO ezsearch_word VALUES (2001,'do',1);
INSERT INTO ezsearch_word VALUES (2002,'brief',1);
INSERT INTO ezsearch_word VALUES (2003,'precise',1);
INSERT INTO ezsearch_word VALUES (2004,'work\"',1);
INSERT INTO ezsearch_word VALUES (2005,'isn',1);
INSERT INTO ezsearch_word VALUES (2006,'descriptive',1);
INSERT INTO ezsearch_word VALUES (2007,'needed',1);
INSERT INTO ezsearch_word VALUES (2008,'far',1);
INSERT INTO ezsearch_word VALUES (2009,'got',1);
INSERT INTO ezsearch_word VALUES (2010,'work',1);
INSERT INTO ezsearch_word VALUES (2011,'testing',1);
INSERT INTO ezsearch_word VALUES (2012,'done',1);
INSERT INTO ezsearch_word VALUES (2013,'system',1);
INSERT INTO ezsearch_word VALUES (2014,'running',1);
INSERT INTO ezsearch_word VALUES (2015,'on',1);
INSERT INTO ezsearch_word VALUES (2016,'take',1);
INSERT INTO ezsearch_word VALUES (2017,'least',1);
INSERT INTO ezsearch_word VALUES (2018,'error',1);
INSERT INTO ezsearch_word VALUES (2019,'messages',1);
INSERT INTO ezsearch_word VALUES (2020,'logs',1);
INSERT INTO ezsearch_word VALUES (2021,'always',2);
INSERT INTO ezsearch_word VALUES (2022,'paste',1);
INSERT INTO ezsearch_word VALUES (2023,'look',3);
INSERT INTO ezsearch_word VALUES (2024,'apache',1);
INSERT INTO ezsearch_word VALUES (2025,'php',1);
INSERT INTO ezsearch_word VALUES (2026,'encountered',1);
INSERT INTO ezsearch_word VALUES (2027,'browser',1);
INSERT INTO ezsearch_word VALUES (2028,'extra',1);
INSERT INTO ezsearch_word VALUES (2029,'clearly',1);
INSERT INTO ezsearch_word VALUES (2030,'well',1);
INSERT INTO ezsearch_word VALUES (2031,'worth',1);
INSERT INTO ezsearch_word VALUES (2032,'spent',1);
INSERT INTO ezsearch_word VALUES (2033,'using',1);
INSERT INTO ezsearch_word VALUES (2034,'hours',1);
INSERT INTO ezsearch_word VALUES (2035,'knows',1);
INSERT INTO ezsearch_word VALUES (2036,'solution',1);
INSERT INTO ezsearch_word VALUES (2037,'rethink',1);
INSERT INTO ezsearch_word VALUES (2038,'remember',1);
INSERT INTO ezsearch_word VALUES (2039,'include',1);
INSERT INTO ezsearch_word VALUES (2040,'program',1);
INSERT INTO ezsearch_word VALUES (2041,'module',1);
INSERT INTO ezsearch_word VALUES (2042,'plug',1);
INSERT INTO ezsearch_word VALUES (2043,'version',1);
INSERT INTO ezsearch_word VALUES (2044,'numbers',1);
INSERT INTO ezsearch_word VALUES (2045,'reread',1);
INSERT INTO ezsearch_word VALUES (2046,'reading',1);
INSERT INTO ezsearch_word VALUES (2047,'left',1);
INSERT INTO ezsearch_word VALUES (2048,'supply',1);
INSERT INTO ezsearch_word VALUES (2049,'expect',1);
INSERT INTO ezsearch_word VALUES (2050,'right',1);
INSERT INTO ezsearch_word VALUES (2051,'away',1);
INSERT INTO ezsearch_word VALUES (2052,'supported',1);
INSERT INTO ezsearch_word VALUES (2053,'community',1);
INSERT INTO ezsearch_word VALUES (2054,'leisure',1);
INSERT INTO ezsearch_word VALUES (2055,'level',1);
INSERT INTO ezsearch_word VALUES (2056,'answers',1);
INSERT INTO ezsearch_word VALUES (2057,'crew',1);
INSERT INTO ezsearch_word VALUES (2058,'together',1);
INSERT INTO ezsearch_word VALUES (2059,'valuable',1);
INSERT INTO ezsearch_word VALUES (2060,'part',1);
INSERT INTO ezsearch_word VALUES (2061,'improper',1);
INSERT INTO ezsearch_word VALUES (2062,'language',1);
INSERT INTO ezsearch_word VALUES (2063,'contains',1);
INSERT INTO ezsearch_word VALUES (2064,'like',1);
INSERT INTO ezsearch_word VALUES (2065,'cursing',1);
INSERT INTO ezsearch_word VALUES (2066,'swearing',1);
INSERT INTO ezsearch_word VALUES (2067,'answered',1);
INSERT INTO ezsearch_word VALUES (2068,'way',1);
INSERT INTO ezsearch_word VALUES (2069,'warning',1);
INSERT INTO ezsearch_word VALUES (2070,'administrators',1);
INSERT INTO ezsearch_word VALUES (2071,'otherwise',1);
INSERT INTO ezsearch_word VALUES (2072,'normal',1);
INSERT INTO ezsearch_word VALUES (2073,'behavior',1);
INSERT INTO ezsearch_word VALUES (2074,'expected',1);
INSERT INTO ezsearch_word VALUES (2075,'bulletin',1);
INSERT INTO ezsearch_word VALUES (2076,'latest',2);
INSERT INTO ezsearch_word VALUES (2077,'lorem',1);
INSERT INTO ezsearch_word VALUES (2078,'ipsum',1);
INSERT INTO ezsearch_word VALUES (2079,'dill',1);
INSERT INTO ezsearch_word VALUES (2080,'dall',1);
INSERT INTO ezsearch_word VALUES (2081,'added',1);
INSERT INTO ezsearch_word VALUES (2082,'favorite',1);
INSERT INTO ezsearch_word VALUES (2083,'us',1);
INSERT INTO ezsearch_word VALUES (2084,'dream',1);
INSERT INTO ezsearch_word VALUES (2085,'red',1);
INSERT INTO ezsearch_word VALUES (2086,'angry',1);
INSERT INTO ezsearch_word VALUES (2087,'others',1);
INSERT INTO ezsearch_word VALUES (2088,'dreams',1);
INSERT INTO ezsearch_word VALUES (2089,'perhaps',1);
INSERT INTO ezsearch_word VALUES (2090,'tested',1);
INSERT INTO ezsearch_word VALUES (2091,'own',1);
INSERT INTO ezsearch_word VALUES (2092,'volvo',1);
INSERT INTO ezsearch_word VALUES (2093,'c70',1);
INSERT INTO ezsearch_word VALUES (2094,'jaguar',1);
INSERT INTO ezsearch_word VALUES (2095,'79',1);
INSERT INTO ezsearch_word VALUES (2096,'mustang',1);
INSERT INTO ezsearch_word VALUES (2097,'we',1);
INSERT INTO ezsearch_word VALUES (2098,'choices',1);
INSERT INTO ezsearch_word VALUES (2099,'guest',1);
INSERT INTO ezsearch_word VALUES (2100,'accounts',1);
INSERT INTO ezsearch_word VALUES (2101,'administrator',2);
INSERT INTO ezsearch_word VALUES (2102,'users',2);
INSERT INTO ezsearch_word VALUES (2103,'admin',1);
INSERT INTO ezsearch_word VALUES (2104,'nospam@ez.no',2);
INSERT INTO ezsearch_word VALUES (2105,'site',1);
INSERT INTO ezsearch_word VALUES (2106,'boss',1);
INSERT INTO ezsearch_word VALUES (2107,'tim',1);
INSERT INTO ezsearch_word VALUES (2108,'editors',1);
INSERT INTO ezsearch_word VALUES (2109,'anonymous',2);
INSERT INTO ezsearch_word VALUES (2110,'setup',2);
INSERT INTO ezsearch_word VALUES (2111,'links',1);
INSERT INTO ezsearch_word VALUES (2112,'classes',1);
INSERT INTO ezsearch_word VALUES (2113,'class',1);
INSERT INTO ezsearch_word VALUES (2114,'grouplist',1);
INSERT INTO ezsearch_word VALUES (2115,'feel',2);
INSERT INTO ezsearch_word VALUES (2116,'content',3);
INSERT INTO ezsearch_word VALUES (2117,'edit',2);
INSERT INTO ezsearch_word VALUES (2118,'56',1);
INSERT INTO ezsearch_word VALUES (2119,'cache',1);
INSERT INTO ezsearch_word VALUES (2120,'url',1);
INSERT INTO ezsearch_word VALUES (2121,'translator',1);
INSERT INTO ezsearch_word VALUES (2122,'urltranslator',1);
INSERT INTO ezsearch_word VALUES (2123,'forum_package',1);
INSERT INTO ezsearch_word VALUES (2124,'copyright',1);
INSERT INTO ezsearch_word VALUES (2125,'&copy',1);
INSERT INTO ezsearch_word VALUES (2126,'ez',1);
INSERT INTO ezsearch_word VALUES (2127,'systems',1);
INSERT INTO ezsearch_word VALUES (2128,'1999',1);
INSERT INTO ezsearch_word VALUES (2129,'2004',1);
INSERT INTO ezsearch_word VALUES (2130,'common',3);
INSERT INTO ezsearch_word VALUES (2131,'ini',3);
INSERT INTO ezsearch_word VALUES (2132,'settings',3);
INSERT INTO ezsearch_word VALUES (2133,'235',1);

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


INSERT INTO ezsession VALUES ('a2bc134645827b34fe8e7cec800a021c',1076839159,'LastAccessesURI|s:22:\"/content/view/full/172\";eZUserInfoCache_Timestamp|i:1076579614;eZUserGroupsCache_Timestamp|i:1076579614;eZUserLoggedInID|s:2:\"14\";eZUserInfoCache|a:1:{i:14;a:5:{s:16:\"contentobject_id\";s:2:\"14\";s:5:\"login\";s:5:\"admin\";s:5:\"email\";s:12:\"nospam@ez.no\";s:13:\"password_hash\";s:32:\"c78e3b0f3d9244ed8c6d1c29464bdff9\";s:18:\"password_hash_type\";s:1:\"2\";}}eZUserGroupsCache|a:1:{i:14;a:1:{i:0;a:1:{s:2:\"id\";s:2:\"12\";}}}PermissionCachedForUserID|s:2:\"14\";PermissionCachedForUserIDTimestamp|i:1076579614;UserRoles|a:1:{i:0;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:13:\"Administrator\";}}UserPolicies|a:1:{i:2;a:1:{i:0;a:5:{s:2:\"id\";s:3:\"308\";s:7:\"role_id\";s:1:\"2\";s:11:\"module_name\";s:1:\"*\";s:13:\"function_name\";s:1:\"*\";s:10:\"limitation\";s:1:\"*\";}}}eZUserDiscountRulesTimestamp|i:1076579615;eZUserDiscountRules14|a:0:{}eZGlobalSection|a:1:{s:2:\"id\";s:2:\"11\";}CanInstantiateClassesCachedForUser|s:2:\"14\";ClassesCachedTimestamp|i:1076579767;CanInstantiateClasses|i:1;CanInstantiateClassList|a:13:{i:0;a:2:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Folder\";}i:1;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:7:\"Article\";}i:2;a:2:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:10:\"User group\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:4:\"User\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:5:\"Image\";}i:5;a:2:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:9:\"Info page\";}i:6;a:2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:4:\"File\";}i:7;a:2:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:10:\"Setup link\";}i:8;a:2:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:13:\"Template look\";}i:9;a:2:{s:2:\"id\";s:2:\"20\";s:4:\"name\";s:5:\"Forum\";}i:10;a:2:{s:2:\"id\";s:2:\"21\";s:4:\"name\";s:11:\"Forum topic\";}i:11;a:2:{s:2:\"id\";s:2:\"22\";s:4:\"name\";s:11:\"Forum reply\";}i:12;a:2:{s:2:\"id\";s:2:\"23\";s:4:\"name\";s:19:\"Common ini settings\";}}eZPreferences|a:3:{s:13:\"bookmark_menu\";b:0;s:12:\"history_menu\";b:0;s:13:\"advanced_menu\";s:2:\"on\";}FromGroupID|b:0;ClassesCachedForUser|s:2:\"14\";');

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
INSERT INTO ezurlalias VALUES (14,'users/anonymous_user','a37b7463e2c21098fa1a729dad4b4437','content/view/full/11',1,175,0);
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
INSERT INTO ezurlalias VALUES (29,'news','508c75c8507a2ae5223dfd2faeb98122','content/view/full/50',1,0,0);
INSERT INTO ezurlalias VALUES (34,'setup/look_and_feel/intranet','6d6a9d6e8f6cadb080fffb1276dd1e5e','content/view/full/54',1,115,0);
INSERT INTO ezurlalias VALUES (121,'news/news_bulletin','9365952d8950c12f923a3a48e5e27fa3','content/view/full/126',1,0,0);
INSERT INTO ezurlalias VALUES (122,'about_this_forum','55803ba2746d617ca86e2a61b1d32d8b','content/view/full/127',1,0,0);
INSERT INTO ezurlalias VALUES (99,'setup/look_and_feel/corporate','ab9f681938bd76b97b3ab1256b61119e','content/view/full/54',1,115,0);
INSERT INTO ezurlalias VALUES (90,'contact/companies/foo_bar_corp/fido_barida','ce1be6fe76c4671d8616c8bf1b5365de','content/view/full/102',1,0,0);
INSERT INTO ezurlalias VALUES (93,'setup/look_and_feel/intranetyy','53849c55dbaf18cf2c0b278123c9a7b2','content/view/full/54',1,115,0);
INSERT INTO ezurlalias VALUES (87,'contact/companies/foo_bar_corp','b22fd60d77fb6f2a6f9ac44b28c6ff16','content/view/full/99',1,0,0);
INSERT INTO ezurlalias VALUES (88,'contact/companies/ez_sys/vidar_langseid','df1e0c77c37e8039c443cb24d9494996','content/view/full/100',1,0,0);
INSERT INTO ezurlalias VALUES (89,'contact/companies/ez_sys/brd_farstad','9c7d13ba2d21bc56807f81ee923bce94','content/view/full/101',1,0,0);
INSERT INTO ezurlalias VALUES (59,'contact/companies/abb','809afee2cd77358a08683bf42e27636f','content/view/full/78',1,0,0);
INSERT INTO ezurlalias VALUES (60,'files/products/online_editor','766820f3f5b43065be86e00af303dc78','content/view/full/79',1,0,0);
INSERT INTO ezurlalias VALUES (61,'files/products/ez_publish_32','bb00f9e0da1ab19bedc52774d1b75dd2','content/view/full/80',1,0,0);
INSERT INTO ezurlalias VALUES (65,'munich1','3a6e2f1cb7b127c4984af22780094240','content/view/full/84',1,69,0);
INSERT INTO ezurlalias VALUES (66,'contact/persons/wenyue','05cf086075eeb7923d9ef1d22c358892','content/view/full/85',1,83,0);
INSERT INTO ezurlalias VALUES (84,'contact/persons/reiten_bjrn','af38d7e864c796edd66d5a0aaea69c8c','content/view/full/90',1,0,0);
INSERT INTO ezurlalias VALUES (69,'media/images/news/munich1','0492853131729dac783e4c4dc6e7a676','content/view/full/84',1,0,0);
INSERT INTO ezurlalias VALUES (71,'media/images/contact/mr_xxx','e613416ebc175f81b5660d2e1758d1d0','content/view/full/89',1,0,0);
INSERT INTO ezurlalias VALUES (72,'l','2db95e8e1a9267b7a1188556b2013b33','user/logout',0,0,0);
INSERT INTO ezurlalias VALUES (73,'contact/persons/bjrn','59dd7166c379c7fd437cd6afe746a285','content/view/full/90',1,84,0);
INSERT INTO ezurlalias VALUES (101,'forum','bbdbe444288550204c968fe7002a97a9','content/view/full/111',1,112,0);
INSERT INTO ezurlalias VALUES (78,'setup/setup_links/cache','1f2374cab6280ecfca991a7b6e5119c6','content/view/full/95',1,0,0);
INSERT INTO ezurlalias VALUES (79,'setup/setup_links/url_translator','7b226327c99e6fd78ad40eb66892d7ae','content/view/full/96',1,0,0);
INSERT INTO ezurlalias VALUES (80,'setup/setup_links/look_and_feel','37986c863618270fa0fa6936ba217c7b','content/view/full/47',1,0,0);
INSERT INTO ezurlalias VALUES (82,'images/*','04e9ea07da46830b94f38285ba6ea065','media/images/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (86,'contact/companies/ez_sys','9e1c777b00ef2ded56fe0fdf13547570','content/view/full/98',1,0,0);
INSERT INTO ezurlalias VALUES (104,'discussions/music_discussion','09533dfccc8477debe545d31bccf391f','content/view/full/114',1,149,0);
INSERT INTO ezurlalias VALUES (106,'discussions/this_is_a_new_topic/*','3597b3c74225331ec401c8abc9f6d1d4','discussions/music_discussion/this_is_a_new_topic/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (173,'discussions/forum_rules/choose_the_correct_forum','a4b18bd7a44b0a85c44d2a24ed6dcf1f','content/view/full/170',1,0,0);
INSERT INTO ezurlalias VALUES (112,'discussions','48ee344d9a540894650ce4af27e169dd','content/view/full/111',1,0,0);
INSERT INTO ezurlalias VALUES (113,'forum/*','94b1ef84913dabe113cb907c181ee300','discussions/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (115,'setup/look_and_feel/forum','00d91935e17d76f152f7aaf0c0defac2','content/view/full/54',1,0,0);
INSERT INTO ezurlalias VALUES (165,'discussions/forum_main_group/music_discussion/what_is_wrong_with_pop','deef0b69a301d79c660a47b8da45d1bb','content/view/full/162',1,0,0);
INSERT INTO ezurlalias VALUES (166,'discussions/forum_main_group/music_discussion/what_is_wrong_with_pop/madonna_is_one_of_the_greats','ba2e62a42bda005d4c34e5166dcdd49e','content/view/full/163',1,0,0);
INSERT INTO ezurlalias VALUES (128,'discussions/forum_main_group/sports_discussion/what_is_the_best_football_team_in_europe/reply_2','5936e9ca8c6d52c0e7bf656f64cc18ae','content/view/full/133',1,164,0);
INSERT INTO ezurlalias VALUES (167,'discussions/forum_main_group/sport_forum','33630020df40911b02af2a5607be9ea4','content/view/full/164',1,0,0);
INSERT INTO ezurlalias VALUES (168,'discussions/forum_main_group/sport_forum/what_is_the_best_football_team_in_europe','b4f62b44ff2941aef56caf9b37c353a0','content/view/full/165',1,0,0);
INSERT INTO ezurlalias VALUES (169,'discussions/forum_main_group/sport_forum/what_is_the_best_football_team_in_europe/who_is_odd','513d8b7cc7a8e5b393401ed29804166d','content/view/full/166',1,0,0);
INSERT INTO ezurlalias VALUES (170,'discussions/forum_main_group/sport_forum/what_is_the_best_football_team_in_europe/gulset_are_better_than_odd','b6cc0a944079dbad1b927da4897b4fe6','content/view/full/167',1,0,0);
INSERT INTO ezurlalias VALUES (171,'discussions/forum_rules','20d090b2e34d25845cfa3ced99c3c3bd','content/view/full/168',1,0,0);
INSERT INTO ezurlalias VALUES (172,'discussions/forum_rules/how_to_register_a_new_user','9bcddfc3ced0dbf170783a3d5a3d2b90','content/view/full/169',1,0,0);
INSERT INTO ezurlalias VALUES (147,'discussions/folder','fb8d0dc27cea3b666b0e76e4b6805d77','content/view/full/152',1,148,0);
INSERT INTO ezurlalias VALUES (148,'discussions/forum_main_group','cb4217f89d8a4365cfef45f8cb50a1cc','content/view/full/152',1,0,0);
INSERT INTO ezurlalias VALUES (149,'discussions/forum_main_group/music_discussion','a1a79985f113d5b05b22c9686b46b175','content/view/full/114',1,0,0);
INSERT INTO ezurlalias VALUES (150,'discussions/music_discussion/*','2ec2a3bfcf01ad3f1323390ab26dfeac','discussions/forum_main_group/music_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (152,'discussions/sports_discussion/*','7acbf48218ca6e1d80c267911860d34f','discussions/forum_main_group/sports_discussion/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (156,'news/choose_the_correct_forum','6d6b4946f3fdbdd11431feb374b85a36','content/view/full/156',1,0,0);
INSERT INTO ezurlalias VALUES (157,'news/latest_forum_dreamcars','0ab8369e6bbe6629b18f53c2b7d7231a','content/view/full/157',1,0,0);
INSERT INTO ezurlalias VALUES (158,'discussions/forum_main_group/dreamcars','cf8fa92c99b243b23cdf1bd393b406af','content/view/full/158',1,0,0);
INSERT INTO ezurlalias VALUES (159,'discussions/forum_main_group/dreamcars/koenigsegg_is_the_master','4a018a78c744e72b44334a823e368ab3','content/view/full/159',1,0,0);
INSERT INTO ezurlalias VALUES (160,'discussions/forum_main_group/dreamcars/cant_leave_ferrari_f40_out_of_it','838454f3eaa615da6d3330d50dd89e92','content/view/full/160',1,0,0);
INSERT INTO ezurlalias VALUES (161,'discussions/forum_main_group/dreamcars/koenigsegg_is_the_master/knigsegg_is_the_best','1571e43da0713dbfb79d02074f0fd1bc','content/view/full/161',1,0,0);
INSERT INTO ezurlalias VALUES (163,'discussions/forum_main_group/sports_discussion/football/*','b12d788dbcae0e42a75222e6f87b8a76','discussions/forum_main_group/sports_discussion/what_is_the_best_football_team_in_europe/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (164,'discussions/forum_main_group/sports_discussion/what_is_the_best_football_team_in_europe/who_is_odd','c09a58e324a83f2a9dfa1ce426a23385','content/view/full/133',1,0,0);
INSERT INTO ezurlalias VALUES (174,'users/anonymous_users','3ae1aac958e1c82013689d917d34967a','content/view/full/171',1,0,0);
INSERT INTO ezurlalias VALUES (175,'users/anonymous_users/anonymous_user','aad93975f09371695ba08292fd9698db','content/view/full/11',1,0,0);
INSERT INTO ezurlalias VALUES (176,'discussions/forum_main_group/dreamcars/koenigsegg_is_the_master/k_nigsegg_is_the_best','17fef31b23840c46da3a1120602ef488','content/view/full/161',1,0,0);
INSERT INTO ezurlalias VALUES (177,'discussions/forum_main_group/dreamcars/can_t_leave_ferrari_f40_out_of_it','4fe27f476efe0215896077b946e39025','content/view/full/160',1,0,0);
INSERT INTO ezurlalias VALUES (178,'setup/common_ini_settings','e501fe6c81ed14a5af2b322d248102d8','content/view/full/172',1,0,0);
INSERT INTO ezurlalias VALUES (179,'setup/common_ini_settings/common_ini_settings','51580fac4a0d382aede57bc43af6e63a','content/view/full/173',1,0,0);
INSERT INTO ezurlalias VALUES (180,'setup/setup_links/common_ini_settings','e85ca643d417d1d3b7459bc4eef7a1f0','content/view/full/174',1,0,0);

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



