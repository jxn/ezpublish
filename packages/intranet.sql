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


INSERT INTO ezcontentbrowserecent VALUES (1,14,44,1076579382,'Setup');
INSERT INTO ezcontentbrowserecent VALUES (2,14,156,1076579436,'Common ini settings');
INSERT INTO ezcontentbrowserecent VALUES (3,14,46,1076579512,'Setup links');

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
INSERT INTO ezcontentclass VALUES (2,0,'Article','article','<title>',14,14,1024392098,1069414895);
INSERT INTO ezcontentclass VALUES (3,0,'User group','user_group','<name>',14,14,1024392098,1048494743);
INSERT INTO ezcontentclass VALUES (4,0,'User','user','<first_name> <last_name>',14,14,1024392098,1066916721);
INSERT INTO ezcontentclass VALUES (5,0,'Image','image','<name>',8,14,1031484992,1048494784);
INSERT INTO ezcontentclass VALUES (6,0,'Forum','forum','<name>',14,14,1052384723,1052384870);
INSERT INTO ezcontentclass VALUES (7,0,'Forum message','forum_message','<topic>',14,14,1052384877,1052384943);
INSERT INTO ezcontentclass VALUES (8,0,'Product','product','<title>',14,14,1052384951,1052385067);
INSERT INTO ezcontentclass VALUES (9,0,'Product review','product_review','<title>',14,14,1052385080,1052385252);
INSERT INTO ezcontentclass VALUES (10,0,'Info page','info_page','<name>',14,14,1052385274,1052385353);
INSERT INTO ezcontentclass VALUES (11,0,'Link','link','<title>',14,14,1052385361,1052385453);
INSERT INTO ezcontentclass VALUES (12,0,'File','file','<name>',14,14,1052385472,1052385669);
INSERT INTO ezcontentclass VALUES (13,0,'Comment','comment','<subject>',14,14,1052385685,1052385756);
INSERT INTO ezcontentclass VALUES (14,0,'Setup link','setup_link','<title>',14,14,1066383719,1066383885);
INSERT INTO ezcontentclass VALUES (15,0,'Template look','template_look','<title>',14,14,1066390045,1069416328);
INSERT INTO ezcontentclass VALUES (16,0,'Company','company','<company_name>',14,14,1066660266,1069419131);
INSERT INTO ezcontentclass VALUES (17,0,'Person','person','<first_name> <last_name>',14,14,1066660986,1066999049);
INSERT INTO ezcontentclass VALUES (18,0,'Event','event','<event_name>',14,14,1066661135,1066661324);
INSERT INTO ezcontentclass VALUES (19,0,'Common ini settings','common_ini_settings','<name>',14,14,1076579236,1076579334);

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
INSERT INTO ezcontentclass_attribute VALUES (127,0,7,'topic','Topic','ezstring',1,1,1,150,0,0,0,0,0,0,0,'New topic','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (128,0,7,'message','Message','eztext',1,1,2,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (126,0,6,'description','Description','ezxmltext',1,0,3,15,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (125,0,6,'icon','Icon','ezimage',0,0,2,1,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (124,0,6,'name','Name','ezstring',1,1,1,150,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (134,0,8,'photo','Photo','ezimage',0,0,6,1,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (133,0,8,'price','Price','ezprice',0,1,5,1,0,0,0,1,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (132,0,8,'description','Description','ezxmltext',1,0,4,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (131,0,8,'intro','Intro','ezxmltext',1,0,3,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (130,0,8,'product_nr','Product nr.','ezstring',1,0,2,40,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (129,0,8,'title','Title','ezstring',1,1,1,100,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (139,0,9,'review','Review','ezxmltext',1,0,5,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (138,0,9,'geography','Town, Country','ezstring',1,1,4,0,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (137,0,9,'reviewer_name','Reviewer Name','ezstring',1,1,3,0,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (136,0,9,'rating','Rating','ezenum',1,0,2,0,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (135,0,9,'title','Title','ezstring',1,1,1,50,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (142,0,10,'image','Image','ezimage',0,0,3,1,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (141,0,10,'body','Body','ezxmltext',1,0,2,20,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (140,0,10,'name','Name','ezstring',1,1,1,100,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (146,0,12,'name','Name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'New file','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (148,0,12,'file','File','ezbinaryfile',0,1,3,0,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (147,0,12,'description','Description','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (145,0,11,'link','Link','ezurl',0,0,3,0,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (144,0,11,'description','Description','ezxmltext',1,0,2,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (143,0,11,'title','Title','ezstring',1,1,1,100,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (151,0,13,'message','Message','eztext',1,1,3,10,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (150,0,13,'author','Author','ezstring',1,1,2,0,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (149,0,13,'subject','Subject','ezstring',1,1,1,40,0,0,0,0,0,0,0,'','','','',NULL,0,1);
INSERT INTO ezcontentclass_attribute VALUES (154,0,14,'description','Description','eztext',1,0,3,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (153,0,14,'icon','Icon','ezimage',0,0,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (152,0,14,'title','Title','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (155,0,14,'link','Link','ezstring',1,1,4,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (178,0,17,'picture','picture','ezimage',0,0,5,1,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (179,0,17,'comment','Comment','ezxmltext',1,0,6,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (182,0,15,'footer','Footer','ezstring',1,0,8,0,0,0,0,0,0,0,0,'Copyright &copy;','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (122,0,2,'thumbnail','Thumbnail','ezimage',0,0,4,2,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (167,0,16,'relation','Relation','ezselection',1,0,6,0,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezselection>\n  <options>\n    <option id=\"0\"\n            name=\"Partner\" />\n    <option id=\"2\"\n            name=\"Customer\" />\n    <option id=\"3\"\n            name=\"Supplier\" />\n  </options>\n</ezselection>',0,1);
INSERT INTO ezcontentclass_attribute VALUES (168,0,16,'company_numbers','Company numbers','ezmatrix',1,0,7,2,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezmatrix>\n  <column-name id=\"contact_type\"\n               idx=\"0\">Contact type</column-name>\n  <column-name id=\"contact_value\"\n               idx=\"1\">Contact value</column-name>\n</ezmatrix>',0,1);
INSERT INTO ezcontentclass_attribute VALUES (176,0,18,'event_info','Event info','eztext',1,0,3,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (175,0,18,'event_date','Event date','ezdate',0,0,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (173,0,18,'event_name','Event name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (161,0,15,'id','id','ezstring',1,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (180,0,15,'email','Email','ezinisetting',0,0,6,1,0,0,0,0,0,0,0,'site.ini','MailSettings','AdminEmail','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (170,0,17,'first_name','First name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (181,0,15,'siteurl','Site URL','ezinisetting',0,0,7,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteURL','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (169,0,17,'last_name','Last name','ezstring',1,1,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (171,0,17,'position','Position/job','ezstring',1,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (12,0,4,'user_account','User account','ezuser',1,1,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (9,0,4,'last_name','Last name','ezstring',1,1,2,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (8,0,4,'first_name','First name','ezstring',1,1,1,255,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (172,0,17,'person_numbers','Person numbers','ezmatrix',1,0,4,0,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezmatrix>\n  <column-name id=\"contact_type\"\n               idx=\"0\">Contact type</column-name>\n  <column-name id=\"contact_value\"\n               idx=\"1\">Contact value</column-name>\n</ezmatrix>',0,1);
INSERT INTO ezcontentclass_attribute VALUES (165,0,16,'logo','Logo','ezimage',0,0,4,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (166,0,16,'additional_information','Additional information','eztext',1,0,5,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (123,0,2,'enable_comments','Enable comments','ezboolean',0,0,5,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (121,0,2,'body','Body','ezxmltext',1,0,3,20,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (1,0,2,'title','Title','ezstring',1,1,1,255,0,0,0,0,0,0,0,'New article','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (120,0,2,'intro','Intro','ezxmltext',1,1,2,10,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (160,0,15,'sitestyle','Sitestyle','ezpackage',0,0,4,1,0,0,0,0,0,0,0,'sitestyle','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (159,0,15,'image','Image','ezimage',0,0,3,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (158,0,15,'meta_data','Meta data','ezinisetting',0,0,2,6,0,0,0,0,0,0,0,'site.ini','SiteSettings','MetaDataArray','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (157,0,15,'title','Title','ezinisetting',0,0,1,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','SiteName','0;1;2;3','override;user;admin;demo;intranet',0,1);
INSERT INTO ezcontentclass_attribute VALUES (162,0,16,'company_name','Company name','ezstring',1,1,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (163,0,16,'company_number','Company number','ezstring',1,0,2,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (164,0,16,'company_address','Company address','ezmatrix',1,0,3,3,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezmatrix>\n  <column-name id=\"address_type\"\n               idx=\"0\">Address type</column-name>\n  <column-name id=\"address_value\"\n               idx=\"1\">Address value</column-name>\n</ezmatrix>',0,1);
INSERT INTO ezcontentclass_attribute VALUES (195,0,19,'imagelarge','Image Large Size','ezinisetting',0,0,13,6,0,0,0,0,0,0,0,'image.ini','large','Filters','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (194,0,19,'imagemedium','Image Medium Size','ezinisetting',0,0,12,6,0,0,0,0,0,0,0,'image.ini','medium','Filters','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (193,0,19,'imagesmall','Image Small Size','ezinisetting',0,0,11,6,0,0,0,0,0,0,0,'image.ini','small','Filters','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (192,0,19,'templatecompile','Template Compile','ezinisetting',0,0,10,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCompile','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (191,0,19,'templatecache','Template Cache','ezinisetting',0,0,9,2,0,0,0,0,0,0,0,'site.ini','TemplateSettings','TemplateCache','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (190,0,19,'viewcaching','View Caching','ezinisetting',0,0,8,2,0,0,0,0,0,0,0,'site.ini','ContentSettings','ViewCaching','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (189,0,19,'debugredirection','Debug Redirection','ezinisetting',0,0,7,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugRedirection','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (188,0,19,'debugiplist','Debug IP List','ezinisetting',0,0,6,6,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugIPList','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (187,0,19,'debugbyip','Debug By IP','ezinisetting',0,0,5,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugByIP','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (186,0,19,'debugoutput','Debug Output','ezinisetting',0,0,4,2,0,0,0,0,0,0,0,'site.ini','DebugSettings','DebugOutput','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (185,0,19,'defaultpage','Default Page','ezinisetting',0,0,3,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','DefaultPage','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);
INSERT INTO ezcontentclass_attribute VALUES (183,0,19,'name','Name','ezstring',1,0,1,0,0,0,0,0,0,0,0,'','','','','',0,1);
INSERT INTO ezcontentclass_attribute VALUES (184,0,19,'indexpage','Index Page','ezinisetting',0,0,2,1,0,0,0,0,0,0,0,'site.ini','SiteSettings','IndexPage','12;13','override;admin;blog_admin;blog_user;forum_user;forum_admin;news_user;news_admin;corporate_user;corporate_admin;gallery_user;gallery_admin;intranet_user;intranet_admin;shop_user;shop_admin;plain',0,1);

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
INSERT INTO ezcontentclass_classgroup VALUES (18,0,1,'Content');
INSERT INTO ezcontentclass_classgroup VALUES (19,0,4,'Setup');

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


INSERT INTO ezcontentobject VALUES (1,14,1,1,'Intranet',2,0,1033917596,1069416323,1,'');
INSERT INTO ezcontentobject VALUES (4,14,2,3,'Users',1,0,1033917596,1033917596,1,NULL);
INSERT INTO ezcontentobject VALUES (10,14,2,4,'Anonymous User',2,0,1033920665,1072181019,1,'');
INSERT INTO ezcontentobject VALUES (11,14,2,3,'Guest accounts',1,0,1033920746,1033920746,1,NULL);
INSERT INTO ezcontentobject VALUES (12,14,2,3,'Administrator users',1,0,1033920775,1033920775,1,NULL);
INSERT INTO ezcontentobject VALUES (13,14,2,3,'Editors',1,0,1033920794,1033920794,1,NULL);
INSERT INTO ezcontentobject VALUES (14,14,2,4,'Administrator User',1,0,1033920830,1033920830,1,NULL);
INSERT INTO ezcontentobject VALUES (41,14,3,1,'Media',1,0,1060695457,1060695457,1,'');
INSERT INTO ezcontentobject VALUES (42,14,11,1,'Setup',1,0,1066383068,1066383068,1,'');
INSERT INTO ezcontentobject VALUES (43,14,11,14,'Classes',8,0,1066384365,1069162841,1,'');
INSERT INTO ezcontentobject VALUES (44,14,11,1,'Setup links',1,0,1066384457,1066384457,1,'');
INSERT INTO ezcontentobject VALUES (45,14,11,14,'Look and feel',10,0,1066388816,1069164888,1,'');
INSERT INTO ezcontentobject VALUES (46,14,11,1,'Look and feel',2,0,1066389805,1066389902,1,'');
INSERT INTO ezcontentobject VALUES (47,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (122,14,1,5,'New Image',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (49,14,4,1,'News',1,0,1066398020,1066398020,1,'');
INSERT INTO ezcontentobject VALUES (51,14,1,14,'New Setup link',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (53,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (136,14,11,15,'Intranet',16,0,1069164104,1069841972,1,'');
INSERT INTO ezcontentobject VALUES (57,14,5,1,'Contact',1,0,1066729137,1066729137,1,'');
INSERT INTO ezcontentobject VALUES (59,14,4,1,'Off topic',1,0,1066729211,1066729211,1,'');
INSERT INTO ezcontentobject VALUES (60,14,4,1,'Reports',2,0,1066729226,1066729241,1,'');
INSERT INTO ezcontentobject VALUES (61,14,4,1,'Staff news',1,0,1066729258,1066729258,1,'');
INSERT INTO ezcontentobject VALUES (62,14,5,1,'Persons',1,0,1066729284,1066729284,1,'');
INSERT INTO ezcontentobject VALUES (63,14,5,1,'Companies',1,0,1066729298,1066729298,1,'');
INSERT INTO ezcontentobject VALUES (64,14,6,1,'Files',3,0,1066729319,1066898100,1,'');
INSERT INTO ezcontentobject VALUES (66,14,6,1,'Handbooks',1,0,1066729356,1066729356,1,'');
INSERT INTO ezcontentobject VALUES (67,14,6,1,'Documents',1,0,1066729371,1066729371,1,'');
INSERT INTO ezcontentobject VALUES (68,14,6,1,'Company routines',1,0,1066729385,1066729385,1,'');
INSERT INTO ezcontentobject VALUES (69,14,6,1,'Logos',1,0,1066729400,1066729400,1,'');
INSERT INTO ezcontentobject VALUES (129,14,1,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (173,14,5,16,'My Company',1,0,1069770749,1069770749,1,'');
INSERT INTO ezcontentobject VALUES (127,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (176,14,4,2,'New employee',1,0,1069774043,1069774043,1,'');
INSERT INTO ezcontentobject VALUES (83,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (84,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (85,14,5,1,'New Folder',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (87,14,5,16,'New Company',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (88,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (91,14,1,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (170,14,1,10,'Vacation routines',1,0,1069769718,1069769718,1,'');
INSERT INTO ezcontentobject VALUES (96,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (126,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (171,14,5,17,'John Doe',1,0,1069769945,1069769945,1,'');
INSERT INTO ezcontentobject VALUES (172,14,5,17,'Per Son',1,0,1069770002,1069770002,1,'');
INSERT INTO ezcontentobject VALUES (103,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (104,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (105,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (106,14,2,4,'New User',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (112,14,1,1,'Information',2,0,1066986270,1069769638,1,'');
INSERT INTO ezcontentobject VALUES (113,14,1,10,'Routines',1,0,1066986541,1066986541,1,'');
INSERT INTO ezcontentobject VALUES (115,14,11,14,'Cache',3,0,1066991725,1069162746,1,'');
INSERT INTO ezcontentobject VALUES (116,14,11,14,'URL translator',2,0,1066992054,1069162892,1,'');
INSERT INTO ezcontentobject VALUES (117,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (133,14,11,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (134,14,11,15,'New Template look',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (143,14,4,2,'New Article',1,0,0,0,0,'');
INSERT INTO ezcontentobject VALUES (175,14,4,2,'Annual report',1,0,1069773968,1069773968,1,'');
INSERT INTO ezcontentobject VALUES (174,14,4,2,'New business cards',2,0,1069773925,1069774003,1,'');
INSERT INTO ezcontentobject VALUES (165,14,4,13,'jkhkjh',1,0,1069423490,1069423490,1,'');
INSERT INTO ezcontentobject VALUES (166,14,4,13,'kljjkl',1,0,1069423957,1069423957,1,'');
INSERT INTO ezcontentobject VALUES (177,14,2,3,'Anonymous Users',1,0,1072181000,1072181000,1,'');
INSERT INTO ezcontentobject VALUES (178,14,11,1,'Common ini settings',1,0,1076579382,1076579382,1,'');
INSERT INTO ezcontentobject VALUES (179,14,11,19,'Common ini settings',2,0,1076579436,1076579545,1,'');
INSERT INTO ezcontentobject VALUES (180,14,11,14,'Common ini settings',1,0,1076579512,1076579512,1,'');

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
INSERT INTO ezcontentobject_attribute VALUES (28,'eng-GB',1,14,8,'Administrator',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (29,'eng-GB',1,14,9,'User',0,0,0,0,'','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (30,'eng-GB',1,14,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (467,'eng-GB',16,136,181,'ez.no',0,0,0,0,'','ezinisetting');
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
INSERT INTO ezcontentobject_attribute VALUES (155,'eng-GB',1,57,4,'Contact',0,0,0,0,'contact','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (156,'eng-GB',1,57,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (159,'eng-GB',1,59,4,'Off topic',0,0,0,0,'off topic','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (160,'eng-GB',1,59,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (161,'eng-GB',2,60,4,'Reports',0,0,0,0,'reports','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (162,'eng-GB',2,60,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (163,'eng-GB',1,61,4,'Staff news',0,0,0,0,'staff news','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (164,'eng-GB',1,61,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (165,'eng-GB',1,62,4,'Persons',0,0,0,0,'persons','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (166,'eng-GB',1,62,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (167,'eng-GB',1,63,4,'Companies',0,0,0,0,'companies','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (168,'eng-GB',1,63,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (173,'eng-GB',1,66,4,'Handbooks',0,0,0,0,'handbooks','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (174,'eng-GB',1,66,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (175,'eng-GB',1,67,4,'Documents',0,0,0,0,'documents','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (176,'eng-GB',1,67,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (177,'eng-GB',1,68,4,'Company routines',0,0,0,0,'company routines','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (178,'eng-GB',1,68,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (179,'eng-GB',1,69,4,'Logos',0,0,0,0,'logos','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (180,'eng-GB',1,69,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (110,'eng-GB',10,45,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (111,'eng-GB',10,45,155,'content/edit/136',0,0,0,0,'content/edit/136','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (653,'eng-GB',2,174,1,'New business cards',0,0,0,0,'new business cards','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (654,'eng-GB',2,174,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>\n    <line>The new business cards just arrived.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (658,'eng-GB',1,175,1,'Annual report',0,0,0,0,'annual report','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (659,'eng-GB',1,175,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>We&apos;ve just released our annual report.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (660,'eng-GB',1,175,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</paragraph>\n  <paragraph>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (661,'eng-GB',1,175,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"annual_report.\"\n         suffix=\"\"\n         basename=\"annual_report\"\n         dirpath=\"var/intranet/storage/images/news/reports/annual_report/661-1-eng-GB\"\n         url=\"var/intranet/storage/images/news/reports/annual_report/661-1-eng-GB/annual_report.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069773935\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (662,'eng-GB',1,175,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (169,'eng-GB',3,64,4,'Files',0,0,0,0,'files','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (170,'eng-GB',3,64,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Here you can download all files ...</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (317,'eng-GB',2,112,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>General information about our company.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (316,'eng-GB',2,112,4,'Information',0,0,0,0,'information','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (466,'eng-GB',16,136,180,'nospam@ez.no',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (465,'eng-GB',16,136,161,'intranet_package',0,0,0,0,'intranet_package','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (464,'eng-GB',16,136,160,'intranet_red',0,0,0,0,'intranet_red','ezpackage');
INSERT INTO ezcontentobject_attribute VALUES (656,'eng-GB',2,174,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"new_business_cards.\"\n         suffix=\"\"\n         basename=\"new_business_cards\"\n         dirpath=\"var/intranet/storage/images/news/off_topic/new_business_cards/656-2-eng-GB\"\n         url=\"var/intranet/storage/images/news/off_topic/new_business_cards/656-2-eng-GB/new_business_cards.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069773844\">\n  <original attribute_id=\"656\"\n            attribute_version=\"1\"\n            attribute_language=\"eng-GB\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (657,'eng-GB',2,174,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (664,'eng-GB',1,176,120,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>We&apos;ve just got a new member of our team.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (665,'eng-GB',1,176,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (666,'eng-GB',1,176,122,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"new_employee.\"\n         suffix=\"\"\n         basename=\"new_employee\"\n         dirpath=\"var/intranet/storage/images/news/staff_news/new_employee/666-1-eng-GB\"\n         url=\"var/intranet/storage/images/news/staff_news/new_employee/666-1-eng-GB/new_employee.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069774020\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (667,'eng-GB',1,176,123,'',0,0,0,0,'','ezboolean');
INSERT INTO ezcontentobject_attribute VALUES (318,'eng-GB',1,113,140,'Routines',0,0,0,0,'routines','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (319,'eng-GB',1,113,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Cras egestas nisl non turpis. Cras sed leo ut dui iaculis pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Donec felis nulla, aliquet et, aliquam sed, ultricies et, urna. Vivamus risus. Fusce pede. Sed ornare, lectus sed aliquam auctor, erat purus elementum magna, vel luctus augue turpis quis massa. Nullam egestas diam at mi. </paragraph>\n  <paragraph>Vestibulum viverra tristique velit. Vivamus vitae quam. Mauris nibh. Phasellus nec metus. Integer tristique magna eu sem. Praesent rutrum ullamcorper ligula. Fusce et est. Integer at orci. Aliquam lectus ligula, commodo a, rhoncus et, semper eget, magna. Sed vel augue. Pellentesque at est ac massa gravida vehicula. Suspendisse potenti. Aenean ut diam. Nulla purus quam, sodales id, adipiscing eu, dignissim quis, libero. In eu erat. </paragraph>\n  <paragraph>Maecenas vel lorem a nisl auctor semper. Vivamus arcu elit, ultricies in, congue at, commodo at, nulla. Aliquam in nibh. Etiam sapien lectus, mollis vitae, malesuada vel, fermentum vitae, massa. In hac habitasse platea dictumst. Phasellus quis neque ut orci auctor posuere. Donec ac nisl vel nunc porttitor venenatis. Morbi eget enim. Phasellus commodo, neque at sagittis scelerisque, erat nulla elementum orci, vitae consectetuer risus magna sit amet lectus. Curabitur laoreet wisi sed neque. Vestibulum lobortis magna nec nisl. Praesent non enim. </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (320,'eng-GB',1,113,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"routines.\"\n         suffix=\"\"\n         basename=\"routines\"\n         dirpath=\"var/intranet/storage/images/information/routines/320-1-eng-GB\"\n         url=\"var/intranet/storage/images/information/routines/320-1-eng-GB/routines.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (108,'eng-GB',10,45,152,'Look and feel',0,0,0,0,'look and feel','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (109,'eng-GB',10,45,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"look_and_feel.png\"\n         suffix=\"png\"\n         basename=\"look_and_feel\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel.png\"\n         original_filename=\"gnome-color-browser.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"109\"\n            attribute_version=\"9\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"look_and_feel_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"look_and_feel_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"icon\"\n         filename=\"look_and_feel_icon.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_icon.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1993047904\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"look_and_feel_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (663,'eng-GB',1,176,1,'New employee',0,0,0,0,'new employee','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (655,'eng-GB',2,174,121,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</paragraph>\n  <paragraph>\n    <line>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</line>\n  </paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (461,'eng-GB',16,136,157,'Intranet',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (646,'eng-GB',1,173,162,'My Company',0,0,0,0,'my company','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (647,'eng-GB',1,173,163,'C100',0,0,0,0,'c100','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (648,'eng-GB',1,173,164,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezmatrix>\n  <name></name>\n  <columns number=\"2\">\n    <column num=\"0\"\n            id=\"address_type\">Address type</column>\n    <column num=\"1\"\n            id=\"address_value\">Address value</column>\n  </columns>\n  <rows number=\"2\" />\n  <c>0</c>\n  <c>Mystreet 2</c>\n  <c>1</c>\n  <c>Mystreet 2</c>\n</ezmatrix>',0,0,0,0,'','ezmatrix');
INSERT INTO ezcontentobject_attribute VALUES (649,'eng-GB',1,173,165,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"my_company.\"\n         suffix=\"\"\n         basename=\"my_company\"\n         dirpath=\"var/intranet/storage/images/contact/companies/my_company/649-1-eng-GB\"\n         url=\"var/intranet/storage/images/contact/companies/my_company/649-1-eng-GB/my_company.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069770020\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (650,'eng-GB',1,173,166,'A small company we work with.',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (651,'eng-GB',1,173,167,'0',0,0,0,0,'0','ezselection');
INSERT INTO ezcontentobject_attribute VALUES (652,'eng-GB',1,173,168,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezmatrix>\n  <name></name>\n  <columns number=\"2\">\n    <column num=\"0\"\n            id=\"contact_type\">Contact type</column>\n    <column num=\"1\"\n            id=\"contact_value\">Contact value</column>\n  </columns>\n  <rows number=\"2\" />\n  <c>0</c>\n  <c>555 2345</c>\n  <c>1</c>\n  <c>555 2344</c>\n</ezmatrix>',0,0,0,0,'','ezmatrix');
INSERT INTO ezcontentobject_attribute VALUES (634,'eng-GB',1,171,170,'John',0,0,0,0,'john','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (635,'eng-GB',1,171,169,'Doe',0,0,0,0,'doe','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (636,'eng-GB',1,171,171,'Developer',0,0,0,0,'developer','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (637,'eng-GB',1,171,172,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezmatrix>\n  <name></name>\n  <columns number=\"2\">\n    <column num=\"0\"\n            id=\"contact_type\">Contact type</column>\n    <column num=\"1\"\n            id=\"contact_value\">Contact value</column>\n  </columns>\n  <rows number=\"3\" />\n  <c>0</c>\n  <c>555 1234</c>\n  <c>2</c>\n  <c>doe@example.com</c>\n  <c>3</c>\n  <c>http://www.example.com</c>\n</ezmatrix>',0,0,0,0,'','ezmatrix');
INSERT INTO ezcontentobject_attribute VALUES (638,'eng-GB',1,171,178,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"john_doe.\"\n         suffix=\"\"\n         basename=\"john_doe\"\n         dirpath=\"var/intranet/storage/images/contact/persons/john_doe/638-1-eng-GB\"\n         url=\"var/intranet/storage/images/contact/persons/john_doe/638-1-eng-GB/john_doe.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069769896\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (639,'eng-GB',1,171,179,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>A nice guy.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (640,'eng-GB',1,172,170,'Per',0,0,0,0,'per','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (641,'eng-GB',1,172,169,'Son',0,0,0,0,'son','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (642,'eng-GB',1,172,171,'Administrator',0,0,0,0,'administrator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (643,'eng-GB',1,172,172,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezmatrix>\n  <name></name>\n  <columns number=\"2\">\n    <column num=\"0\"\n            id=\"contact_type\">Contact type</column>\n    <column num=\"1\"\n            id=\"contact_value\">Contact value</column>\n  </columns>\n  <rows number=\"2\" />\n  <c>0</c>\n  <c>555 1236</c>\n  <c>2</c>\n  <c>per.son@example.com</c>\n</ezmatrix>',0,0,0,0,'','ezmatrix');
INSERT INTO ezcontentobject_attribute VALUES (644,'eng-GB',1,172,178,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"per_son.\"\n         suffix=\"\"\n         basename=\"per_son\"\n         dirpath=\"var/intranet/storage/images/contact/persons/per_son__1/644-1-eng-GB\"\n         url=\"var/intranet/storage/images/contact/persons/per_son__1/644-1-eng-GB/per_son.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069769956\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (645,'eng-GB',1,172,179,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Per Son is a very active person.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (530,'eng-GB',16,136,182,'Copyright &copy; eZ systems as 1999-2004',0,0,0,0,'copyright &copy; ez systems as 1999-2004','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (463,'eng-GB',16,136,159,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"intranet.gif\"\n         suffix=\"gif\"\n         basename=\"intranet\"\n         dirpath=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB\"\n         url=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet.gif\"\n         original_filename=\"intranet.gif\"\n         mime_type=\"original\"\n         width=\"165\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069838485\">\n  <original attribute_id=\"463\"\n            attribute_version=\"15\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"intranet_reference.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB\"\n         url=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_reference.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069838488\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"intranet_medium.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB\"\n         url=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_medium.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"1069838488\"\n         is_valid=\"1\" />\n  <alias name=\"logo\"\n         filename=\"intranet_logo.gif\"\n         suffix=\"gif\"\n         dirpath=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB\"\n         url=\"var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_logo.gif\"\n         mime_type=\"image/gif\"\n         width=\"165\"\n         height=\"48\"\n         alias_key=\"-447475028\"\n         timestamp=\"1069843872\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (462,'eng-GB',16,136,158,'author=eZ systems package team\ncopyright=eZ systems as\ndescription=Content Management System\nkeywords=cms',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (323,'eng-GB',3,115,152,'Cache',0,0,0,0,'cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (324,'eng-GB',3,115,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"cache.png\"\n         suffix=\"png\"\n         basename=\"cache\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB/cache.png\"\n         original_filename=\"gnome-ccperiph.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"\">\n  <original attribute_id=\"324\"\n            attribute_version=\"2\"\n            attribute_language=\"eng-GB\" />\n  <alias name=\"reference\"\n         filename=\"cache_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB/cache_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"cache_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB/cache_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"cache_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB/cache_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (325,'eng-GB',3,115,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (326,'eng-GB',3,115,155,'setup/cache',0,0,0,0,'setup/cache','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (102,'eng-GB',8,43,152,'Classes',0,0,0,0,'classes','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (103,'eng-GB',8,43,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"classes.png\"\n         suffix=\"png\"\n         basename=\"classes\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB/classes.png\"\n         original_filename=\"classes.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069162834\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"classes_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB/classes_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069162835\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"classes_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB/classes_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"1069162835\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"classes_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB/classes_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"1069162901\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (104,'eng-GB',8,43,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (105,'eng-GB',8,43,155,'class/grouplist',0,0,0,0,'class/grouplist','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (327,'eng-GB',2,116,152,'URL translator',0,0,0,0,'url translator','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (328,'eng-GB',2,116,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"url_translator.png\"\n         suffix=\"png\"\n         basename=\"url_translator\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator.png\"\n         original_filename=\"url_translator.png\"\n         mime_type=\"original\"\n         width=\"48\"\n         height=\"48\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069162886\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"url_translator_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator_reference.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1689502181\"\n         timestamp=\"1069162886\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"url_translator_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator_medium.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"1446888826\"\n         timestamp=\"1069162886\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"url_translator_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB\"\n         url=\"var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator_large.png\"\n         mime_type=\"image/png\"\n         width=\"48\"\n         height=\"48\"\n         alias_key=\"-1095359119\"\n         timestamp=\"1069162901\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (329,'eng-GB',2,116,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (330,'eng-GB',2,116,155,'content/urltranslator/',0,0,0,0,'content/urltranslator/','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (1,'eng-GB',2,1,4,'Intranet',0,0,0,0,'intranet','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (2,'eng-GB',2,1,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Welcome to our intranet</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (631,'eng-GB',1,170,140,'Vacation routines',0,0,0,0,'vacation routines','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (632,'eng-GB',1,170,141,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\">\n  <paragraph>Vestibulum viverra tristique velit. Vivamus vitae quam. Mauris nibh. Phasellus nec metus. Integer tristique magna eu sem. Praesent rutrum ullamcorper ligula. Fusce et est. Integer at orci. Aliquam lectus ligula, commodo a, rhoncus et, semper eget, magna. Sed vel augue. Pellentesque at est ac massa gravida vehicula. Suspendisse potenti. Aenean ut diam. Nulla purus quam, sodales id, adipiscing eu, dignissim quis, libero. In eu erat.</paragraph>\n  <paragraph>Vestibulum viverra tristique velit. Vivamus vitae quam. Mauris nibh. Phasellus nec metus. Integer tristique magna eu sem. Praesent rutrum ullamcorper ligula. Fusce et est. Integer at orci. Aliquam lectus ligula, commodo a, rhoncus et, semper eget, magna. Sed vel augue. Pellentesque at est ac massa gravida vehicula. Suspendisse potenti. Aenean ut diam. Nulla purus quam, sodales id, adipiscing eu, dignissim quis, libero. In eu erat.</paragraph>\n</section>',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (633,'eng-GB',1,170,142,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"\"\n         filename=\"vacation_routines.\"\n         suffix=\"\"\n         basename=\"vacation_routines\"\n         dirpath=\"var/intranet/storage/images/information/vacation_routines/633-1-eng-GB\"\n         url=\"var/intranet/storage/images/information/vacation_routines/633-1-eng-GB/vacation_routines.\"\n         original_filename=\"\"\n         mime_type=\"\"\n         width=\"\"\n         height=\"\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1069769679\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (616,'eng-GB',1,165,151,'jkhjkh',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (615,'eng-GB',1,165,150,'kjhjkh',0,0,0,0,'kjhjkh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (614,'eng-GB',1,165,149,'jkhkjh',0,0,0,0,'jkhkjh','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (617,'eng-GB',1,166,149,'kljjkl',0,0,0,0,'kljjkl','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (618,'eng-GB',1,166,150,'lkjlkj',0,0,0,0,'lkjlkj','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (619,'eng-GB',1,166,151,'lkjlkj',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (668,'eng-GB',1,177,6,'Anonymous Users',0,0,0,0,'anonymous users','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (669,'eng-GB',1,177,7,'User group for the anonymous user',0,0,0,0,'user group for the anonymous user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (19,'eng-GB',2,10,8,'Anonymous',0,0,0,0,'anonymous','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (20,'eng-GB',2,10,9,'User',0,0,0,0,'user','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (21,'eng-GB',2,10,12,'',0,0,0,0,'','ezuser');
INSERT INTO ezcontentobject_attribute VALUES (670,'eng-GB',1,178,4,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (671,'eng-GB',1,178,119,'<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />',1045487555,0,0,0,'','ezxmltext');
INSERT INTO ezcontentobject_attribute VALUES (672,'eng-GB',1,179,183,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (673,'eng-GB',1,179,184,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (674,'eng-GB',1,179,185,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (675,'eng-GB',1,179,186,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (676,'eng-GB',1,179,187,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (677,'eng-GB',1,179,188,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (678,'eng-GB',1,179,189,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (679,'eng-GB',1,179,190,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (680,'eng-GB',1,179,191,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (681,'eng-GB',1,179,192,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (682,'eng-GB',1,179,193,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (683,'eng-GB',1,179,194,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (684,'eng-GB',1,179,195,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (685,'eng-GB',1,180,152,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (686,'eng-GB',1,180,153,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ezimage serial_number=\"1\"\n         is_valid=\"1\"\n         filename=\"common_ini_settings1.png\"\n         suffix=\"png\"\n         basename=\"common_ini_settings1\"\n         dirpath=\"var/intranet/storage/images-versioned/686/1-eng-GB\"\n         url=\"var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1.png\"\n         original_filename=\"exec.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alternative_text=\"\"\n         alias_key=\"1293033771\"\n         timestamp=\"1076579512\">\n  <original attribute_id=\"\"\n            attribute_version=\"\"\n            attribute_language=\"\" />\n  <alias name=\"reference\"\n         filename=\"common_ini_settings1_reference.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images-versioned/686/1-eng-GB\"\n         url=\"var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1_reference.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"183954394\"\n         timestamp=\"1076579514\"\n         is_valid=\"1\" />\n  <alias name=\"medium\"\n         filename=\"common_ini_settings1_medium.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images-versioned/686/1-eng-GB\"\n         url=\"var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1_medium.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"472385770\"\n         timestamp=\"1076579514\"\n         is_valid=\"1\" />\n  <alias name=\"large\"\n         filename=\"common_ini_settings1_large.png\"\n         suffix=\"png\"\n         dirpath=\"var/intranet/storage/images-versioned/686/1-eng-GB\"\n         url=\"var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1_large.png\"\n         mime_type=\"image/png\"\n         width=\"32\"\n         height=\"32\"\n         alias_key=\"-958410206\"\n         timestamp=\"1076579525\"\n         is_valid=\"1\" />\n</ezimage>',0,0,0,0,'','ezimage');
INSERT INTO ezcontentobject_attribute VALUES (687,'eng-GB',1,180,154,'',0,0,0,0,'','eztext');
INSERT INTO ezcontentobject_attribute VALUES (688,'eng-GB',1,180,155,'content/edit/179',0,0,0,0,'content/edit/179','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (672,'eng-GB',2,179,183,'Common ini settings',0,0,0,0,'common ini settings','ezstring');
INSERT INTO ezcontentobject_attribute VALUES (673,'eng-GB',2,179,184,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (674,'eng-GB',2,179,185,'/content/view/full/2/',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (675,'eng-GB',2,179,186,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (676,'eng-GB',2,179,187,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (677,'eng-GB',2,179,188,'=',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (678,'eng-GB',2,179,189,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (679,'eng-GB',2,179,190,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (680,'eng-GB',2,179,191,'enabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (681,'eng-GB',2,179,192,'disabled',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (682,'eng-GB',2,179,193,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (683,'eng-GB',2,179,194,'',0,0,0,0,'','ezinisetting');
INSERT INTO ezcontentobject_attribute VALUES (684,'eng-GB',2,179,195,'',0,0,0,0,'','ezinisetting');

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
INSERT INTO ezcontentobject_name VALUES (171,'John Doe',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (126,'New Article',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (49,'News',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (51,'New Setup link',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',8,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (53,'New Template look',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (143,'fp',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (57,'Contact',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (59,'Off topic',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (60,'Reports',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (60,'Reports',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (61,'Staff news',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (62,'Persons',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (63,'Companies',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (64,'Files',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (66,'Handbooks',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (67,'Documents',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (68,'Company routines',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (69,'Logos',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (64,'Files',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (1,'Intranet',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (127,'New Article',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (122,'New Image',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (172,'Per Son',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (173,'My Company',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (174,'New business cards',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (175,'Annual report',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (83,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (84,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',7,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (85,'New Folder',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (87,'New Company',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (88,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',6,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',5,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (91,'New Template look',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',4,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (113,'Routines',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (96,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (64,'Files',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (112,'Information',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (103,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (104,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (105,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (106,'New User',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (112,'Information',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',16,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (113,'Routines',1,'eng-GB','eng-GB');
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
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (129,'New Article',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',8,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (115,'Cache',3,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (43,'Classes',8,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (45,'Look and feel',9,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (116,'URL translator',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (133,'New Template look',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (134,'News',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (170,'Vacation routines',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (174,'New business cards',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (176,'New employee',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',13,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',14,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',15,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (165,'jkhkjh',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (166,'kljjkl',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',10,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (136,'Intranet',11,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (177,'Anonymous Users',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (10,'Anonymous User',2,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (178,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (179,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (180,'Common ini settings',1,'eng-GB','eng-GB');
INSERT INTO ezcontentobject_name VALUES (179,'Common ini settings',2,'eng-GB','eng-GB');

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


INSERT INTO ezcontentobject_tree VALUES (1,1,0,1,1,0,'/1/',1,1,0,NULL,1,1076579545);
INSERT INTO ezcontentobject_tree VALUES (2,1,1,2,1,1,'/1/2/',9,1,0,'',2,1069774043);
INSERT INTO ezcontentobject_tree VALUES (5,1,4,1,0,1,'/1/5/',1,1,0,'users',5,1072181019);
INSERT INTO ezcontentobject_tree VALUES (11,155,10,2,1,3,'/1/5/155/11/',9,1,0,'users/anonymous_users/anonymous_user',11,1072181019);
INSERT INTO ezcontentobject_tree VALUES (12,5,11,1,1,2,'/1/5/12/',1,1,0,'users/guest_accounts',12,1033920746);
INSERT INTO ezcontentobject_tree VALUES (13,5,12,1,1,2,'/1/5/13/',1,1,0,'users/administrator_users',13,1033920830);
INSERT INTO ezcontentobject_tree VALUES (14,5,13,1,1,2,'/1/5/14/',1,1,0,'users/editors',14,1033920794);
INSERT INTO ezcontentobject_tree VALUES (15,13,14,1,1,3,'/1/5/13/15/',1,1,0,'users/administrator_users/administrator_user',15,1033920830);
INSERT INTO ezcontentobject_tree VALUES (43,1,41,1,1,1,'/1/43/',9,1,0,'media',43,1060695457);
INSERT INTO ezcontentobject_tree VALUES (44,1,42,1,1,1,'/1/44/',9,1,0,'setup',44,1076579545);
INSERT INTO ezcontentobject_tree VALUES (45,46,43,8,1,3,'/1/44/46/45/',9,1,0,'setup/setup_links/classes',45,1069162841);
INSERT INTO ezcontentobject_tree VALUES (46,44,44,1,1,2,'/1/44/46/',9,1,0,'setup/setup_links',46,1076579513);
INSERT INTO ezcontentobject_tree VALUES (47,46,45,10,1,3,'/1/44/46/47/',9,1,0,'setup/setup_links/look_and_feel',47,1069164888);
INSERT INTO ezcontentobject_tree VALUES (48,44,46,2,1,2,'/1/44/48/',9,1,0,'setup/look_and_feel',48,1069841972);
INSERT INTO ezcontentobject_tree VALUES (50,2,49,1,1,2,'/1/2/50/',9,1,0,'news',50,1069774043);
INSERT INTO ezcontentobject_tree VALUES (55,2,57,1,1,2,'/1/2/55/',9,1,0,'contact',55,1069770749);
INSERT INTO ezcontentobject_tree VALUES (57,50,59,1,1,3,'/1/2/50/57/',9,1,0,'news/off_topic',57,1069774003);
INSERT INTO ezcontentobject_tree VALUES (58,50,60,2,1,3,'/1/2/50/58/',9,1,0,'news/reports',58,1069774003);
INSERT INTO ezcontentobject_tree VALUES (59,50,61,1,1,3,'/1/2/50/59/',9,1,0,'news/staff_news',59,1069774043);
INSERT INTO ezcontentobject_tree VALUES (60,55,62,1,1,3,'/1/2/55/60/',9,1,0,'contact/persons',60,1069770002);
INSERT INTO ezcontentobject_tree VALUES (61,55,63,1,1,3,'/1/2/55/61/',9,1,0,'contact/companies',61,1069770749);
INSERT INTO ezcontentobject_tree VALUES (62,2,64,3,1,2,'/1/2/62/',8,1,0,'files',62,1066898100);
INSERT INTO ezcontentobject_tree VALUES (64,62,66,1,1,3,'/1/2/62/64/',9,1,2,'files/handbooks',64,1066729356);
INSERT INTO ezcontentobject_tree VALUES (65,62,67,1,1,3,'/1/2/62/65/',9,1,3,'files/documents',65,1066729371);
INSERT INTO ezcontentobject_tree VALUES (66,62,68,1,1,3,'/1/2/62/66/',9,1,4,'files/company_routines',66,1066729385);
INSERT INTO ezcontentobject_tree VALUES (67,62,69,1,1,3,'/1/2/62/67/',9,1,5,'files/logos',67,1066729400);
INSERT INTO ezcontentobject_tree VALUES (93,2,112,2,1,2,'/1/2/93/',9,1,0,'information',93,1069769718);
INSERT INTO ezcontentobject_tree VALUES (94,93,113,1,1,3,'/1/2/93/94/',9,1,0,'information/routines',94,1066986541);
INSERT INTO ezcontentobject_tree VALUES (95,46,115,3,1,3,'/1/44/46/95/',9,1,0,'setup/setup_links/cache',95,1069162746);
INSERT INTO ezcontentobject_tree VALUES (96,46,116,2,1,3,'/1/44/46/96/',9,1,0,'setup/setup_links/url_translator',96,1069162892);
INSERT INTO ezcontentobject_tree VALUES (107,48,136,16,1,3,'/1/44/48/107/',9,1,0,'setup/look_and_feel/intranet',107,1069841972);
INSERT INTO ezcontentobject_tree VALUES (141,59,163,1,1,4,'/1/2/50/59/141/',1,1,0,'news/staff_news/lkj',141,1069423957);
INSERT INTO ezcontentobject_tree VALUES (143,141,165,1,1,5,'/1/2/50/59/141/143/',1,1,0,'jkhkjh',143,1069423490);
INSERT INTO ezcontentobject_tree VALUES (144,141,166,1,1,5,'/1/2/50/59/141/144/',1,1,0,'kljjkl',144,1069423957);
INSERT INTO ezcontentobject_tree VALUES (147,93,170,1,1,3,'/1/2/93/147/',9,1,0,'information/vacation_routines',147,1069769718);
INSERT INTO ezcontentobject_tree VALUES (148,60,171,1,1,4,'/1/2/55/60/148/',1,1,0,'contact/persons/john_doe',148,1069769945);
INSERT INTO ezcontentobject_tree VALUES (149,60,172,1,1,4,'/1/2/55/60/149/',1,1,0,'contact/persons/per_son',149,1069770002);
INSERT INTO ezcontentobject_tree VALUES (150,61,173,1,1,4,'/1/2/55/61/150/',1,1,0,'contact/companies/my_company',150,1069770749);
INSERT INTO ezcontentobject_tree VALUES (151,58,174,2,1,4,'/1/2/50/58/151/',1,1,0,'news/reports/new_business_cards',151,1069774003);
INSERT INTO ezcontentobject_tree VALUES (152,57,174,2,1,4,'/1/2/50/57/152/',1,1,0,'news/off_topic/new_business_cards',151,1069774003);
INSERT INTO ezcontentobject_tree VALUES (153,58,175,1,1,4,'/1/2/50/58/153/',1,1,0,'news/reports/annual_report',153,1069773968);
INSERT INTO ezcontentobject_tree VALUES (154,59,176,1,1,4,'/1/2/50/59/154/',1,1,0,'news/staff_news/new_employee',154,1069774043);
INSERT INTO ezcontentobject_tree VALUES (155,5,177,1,1,2,'/1/5/155/',9,1,0,'users/anonymous_users',155,1072181019);
INSERT INTO ezcontentobject_tree VALUES (156,44,178,1,1,2,'/1/44/156/',9,1,0,'setup/common_ini_settings',156,1076579545);
INSERT INTO ezcontentobject_tree VALUES (157,156,179,2,1,3,'/1/44/156/157/',9,1,0,'setup/common_ini_settings/common_ini_settings',157,1076579545);
INSERT INTO ezcontentobject_tree VALUES (158,46,180,1,1,3,'/1/44/46/158/',9,1,0,'setup/setup_links/common_ini_settings',158,1076579513);

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
INSERT INTO ezcontentobject_version VALUES (442,14,14,1,1033920808,1033920830,1,0,0);
INSERT INTO ezcontentobject_version VALUES (472,41,14,1,1060695450,1060695457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (473,42,14,1,1066383039,1066383068,1,0,0);
INSERT INTO ezcontentobject_version VALUES (475,44,14,1,1066384403,1066384457,1,0,0);
INSERT INTO ezcontentobject_version VALUES (482,46,14,2,1066389882,1066389902,1,0,0);
INSERT INTO ezcontentobject_version VALUES (490,49,14,1,1066398007,1066398020,1,0,0);
INSERT INTO ezcontentobject_version VALUES (748,136,14,16,1069841925,1069841972,1,0,0);
INSERT INTO ezcontentobject_version VALUES (519,57,14,1,1066729088,1066729137,1,0,0);
INSERT INTO ezcontentobject_version VALUES (521,59,14,1,1066729202,1066729210,1,0,0);
INSERT INTO ezcontentobject_version VALUES (523,60,14,2,1066729234,1066729241,1,0,0);
INSERT INTO ezcontentobject_version VALUES (524,61,14,1,1066729249,1066729258,1,0,0);
INSERT INTO ezcontentobject_version VALUES (525,62,14,1,1066729275,1066729284,1,0,0);
INSERT INTO ezcontentobject_version VALUES (526,63,14,1,1066729291,1066729298,1,0,0);
INSERT INTO ezcontentobject_version VALUES (529,66,14,1,1066729349,1066729356,1,0,0);
INSERT INTO ezcontentobject_version VALUES (530,67,14,1,1066729363,1066729371,1,0,0);
INSERT INTO ezcontentobject_version VALUES (531,68,14,1,1066729377,1066729385,1,0,0);
INSERT INTO ezcontentobject_version VALUES (532,69,14,1,1066729392,1066729400,1,0,0);
INSERT INTO ezcontentobject_version VALUES (708,1,14,2,1069416307,1069416322,1,1,0);
INSERT INTO ezcontentobject_version VALUES (739,172,14,1,1069769954,1069770002,1,0,0);
INSERT INTO ezcontentobject_version VALUES (742,175,14,1,1069773933,1069773968,1,0,0);
INSERT INTO ezcontentobject_version VALUES (738,171,14,1,1069769892,1069769945,1,0,0);
INSERT INTO ezcontentobject_version VALUES (683,45,14,10,1069164834,1069164888,1,0,0);
INSERT INTO ezcontentobject_version VALUES (744,176,14,1,1069774018,1069774043,1,0,0);
INSERT INTO ezcontentobject_version VALUES (743,174,14,2,1069773990,1069774003,1,0,0);
INSERT INTO ezcontentobject_version VALUES (737,170,14,1,1069769677,1069769717,1,0,0);
INSERT INTO ezcontentobject_version VALUES (581,64,14,3,1066898069,1066898100,1,0,0);
INSERT INTO ezcontentobject_version VALUES (735,112,14,2,1069769622,1069769638,1,0,0);
INSERT INTO ezcontentobject_version VALUES (606,113,14,1,1066986461,1066986541,1,0,0);
INSERT INTO ezcontentobject_version VALUES (672,115,14,3,1069162736,1069162746,1,0,0);
INSERT INTO ezcontentobject_version VALUES (673,43,14,8,1069162754,1069162840,1,0,0);
INSERT INTO ezcontentobject_version VALUES (675,116,14,2,1069162867,1069162891,1,0,0);
INSERT INTO ezcontentobject_version VALUES (740,173,14,1,1069770018,1069770749,1,0,0);
INSERT INTO ezcontentobject_version VALUES (727,165,14,1,1069423480,1069423490,1,0,0);
INSERT INTO ezcontentobject_version VALUES (728,166,14,1,1069423948,1069423957,1,0,0);
INSERT INTO ezcontentobject_version VALUES (749,177,14,1,1072180990,1072181000,1,0,0);
INSERT INTO ezcontentobject_version VALUES (750,10,14,2,1072181006,1072181019,1,0,0);
INSERT INTO ezcontentobject_version VALUES (751,178,14,1,1076579372,1076579382,1,0,0);
INSERT INTO ezcontentobject_version VALUES (752,179,14,1,1076579402,1076579435,3,0,0);
INSERT INTO ezcontentobject_version VALUES (753,180,14,1,1076579480,1076579512,1,0,0);
INSERT INTO ezcontentobject_version VALUES (754,179,14,2,1076579531,1076579545,1,0,0);

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


INSERT INTO ezenumvalue VALUES (2,136,0,'Ok','3',2);
INSERT INTO ezenumvalue VALUES (1,136,0,'Poor','2',1);
INSERT INTO ezenumvalue VALUES (3,136,0,'Good','5',3);

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


INSERT INTO ezimagefile VALUES (50,661,'var/intranet/storage/images/news/reports/annual_report/661-1-eng-GB/annual_report.');
INSERT INTO ezimagefile VALUES (51,656,'var/intranet/storage/images/news/off_topic/new_business_cards/656-2-eng-GB/new_business_cards.');
INSERT INTO ezimagefile VALUES (19,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-9-eng-GB/intranet.gif');
INSERT INTO ezimagefile VALUES (63,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-15-eng-GB/intranet_reference.gif');
INSERT INTO ezimagefile VALUES (62,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-15-eng-GB/intranet.gif');
INSERT INTO ezimagefile VALUES (56,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-13-eng-GB/intranet_medium.gif');
INSERT INTO ezimagefile VALUES (54,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-13-eng-GB/intranet.gif');
INSERT INTO ezimagefile VALUES (55,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-13-eng-GB/intranet_reference.gif');
INSERT INTO ezimagefile VALUES (57,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-14-eng-GB/intranet.gif');
INSERT INTO ezimagefile VALUES (58,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-14-eng-GB/intranet_reference.gif');
INSERT INTO ezimagefile VALUES (59,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-14-eng-GB/intranet_medium.gif');
INSERT INTO ezimagefile VALUES (60,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-14-eng-GB/intranet_logo.gif');
INSERT INTO ezimagefile VALUES (20,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-9-eng-GB/intranet_reference.gif');
INSERT INTO ezimagefile VALUES (21,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-9-eng-GB/intranet_medium.gif');
INSERT INTO ezimagefile VALUES (53,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-11-eng-GB/intranet_logo.gif');
INSERT INTO ezimagefile VALUES (52,666,'var/intranet/storage/images/news/staff_news/new_employee/666-1-eng-GB/new_employee.');
INSERT INTO ezimagefile VALUES (45,633,'var/intranet/storage/images/information/vacation_routines/633-1-eng-GB/vacation_routines.');
INSERT INTO ezimagefile VALUES (46,638,'var/intranet/storage/images/contact/persons/john_doe/638-1-eng-GB/john_doe.');
INSERT INTO ezimagefile VALUES (47,644,'var/intranet/storage/images/contact/persons/per_son__1/644-1-eng-GB/per_son.');
INSERT INTO ezimagefile VALUES (64,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-15-eng-GB/intranet_medium.gif');
INSERT INTO ezimagefile VALUES (65,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-15-eng-GB/intranet_logo.gif');
INSERT INTO ezimagefile VALUES (48,649,'var/intranet/storage/images/contact/companies/my_company/649-1-eng-GB/my_company.');
INSERT INTO ezimagefile VALUES (49,656,'var/intranet/storage/images/news/off_topic/new_business_cards/656-1-eng-GB/new_business_cards.');
INSERT INTO ezimagefile VALUES (36,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-9-eng-GB/intranet_logo.gif');
INSERT INTO ezimagefile VALUES (38,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-10-eng-GB/intranet.gif');
INSERT INTO ezimagefile VALUES (39,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-10-eng-GB/intranet_reference.gif');
INSERT INTO ezimagefile VALUES (40,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-10-eng-GB/intranet_medium.gif');
INSERT INTO ezimagefile VALUES (41,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-10-eng-GB/intranet_logo.gif');
INSERT INTO ezimagefile VALUES (42,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-11-eng-GB/intranet.gif');
INSERT INTO ezimagefile VALUES (43,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-11-eng-GB/intranet_reference.gif');
INSERT INTO ezimagefile VALUES (44,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-11-eng-GB/intranet_medium.gif');
INSERT INTO ezimagefile VALUES (66,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet.gif');
INSERT INTO ezimagefile VALUES (67,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_reference.gif');
INSERT INTO ezimagefile VALUES (68,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_medium.gif');
INSERT INTO ezimagefile VALUES (69,463,'var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_logo.gif');
INSERT INTO ezimagefile VALUES (70,109,'var/storage/original/image/phpvzmRGW.png');
INSERT INTO ezimagefile VALUES (71,109,'var/storage/original/image/phppIJtoa.jpg');
INSERT INTO ezimagefile VALUES (72,109,'var/storage/original/image/phpAhcEu9.png');
INSERT INTO ezimagefile VALUES (73,103,'var/storage/original/image/phpWJgae7.png');
INSERT INTO ezimagefile VALUES (74,109,'var/storage/original/image/phpbVfzkm.png');
INSERT INTO ezimagefile VALUES (75,103,'var/storage/original/image/php7ZhvcB.png');
INSERT INTO ezimagefile VALUES (76,103,'var/storage/original/image/phpXz5esv.jpg');
INSERT INTO ezimagefile VALUES (77,686,'var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1.png');
INSERT INTO ezimagefile VALUES (78,686,'var/intranet/storage/images/setup/setup_links/common_ini_settings/686-1-eng-GB/common_ini_settings.png');
INSERT INTO ezimagefile VALUES (79,686,'var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1_reference.png');
INSERT INTO ezimagefile VALUES (80,686,'var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1_medium.png');
INSERT INTO ezimagefile VALUES (81,686,'var/intranet/storage/images-versioned/686/1-eng-GB/common_ini_settings1_large.png');

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
INSERT INTO eznode_assignment VALUES (147,210,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (146,209,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (148,9,1,2,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (150,11,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (151,12,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (152,13,1,5,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (153,14,1,13,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (182,41,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (183,42,1,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (185,44,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (193,46,2,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (483,136,16,48,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (201,49,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (476,174,2,57,1,1,0,0,0);
INSERT INTO eznode_assignment VALUES (229,57,1,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (231,59,1,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (233,60,2,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (234,61,1,50,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (235,62,1,55,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (236,63,1,55,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (239,66,1,62,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (240,67,1,62,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (241,68,1,62,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (242,69,1,62,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (467,171,1,60,1,1,1,0,1);
INSERT INTO eznode_assignment VALUES (386,45,10,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (470,173,1,61,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (471,173,1,61,1,1,1,0,1);
INSERT INTO eznode_assignment VALUES (466,171,1,60,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (463,112,2,2,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (286,64,3,2,8,1,1,0,0);
INSERT INTO eznode_assignment VALUES (475,175,1,58,1,1,1,0,1);
INSERT INTO eznode_assignment VALUES (417,1,2,1,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (477,174,2,58,1,1,1,0,1);
INSERT INTO eznode_assignment VALUES (465,170,1,93,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (474,175,1,58,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (479,176,1,59,1,1,1,0,1);
INSERT INTO eznode_assignment VALUES (478,176,1,59,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (308,113,1,93,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (375,115,3,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (376,43,8,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (378,116,2,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (469,172,1,60,1,1,1,0,1);
INSERT INTO eznode_assignment VALUES (468,172,1,60,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (452,165,1,141,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (453,166,1,141,1,1,1,0,0);
INSERT INTO eznode_assignment VALUES (484,177,1,5,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (486,10,2,155,9,1,1,5,0);
INSERT INTO eznode_assignment VALUES (487,178,1,44,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (488,179,1,156,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (489,180,1,46,9,1,1,0,0);
INSERT INTO eznode_assignment VALUES (490,179,2,156,9,1,1,0,0);

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


INSERT INTO eznotificationevent VALUES (1,0,'ezpublish',178,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (2,0,'ezpublish',179,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (3,0,'ezpublish',180,1,0,0,'','','','');
INSERT INTO eznotificationevent VALUES (4,0,'ezpublish',179,2,0,0,'','','','');

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
INSERT INTO ezpolicy VALUES (370,24,'create','content','');
INSERT INTO ezpolicy VALUES (371,24,'create','content','');
INSERT INTO ezpolicy VALUES (372,24,'create','content','');
INSERT INTO ezpolicy VALUES (341,8,'read','content','*');
INSERT INTO ezpolicy VALUES (369,24,'read','content','*');
INSERT INTO ezpolicy VALUES (339,1,'login','user','*');
INSERT INTO ezpolicy VALUES (373,24,'create','content','');
INSERT INTO ezpolicy VALUES (374,24,'edit','content','');

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


INSERT INTO ezpolicy_limitation VALUES (289,371,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (290,371,'Section',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (288,370,'Section',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (287,370,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (291,372,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (292,372,'Section',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (293,373,'Class',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (294,373,'Section',0,'create','content');
INSERT INTO ezpolicy_limitation VALUES (295,374,'Class',0,'edit','content');

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


INSERT INTO ezpolicy_limitation_value VALUES (555,291,'12');
INSERT INTO ezpolicy_limitation_value VALUES (554,291,'1');
INSERT INTO ezpolicy_limitation_value VALUES (551,289,'16');
INSERT INTO ezpolicy_limitation_value VALUES (550,288,'4');
INSERT INTO ezpolicy_limitation_value VALUES (548,287,'13');
INSERT INTO ezpolicy_limitation_value VALUES (549,287,'2');
INSERT INTO ezpolicy_limitation_value VALUES (553,290,'5');
INSERT INTO ezpolicy_limitation_value VALUES (552,289,'17');
INSERT INTO ezpolicy_limitation_value VALUES (547,287,'1');
INSERT INTO ezpolicy_limitation_value VALUES (556,292,'6');
INSERT INTO ezpolicy_limitation_value VALUES (557,293,'6');
INSERT INTO ezpolicy_limitation_value VALUES (558,293,'7');
INSERT INTO ezpolicy_limitation_value VALUES (559,294,'7');
INSERT INTO ezpolicy_limitation_value VALUES (560,295,'1');
INSERT INTO ezpolicy_limitation_value VALUES (561,295,'2');
INSERT INTO ezpolicy_limitation_value VALUES (562,295,'6');
INSERT INTO ezpolicy_limitation_value VALUES (563,295,'7');
INSERT INTO ezpolicy_limitation_value VALUES (564,295,'12');
INSERT INTO ezpolicy_limitation_value VALUES (565,295,'13');
INSERT INTO ezpolicy_limitation_value VALUES (566,295,'16');
INSERT INTO ezpolicy_limitation_value VALUES (567,295,'17');
INSERT INTO ezpolicy_limitation_value VALUES (568,295,'18');

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
INSERT INTO ezrole VALUES (24,0,'Intranet',NULL);

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


INSERT INTO ezsearch_object_word_link VALUES (8833,49,1402,0,0,0,1402,1,1066398020,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8834,49,1402,0,1,1402,0,1,1066398020,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8835,59,1403,0,0,0,1404,1,1066729211,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8836,59,1404,0,1,1403,1403,1,1066729211,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8837,59,1403,0,2,1404,1404,1,1066729211,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (8838,59,1404,0,3,1403,0,1,1066729211,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9548,174,1563,0,353,1544,0,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9547,174,1544,0,352,1562,1563,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9546,174,1562,0,351,1561,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9545,174,1561,0,350,1507,1562,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9544,174,1507,0,349,1530,1561,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9543,174,1530,0,348,1560,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9542,174,1560,0,347,1559,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9541,174,1559,0,346,1558,1560,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9540,174,1558,0,345,1557,1559,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9539,174,1557,0,344,1556,1558,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9538,174,1556,0,343,1555,1557,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9537,174,1555,0,342,1554,1556,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9536,174,1554,0,341,1553,1555,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9535,174,1553,0,340,1552,1554,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9534,174,1552,0,339,1551,1553,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9533,174,1551,0,338,1549,1552,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9532,174,1549,0,337,1550,1551,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9531,174,1550,0,336,1549,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9530,174,1549,0,335,1548,1550,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9529,174,1548,0,334,1547,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9528,174,1547,0,333,1546,1548,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9527,174,1546,0,332,1545,1547,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9526,174,1545,0,331,1544,1546,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9525,174,1544,0,330,1543,1545,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9524,174,1543,0,329,1542,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9523,174,1542,0,328,1507,1543,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9522,174,1507,0,327,1541,1542,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9521,174,1541,0,326,1532,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9520,174,1532,0,325,1529,1541,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9519,174,1529,0,324,1540,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9518,174,1540,0,323,1539,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9517,174,1539,0,322,1538,1540,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9516,174,1538,0,321,1537,1539,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9515,174,1537,0,320,1535,1538,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9514,174,1535,0,319,1536,1537,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9513,174,1536,0,318,1535,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9512,174,1535,0,317,1493,1536,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9511,174,1493,0,316,1534,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9510,174,1534,0,315,1533,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9509,174,1533,0,314,1532,1534,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9508,174,1532,0,313,1531,1533,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9507,174,1531,0,312,1530,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9506,174,1530,0,311,1529,1531,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9505,174,1529,0,310,1528,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9504,174,1528,0,309,1527,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9503,174,1527,0,308,1526,1528,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9502,174,1526,0,307,1525,1527,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9501,174,1525,0,306,1505,1526,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9500,174,1505,0,305,1524,1525,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9499,174,1524,0,304,1523,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9498,174,1523,0,303,1522,1524,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9497,174,1522,0,302,1521,1523,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9496,174,1521,0,301,1520,1522,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9495,174,1520,0,300,1519,1521,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9494,174,1519,0,299,1518,1520,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9493,174,1518,0,298,1517,1519,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9492,174,1517,0,297,1516,1518,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9491,174,1516,0,296,1515,1517,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9490,174,1515,0,295,1514,1516,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9489,174,1514,0,294,1513,1515,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9488,174,1513,0,293,1512,1514,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9487,174,1512,0,292,1505,1513,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9486,174,1505,0,291,1511,1512,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9485,174,1511,0,290,1510,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9484,174,1510,0,289,1509,1511,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9483,174,1509,0,288,1508,1510,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9482,174,1508,0,287,1507,1509,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9481,174,1507,0,286,1506,1508,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9480,174,1506,0,285,1505,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9479,174,1505,0,284,1504,1506,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9478,174,1504,0,283,1503,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9477,174,1503,0,282,1502,1504,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9476,174,1502,0,281,1501,1503,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9475,174,1501,0,280,1500,1502,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9474,174,1500,0,279,1499,1501,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9473,174,1499,0,278,1498,1500,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9472,174,1498,0,277,1497,1499,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9471,174,1497,0,276,1496,1498,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9470,174,1496,0,275,1495,1497,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9469,174,1495,0,274,1494,1496,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9468,174,1494,0,273,1493,1495,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9467,174,1493,0,272,1492,1494,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9466,174,1492,0,271,1491,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9465,174,1491,0,270,1563,1492,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9464,174,1563,0,269,1544,1491,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9463,174,1544,0,268,1562,1563,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9462,174,1562,0,267,1561,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9461,174,1561,0,266,1507,1562,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9460,174,1507,0,265,1530,1561,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9459,174,1530,0,264,1560,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9458,174,1560,0,263,1559,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9457,174,1559,0,262,1558,1560,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9456,174,1558,0,261,1557,1559,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9455,174,1557,0,260,1556,1558,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9454,174,1556,0,259,1555,1557,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9453,174,1555,0,258,1554,1556,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9452,174,1554,0,257,1553,1555,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9451,174,1553,0,256,1552,1554,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9450,174,1552,0,255,1551,1553,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9449,174,1551,0,254,1549,1552,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9448,174,1549,0,253,1550,1551,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9447,174,1550,0,252,1549,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9446,174,1549,0,251,1548,1550,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9445,174,1548,0,250,1547,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9444,174,1547,0,249,1546,1548,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9443,174,1546,0,248,1545,1547,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9442,174,1545,0,247,1544,1546,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9441,174,1544,0,246,1543,1545,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9440,174,1543,0,245,1542,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9439,174,1542,0,244,1507,1543,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9438,174,1507,0,243,1541,1542,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9437,174,1541,0,242,1532,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9436,174,1532,0,241,1529,1541,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9435,174,1529,0,240,1540,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9434,174,1540,0,239,1539,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9433,174,1539,0,238,1538,1540,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9432,174,1538,0,237,1537,1539,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9431,174,1537,0,236,1535,1538,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9430,174,1535,0,235,1536,1537,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9429,174,1536,0,234,1535,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9428,174,1535,0,233,1493,1536,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9427,174,1493,0,232,1534,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9426,174,1534,0,231,1533,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9425,174,1533,0,230,1532,1534,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9424,174,1532,0,229,1531,1533,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9423,174,1531,0,228,1530,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9422,174,1530,0,227,1529,1531,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9421,174,1529,0,226,1528,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9420,174,1528,0,225,1527,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9419,174,1527,0,224,1526,1528,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9418,174,1526,0,223,1525,1527,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9417,174,1525,0,222,1505,1526,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9416,174,1505,0,221,1524,1525,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9415,174,1524,0,220,1523,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9414,174,1523,0,219,1522,1524,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9413,174,1522,0,218,1521,1523,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9412,174,1521,0,217,1520,1522,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9411,174,1520,0,216,1519,1521,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9410,174,1519,0,215,1518,1520,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9409,174,1518,0,214,1517,1519,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9408,174,1517,0,213,1516,1518,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9407,174,1516,0,212,1515,1517,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9406,174,1515,0,211,1514,1516,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9405,174,1514,0,210,1513,1515,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9404,174,1513,0,209,1512,1514,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9403,174,1512,0,208,1505,1513,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9402,174,1505,0,207,1511,1512,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9401,174,1511,0,206,1510,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9400,174,1510,0,205,1509,1511,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9399,174,1509,0,204,1508,1510,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9398,174,1508,0,203,1507,1509,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9397,174,1507,0,202,1506,1508,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9396,174,1506,0,201,1505,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9395,174,1505,0,200,1504,1506,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9394,174,1504,0,199,1503,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9393,174,1503,0,198,1502,1504,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9392,174,1502,0,197,1501,1503,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9391,174,1501,0,196,1500,1502,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9390,174,1500,0,195,1499,1501,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9389,174,1499,0,194,1498,1500,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9388,174,1498,0,193,1497,1499,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9387,174,1497,0,192,1496,1498,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9386,174,1496,0,191,1495,1497,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9385,174,1495,0,190,1494,1496,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9384,174,1494,0,189,1493,1495,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9383,174,1493,0,188,1492,1494,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9382,174,1492,0,187,1491,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9381,174,1491,0,186,1563,1492,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9380,174,1563,0,185,1544,1491,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9379,174,1544,0,184,1562,1563,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9378,174,1562,0,183,1561,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9377,174,1561,0,182,1507,1562,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9376,174,1507,0,181,1530,1561,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9375,174,1530,0,180,1560,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9374,174,1560,0,179,1559,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9373,174,1559,0,178,1558,1560,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9372,174,1558,0,177,1557,1559,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9371,174,1557,0,176,1556,1558,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9370,174,1556,0,175,1555,1557,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9369,174,1555,0,174,1554,1556,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9368,174,1554,0,173,1553,1555,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9367,174,1553,0,172,1552,1554,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9366,174,1552,0,171,1551,1553,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9365,174,1551,0,170,1549,1552,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9364,174,1549,0,169,1550,1551,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9363,174,1550,0,168,1549,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9362,174,1549,0,167,1548,1550,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9361,174,1548,0,166,1547,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9360,174,1547,0,165,1546,1548,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9359,174,1546,0,164,1545,1547,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9358,174,1545,0,163,1544,1546,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9357,174,1544,0,162,1543,1545,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9356,174,1543,0,161,1542,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9355,174,1542,0,160,1507,1543,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9354,174,1507,0,159,1541,1542,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9353,174,1541,0,158,1532,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9352,174,1532,0,157,1529,1541,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9351,174,1529,0,156,1540,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9350,174,1540,0,155,1539,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9349,174,1539,0,154,1538,1540,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9348,174,1538,0,153,1537,1539,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9347,174,1537,0,152,1535,1538,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9346,174,1535,0,151,1536,1537,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9345,174,1536,0,150,1535,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9344,174,1535,0,149,1493,1536,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9343,174,1493,0,148,1534,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9342,174,1534,0,147,1533,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9341,174,1533,0,146,1532,1534,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9340,174,1532,0,145,1531,1533,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9339,174,1531,0,144,1530,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9338,174,1530,0,143,1529,1531,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9337,174,1529,0,142,1528,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9336,174,1528,0,141,1527,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9335,174,1527,0,140,1526,1528,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9334,174,1526,0,139,1525,1527,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9333,174,1525,0,138,1505,1526,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9332,174,1505,0,137,1524,1525,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9331,174,1524,0,136,1523,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9330,174,1523,0,135,1522,1524,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9329,174,1522,0,134,1521,1523,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9328,174,1521,0,133,1520,1522,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9327,174,1520,0,132,1519,1521,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9326,174,1519,0,131,1518,1520,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9325,174,1518,0,130,1517,1519,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9324,174,1517,0,129,1516,1518,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9323,174,1516,0,128,1515,1517,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9322,174,1515,0,127,1514,1516,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9321,174,1514,0,126,1513,1515,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9320,174,1513,0,125,1512,1514,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9319,174,1512,0,124,1505,1513,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9318,174,1505,0,123,1511,1512,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9317,174,1511,0,122,1510,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9316,174,1510,0,121,1509,1511,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9315,174,1509,0,120,1508,1510,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9314,174,1508,0,119,1507,1509,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9313,174,1507,0,118,1506,1508,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9312,174,1506,0,117,1505,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9311,174,1505,0,116,1504,1506,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9310,174,1504,0,115,1503,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9309,174,1503,0,114,1502,1504,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9308,174,1502,0,113,1501,1503,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9307,174,1501,0,112,1500,1502,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9306,174,1500,0,111,1499,1501,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9305,174,1499,0,110,1498,1500,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9304,174,1498,0,109,1497,1499,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9303,174,1497,0,108,1496,1498,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9302,174,1496,0,107,1495,1497,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9301,174,1495,0,106,1494,1496,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9300,174,1494,0,105,1493,1495,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9299,174,1493,0,104,1492,1494,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9298,174,1492,0,103,1491,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9297,174,1491,0,102,1563,1492,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9296,174,1563,0,101,1544,1491,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9295,174,1544,0,100,1562,1563,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9294,174,1562,0,99,1561,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9293,174,1561,0,98,1507,1562,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9292,174,1507,0,97,1530,1561,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9291,174,1530,0,96,1560,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9290,174,1560,0,95,1559,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9289,174,1559,0,94,1558,1560,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9288,174,1558,0,93,1557,1559,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9287,174,1557,0,92,1556,1558,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9286,174,1556,0,91,1555,1557,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9285,174,1555,0,90,1554,1556,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9284,174,1554,0,89,1553,1555,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9283,174,1553,0,88,1552,1554,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9282,174,1552,0,87,1551,1553,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9281,174,1551,0,86,1549,1552,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9280,174,1549,0,85,1550,1551,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9279,174,1550,0,84,1549,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9278,174,1549,0,83,1548,1550,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9277,174,1548,0,82,1547,1549,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9276,174,1547,0,81,1546,1548,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9275,174,1546,0,80,1545,1547,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9274,174,1545,0,79,1544,1546,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9273,174,1544,0,78,1543,1545,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9272,174,1543,0,77,1542,1544,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9271,174,1542,0,76,1507,1543,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9270,174,1507,0,75,1541,1542,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9269,174,1541,0,74,1532,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9268,174,1532,0,73,1529,1541,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9267,174,1529,0,72,1540,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9266,174,1540,0,71,1539,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9265,174,1539,0,70,1538,1540,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9264,174,1538,0,69,1537,1539,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9263,174,1537,0,68,1535,1538,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9262,174,1535,0,67,1536,1537,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9261,174,1536,0,66,1535,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9260,174,1535,0,65,1493,1536,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9259,174,1493,0,64,1534,1535,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9258,174,1534,0,63,1533,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9257,174,1533,0,62,1532,1534,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9256,174,1532,0,61,1531,1533,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9255,174,1531,0,60,1530,1532,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9254,174,1530,0,59,1529,1531,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9253,174,1529,0,58,1528,1530,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9252,174,1528,0,57,1527,1529,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9251,174,1527,0,56,1526,1528,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9250,174,1526,0,55,1525,1527,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9249,174,1525,0,54,1505,1526,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9248,174,1505,0,53,1524,1525,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9247,174,1524,0,52,1523,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9246,174,1523,0,51,1522,1524,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9245,174,1522,0,50,1521,1523,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9244,174,1521,0,49,1520,1522,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9243,174,1520,0,48,1519,1521,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9242,174,1519,0,47,1518,1520,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9241,174,1518,0,46,1517,1519,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9240,174,1517,0,45,1516,1518,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9239,174,1516,0,44,1515,1517,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9238,174,1515,0,43,1514,1516,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9237,174,1514,0,42,1513,1515,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9236,174,1513,0,41,1512,1514,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9235,174,1512,0,40,1505,1513,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9234,174,1505,0,39,1511,1512,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9233,174,1511,0,38,1510,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9232,174,1510,0,37,1509,1511,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9231,174,1509,0,36,1508,1510,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9230,174,1508,0,35,1507,1509,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9229,174,1507,0,34,1506,1508,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9228,174,1506,0,33,1505,1507,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9227,174,1505,0,32,1504,1506,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9226,174,1504,0,31,1503,1505,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9225,174,1503,0,30,1502,1504,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9224,174,1502,0,29,1501,1503,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9223,174,1501,0,28,1500,1502,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9222,174,1500,0,27,1499,1501,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9221,174,1499,0,26,1498,1500,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9220,174,1498,0,25,1497,1499,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9219,174,1497,0,24,1496,1498,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9218,174,1496,0,23,1495,1497,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9217,174,1495,0,22,1494,1496,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9216,174,1494,0,21,1493,1495,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9215,174,1493,0,20,1492,1494,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9214,174,1492,0,19,1491,1493,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9213,174,1491,0,18,1490,1492,2,1069773925,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9212,174,1490,0,17,1489,1491,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9211,174,1489,0,16,1487,1490,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9210,174,1487,0,15,1486,1489,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9209,174,1486,0,14,1485,1487,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9208,174,1485,0,13,1488,1486,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9207,174,1488,0,12,1490,1485,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9206,174,1490,0,11,1489,1488,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9205,174,1489,0,10,1487,1490,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9204,174,1487,0,9,1486,1489,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9203,174,1486,0,8,1485,1487,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9202,174,1485,0,7,1488,1486,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9201,174,1488,0,6,1487,1485,2,1069773925,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9200,174,1487,0,5,1486,1488,2,1069773925,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9199,174,1486,0,4,1485,1487,2,1069773925,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9198,174,1485,0,3,1487,1486,2,1069773925,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9197,174,1487,0,2,1486,1485,2,1069773925,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9196,174,1486,0,1,1485,1487,2,1069773925,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9195,174,1485,0,0,0,1486,2,1069773925,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9193,60,1484,0,0,0,1484,1,1066729226,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9194,60,1484,0,1,1484,0,1,1066729226,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9549,175,1564,0,0,0,1565,2,1069773968,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9550,175,1565,0,1,1564,1564,2,1069773968,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9551,175,1564,0,2,1565,1565,2,1069773968,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9552,175,1565,0,3,1564,1566,2,1069773968,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9553,175,1566,0,4,1565,1567,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9554,175,1567,0,5,1566,1489,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9555,175,1489,0,6,1567,1568,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9556,175,1568,0,7,1489,1569,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9557,175,1569,0,8,1568,1564,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9558,175,1564,0,9,1569,1565,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9559,175,1565,0,10,1564,1566,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9560,175,1566,0,11,1565,1567,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9561,175,1567,0,12,1566,1489,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9562,175,1489,0,13,1567,1568,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9563,175,1568,0,14,1489,1569,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9564,175,1569,0,15,1568,1564,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9565,175,1564,0,16,1569,1565,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9566,175,1565,0,17,1564,1491,2,1069773968,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9567,175,1491,0,18,1565,1492,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9568,175,1492,0,19,1491,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9569,175,1493,0,20,1492,1494,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9570,175,1494,0,21,1493,1495,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9571,175,1495,0,22,1494,1496,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9572,175,1496,0,23,1495,1497,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9573,175,1497,0,24,1496,1498,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9574,175,1498,0,25,1497,1499,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9575,175,1499,0,26,1498,1500,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9576,175,1500,0,27,1499,1501,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9577,175,1501,0,28,1500,1502,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9578,175,1502,0,29,1501,1503,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9579,175,1503,0,30,1502,1504,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9580,175,1504,0,31,1503,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9581,175,1505,0,32,1504,1506,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9582,175,1506,0,33,1505,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9583,175,1507,0,34,1506,1508,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9584,175,1508,0,35,1507,1509,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9585,175,1509,0,36,1508,1510,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9586,175,1510,0,37,1509,1511,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9587,175,1511,0,38,1510,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9588,175,1505,0,39,1511,1512,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9589,175,1512,0,40,1505,1513,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9590,175,1513,0,41,1512,1514,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9591,175,1514,0,42,1513,1515,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9592,175,1515,0,43,1514,1516,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9593,175,1516,0,44,1515,1517,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9594,175,1517,0,45,1516,1518,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9595,175,1518,0,46,1517,1519,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9596,175,1519,0,47,1518,1520,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9597,175,1520,0,48,1519,1521,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9598,175,1521,0,49,1520,1522,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9599,175,1522,0,50,1521,1523,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9600,175,1523,0,51,1522,1524,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9601,175,1524,0,52,1523,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9602,175,1505,0,53,1524,1525,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9603,175,1525,0,54,1505,1526,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9604,175,1526,0,55,1525,1527,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9605,175,1527,0,56,1526,1528,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9606,175,1528,0,57,1527,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9607,175,1529,0,58,1528,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9608,175,1530,0,59,1529,1531,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9609,175,1531,0,60,1530,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9610,175,1532,0,61,1531,1533,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9611,175,1533,0,62,1532,1534,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9612,175,1534,0,63,1533,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9613,175,1493,0,64,1534,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9614,175,1535,0,65,1493,1536,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9615,175,1536,0,66,1535,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9616,175,1535,0,67,1536,1537,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9617,175,1537,0,68,1535,1538,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9618,175,1538,0,69,1537,1539,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9619,175,1539,0,70,1538,1540,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9620,175,1540,0,71,1539,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9621,175,1529,0,72,1540,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9622,175,1532,0,73,1529,1541,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9623,175,1541,0,74,1532,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9624,175,1507,0,75,1541,1542,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9625,175,1542,0,76,1507,1543,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9626,175,1543,0,77,1542,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9627,175,1544,0,78,1543,1545,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9628,175,1545,0,79,1544,1546,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9629,175,1546,0,80,1545,1547,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9630,175,1547,0,81,1546,1548,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9631,175,1548,0,82,1547,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9632,175,1549,0,83,1548,1550,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9633,175,1550,0,84,1549,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9634,175,1549,0,85,1550,1551,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9635,175,1551,0,86,1549,1552,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9636,175,1552,0,87,1551,1553,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9637,175,1553,0,88,1552,1554,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9638,175,1554,0,89,1553,1555,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9639,175,1555,0,90,1554,1556,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9640,175,1556,0,91,1555,1557,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9641,175,1557,0,92,1556,1558,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9642,175,1558,0,93,1557,1559,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9643,175,1559,0,94,1558,1560,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9644,175,1560,0,95,1559,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9645,175,1530,0,96,1560,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9646,175,1507,0,97,1530,1561,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9647,175,1561,0,98,1507,1562,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9648,175,1562,0,99,1561,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9649,175,1544,0,100,1562,1563,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9650,175,1563,0,101,1544,1491,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9651,175,1491,0,102,1563,1492,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9652,175,1492,0,103,1491,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9653,175,1493,0,104,1492,1494,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9654,175,1494,0,105,1493,1495,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9655,175,1495,0,106,1494,1496,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9656,175,1496,0,107,1495,1497,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9657,175,1497,0,108,1496,1498,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9658,175,1498,0,109,1497,1499,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9659,175,1499,0,110,1498,1500,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9660,175,1500,0,111,1499,1501,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9661,175,1501,0,112,1500,1502,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9662,175,1502,0,113,1501,1503,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9663,175,1503,0,114,1502,1504,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9664,175,1504,0,115,1503,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9665,175,1505,0,116,1504,1506,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9666,175,1506,0,117,1505,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9667,175,1507,0,118,1506,1508,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9668,175,1508,0,119,1507,1509,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9669,175,1509,0,120,1508,1510,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9670,175,1510,0,121,1509,1511,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9671,175,1511,0,122,1510,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9672,175,1505,0,123,1511,1512,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9673,175,1512,0,124,1505,1513,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9674,175,1513,0,125,1512,1514,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9675,175,1514,0,126,1513,1515,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9676,175,1515,0,127,1514,1516,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9677,175,1516,0,128,1515,1517,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9678,175,1517,0,129,1516,1518,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9679,175,1518,0,130,1517,1519,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9680,175,1519,0,131,1518,1520,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9681,175,1520,0,132,1519,1521,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9682,175,1521,0,133,1520,1522,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9683,175,1522,0,134,1521,1523,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9684,175,1523,0,135,1522,1524,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9685,175,1524,0,136,1523,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9686,175,1505,0,137,1524,1525,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9687,175,1525,0,138,1505,1526,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9688,175,1526,0,139,1525,1527,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9689,175,1527,0,140,1526,1528,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9690,175,1528,0,141,1527,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9691,175,1529,0,142,1528,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9692,175,1530,0,143,1529,1531,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9693,175,1531,0,144,1530,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9694,175,1532,0,145,1531,1533,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9695,175,1533,0,146,1532,1534,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9696,175,1534,0,147,1533,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9697,175,1493,0,148,1534,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9698,175,1535,0,149,1493,1536,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9699,175,1536,0,150,1535,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9700,175,1535,0,151,1536,1537,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9701,175,1537,0,152,1535,1538,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9702,175,1538,0,153,1537,1539,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9703,175,1539,0,154,1538,1540,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9704,175,1540,0,155,1539,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9705,175,1529,0,156,1540,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9706,175,1532,0,157,1529,1541,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9707,175,1541,0,158,1532,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9708,175,1507,0,159,1541,1542,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9709,175,1542,0,160,1507,1543,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9710,175,1543,0,161,1542,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9711,175,1544,0,162,1543,1545,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9712,175,1545,0,163,1544,1546,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9713,175,1546,0,164,1545,1547,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9714,175,1547,0,165,1546,1548,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9715,175,1548,0,166,1547,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9716,175,1549,0,167,1548,1550,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9717,175,1550,0,168,1549,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9718,175,1549,0,169,1550,1551,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9719,175,1551,0,170,1549,1552,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9720,175,1552,0,171,1551,1553,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9721,175,1553,0,172,1552,1554,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9722,175,1554,0,173,1553,1555,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9723,175,1555,0,174,1554,1556,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9724,175,1556,0,175,1555,1557,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9725,175,1557,0,176,1556,1558,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9726,175,1558,0,177,1557,1559,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9727,175,1559,0,178,1558,1560,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9728,175,1560,0,179,1559,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9729,175,1530,0,180,1560,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9730,175,1507,0,181,1530,1561,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9731,175,1561,0,182,1507,1562,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9732,175,1562,0,183,1561,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9733,175,1544,0,184,1562,1563,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9734,175,1563,0,185,1544,1491,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9735,175,1491,0,186,1563,1492,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9736,175,1492,0,187,1491,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9737,175,1493,0,188,1492,1494,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9738,175,1494,0,189,1493,1495,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9739,175,1495,0,190,1494,1496,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9740,175,1496,0,191,1495,1497,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9741,175,1497,0,192,1496,1498,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9742,175,1498,0,193,1497,1499,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9743,175,1499,0,194,1498,1500,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9744,175,1500,0,195,1499,1501,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9745,175,1501,0,196,1500,1502,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9746,175,1502,0,197,1501,1503,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9747,175,1503,0,198,1502,1504,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9748,175,1504,0,199,1503,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9749,175,1505,0,200,1504,1506,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9750,175,1506,0,201,1505,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9751,175,1507,0,202,1506,1508,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9752,175,1508,0,203,1507,1509,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9753,175,1509,0,204,1508,1510,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9754,175,1510,0,205,1509,1511,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9755,175,1511,0,206,1510,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9756,175,1505,0,207,1511,1512,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9757,175,1512,0,208,1505,1513,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9758,175,1513,0,209,1512,1514,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9759,175,1514,0,210,1513,1515,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9760,175,1515,0,211,1514,1516,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9761,175,1516,0,212,1515,1517,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9762,175,1517,0,213,1516,1518,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9763,175,1518,0,214,1517,1519,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9764,175,1519,0,215,1518,1520,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9765,175,1520,0,216,1519,1521,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9766,175,1521,0,217,1520,1522,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9767,175,1522,0,218,1521,1523,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9768,175,1523,0,219,1522,1524,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9769,175,1524,0,220,1523,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9770,175,1505,0,221,1524,1525,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9771,175,1525,0,222,1505,1526,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9772,175,1526,0,223,1525,1527,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9773,175,1527,0,224,1526,1528,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9774,175,1528,0,225,1527,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9775,175,1529,0,226,1528,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9776,175,1530,0,227,1529,1531,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9777,175,1531,0,228,1530,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9778,175,1532,0,229,1531,1533,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9779,175,1533,0,230,1532,1534,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9780,175,1534,0,231,1533,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9781,175,1493,0,232,1534,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9782,175,1535,0,233,1493,1536,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9783,175,1536,0,234,1535,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9784,175,1535,0,235,1536,1537,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9785,175,1537,0,236,1535,1538,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9786,175,1538,0,237,1537,1539,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9787,175,1539,0,238,1538,1540,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9788,175,1540,0,239,1539,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9789,175,1529,0,240,1540,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9790,175,1532,0,241,1529,1541,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9791,175,1541,0,242,1532,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9792,175,1507,0,243,1541,1542,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9793,175,1542,0,244,1507,1543,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9794,175,1543,0,245,1542,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9795,175,1544,0,246,1543,1545,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9796,175,1545,0,247,1544,1546,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9797,175,1546,0,248,1545,1547,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9798,175,1547,0,249,1546,1548,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9799,175,1548,0,250,1547,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9800,175,1549,0,251,1548,1550,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9801,175,1550,0,252,1549,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9802,175,1549,0,253,1550,1551,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9803,175,1551,0,254,1549,1552,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9804,175,1552,0,255,1551,1553,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9805,175,1553,0,256,1552,1554,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9806,175,1554,0,257,1553,1555,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9807,175,1555,0,258,1554,1556,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9808,175,1556,0,259,1555,1557,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9809,175,1557,0,260,1556,1558,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9810,175,1558,0,261,1557,1559,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9811,175,1559,0,262,1558,1560,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9812,175,1560,0,263,1559,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9813,175,1530,0,264,1560,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9814,175,1507,0,265,1530,1561,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9815,175,1561,0,266,1507,1562,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9816,175,1562,0,267,1561,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9817,175,1544,0,268,1562,1563,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9818,175,1563,0,269,1544,1491,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9819,175,1491,0,270,1563,1492,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9820,175,1492,0,271,1491,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9821,175,1493,0,272,1492,1494,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9822,175,1494,0,273,1493,1495,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9823,175,1495,0,274,1494,1496,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9824,175,1496,0,275,1495,1497,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9825,175,1497,0,276,1496,1498,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9826,175,1498,0,277,1497,1499,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9827,175,1499,0,278,1498,1500,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9828,175,1500,0,279,1499,1501,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9829,175,1501,0,280,1500,1502,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9830,175,1502,0,281,1501,1503,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9831,175,1503,0,282,1502,1504,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9832,175,1504,0,283,1503,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9833,175,1505,0,284,1504,1506,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9834,175,1506,0,285,1505,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9835,175,1507,0,286,1506,1508,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9836,175,1508,0,287,1507,1509,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9837,175,1509,0,288,1508,1510,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9838,175,1510,0,289,1509,1511,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9839,175,1511,0,290,1510,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9840,175,1505,0,291,1511,1512,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9841,175,1512,0,292,1505,1513,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9842,175,1513,0,293,1512,1514,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9843,175,1514,0,294,1513,1515,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9844,175,1515,0,295,1514,1516,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9845,175,1516,0,296,1515,1517,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9846,175,1517,0,297,1516,1518,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9847,175,1518,0,298,1517,1519,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9848,175,1519,0,299,1518,1520,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9849,175,1520,0,300,1519,1521,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9850,175,1521,0,301,1520,1522,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9851,175,1522,0,302,1521,1523,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9852,175,1523,0,303,1522,1524,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9853,175,1524,0,304,1523,1505,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9854,175,1505,0,305,1524,1525,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9855,175,1525,0,306,1505,1526,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9856,175,1526,0,307,1525,1527,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9857,175,1527,0,308,1526,1528,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9858,175,1528,0,309,1527,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9859,175,1529,0,310,1528,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9860,175,1530,0,311,1529,1531,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9861,175,1531,0,312,1530,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9862,175,1532,0,313,1531,1533,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9863,175,1533,0,314,1532,1534,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9864,175,1534,0,315,1533,1493,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9865,175,1493,0,316,1534,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9866,175,1535,0,317,1493,1536,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9867,175,1536,0,318,1535,1535,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9868,175,1535,0,319,1536,1537,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9869,175,1537,0,320,1535,1538,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9870,175,1538,0,321,1537,1539,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9871,175,1539,0,322,1538,1540,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9872,175,1540,0,323,1539,1529,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9873,175,1529,0,324,1540,1532,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9874,175,1532,0,325,1529,1541,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9875,175,1541,0,326,1532,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9876,175,1507,0,327,1541,1542,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9877,175,1542,0,328,1507,1543,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9878,175,1543,0,329,1542,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9879,175,1544,0,330,1543,1545,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9880,175,1545,0,331,1544,1546,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9881,175,1546,0,332,1545,1547,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9882,175,1547,0,333,1546,1548,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9883,175,1548,0,334,1547,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9884,175,1549,0,335,1548,1550,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9885,175,1550,0,336,1549,1549,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9886,175,1549,0,337,1550,1551,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9887,175,1551,0,338,1549,1552,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9888,175,1552,0,339,1551,1553,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9889,175,1553,0,340,1552,1554,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9890,175,1554,0,341,1553,1555,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9891,175,1555,0,342,1554,1556,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9892,175,1556,0,343,1555,1557,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9893,175,1557,0,344,1556,1558,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9894,175,1558,0,345,1557,1559,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9895,175,1559,0,346,1558,1560,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9896,175,1560,0,347,1559,1530,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9897,175,1530,0,348,1560,1507,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9898,175,1507,0,349,1530,1561,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9899,175,1561,0,350,1507,1562,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9900,175,1562,0,351,1561,1544,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9901,175,1544,0,352,1562,1563,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9902,175,1563,0,353,1544,0,2,1069773968,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9903,61,1570,0,0,0,1402,1,1066729258,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9904,61,1402,0,1,1570,1570,1,1066729258,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9905,61,1570,0,2,1402,1402,1,1066729258,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9906,61,1402,0,3,1570,0,1,1066729258,4,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9907,165,1571,0,0,0,1571,13,1069423490,4,149,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9908,165,1571,0,1,1571,1572,13,1069423490,4,149,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9909,165,1572,0,2,1571,1572,13,1069423490,4,150,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9910,165,1572,0,3,1572,1573,13,1069423490,4,150,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9911,165,1573,0,4,1572,1573,13,1069423490,4,151,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9912,165,1573,0,5,1573,0,13,1069423490,4,151,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9913,166,1574,0,0,0,1574,13,1069423957,4,149,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9914,166,1574,0,1,1574,1575,13,1069423957,4,149,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9915,166,1575,0,2,1574,1575,13,1069423957,4,150,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9916,166,1575,0,3,1575,1575,13,1069423957,4,150,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9917,166,1575,0,4,1575,1575,13,1069423957,4,151,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9918,166,1575,0,5,1575,0,13,1069423957,4,151,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9919,176,1485,0,0,0,1576,2,1069774043,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9920,176,1576,0,1,1485,1485,2,1069774043,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9921,176,1485,0,2,1576,1576,2,1069774043,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9922,176,1576,0,3,1485,1566,2,1069774043,4,1,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9923,176,1566,0,4,1576,1567,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9924,176,1567,0,5,1566,1489,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9925,176,1489,0,6,1567,1577,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9926,176,1577,0,7,1489,1578,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9927,176,1578,0,8,1577,1485,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9928,176,1485,0,9,1578,1579,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9929,176,1579,0,10,1485,1580,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9930,176,1580,0,11,1579,1569,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9931,176,1569,0,12,1580,1581,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9932,176,1581,0,13,1569,1566,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9933,176,1566,0,14,1581,1567,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9934,176,1567,0,15,1566,1489,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9935,176,1489,0,16,1567,1577,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9936,176,1577,0,17,1489,1578,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9937,176,1578,0,18,1577,1485,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9938,176,1485,0,19,1578,1579,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9939,176,1579,0,20,1485,1580,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9940,176,1580,0,21,1579,1569,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9941,176,1569,0,22,1580,1581,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9942,176,1581,0,23,1569,1491,2,1069774043,4,120,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9943,176,1491,0,24,1581,1492,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9944,176,1492,0,25,1491,1493,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9945,176,1493,0,26,1492,1494,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9946,176,1494,0,27,1493,1495,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9947,176,1495,0,28,1494,1496,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9948,176,1496,0,29,1495,1497,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9949,176,1497,0,30,1496,1498,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9950,176,1498,0,31,1497,1499,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9951,176,1499,0,32,1498,1500,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9952,176,1500,0,33,1499,1501,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9953,176,1501,0,34,1500,1502,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9954,176,1502,0,35,1501,1503,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9955,176,1503,0,36,1502,1504,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9956,176,1504,0,37,1503,1505,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9957,176,1505,0,38,1504,1506,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9958,176,1506,0,39,1505,1507,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9959,176,1507,0,40,1506,1508,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9960,176,1508,0,41,1507,1509,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9961,176,1509,0,42,1508,1510,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9962,176,1510,0,43,1509,1511,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9963,176,1511,0,44,1510,1505,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9964,176,1505,0,45,1511,1512,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9965,176,1512,0,46,1505,1513,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9966,176,1513,0,47,1512,1514,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9967,176,1514,0,48,1513,1515,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9968,176,1515,0,49,1514,1516,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9969,176,1516,0,50,1515,1517,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9970,176,1517,0,51,1516,1518,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9971,176,1518,0,52,1517,1519,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9972,176,1519,0,53,1518,1520,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9973,176,1520,0,54,1519,1521,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9974,176,1521,0,55,1520,1522,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9975,176,1522,0,56,1521,1523,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9976,176,1523,0,57,1522,1524,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9977,176,1524,0,58,1523,1505,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9978,176,1505,0,59,1524,1525,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9979,176,1525,0,60,1505,1526,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9980,176,1526,0,61,1525,1527,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9981,176,1527,0,62,1526,1528,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9982,176,1528,0,63,1527,1529,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9983,176,1529,0,64,1528,1530,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9984,176,1530,0,65,1529,1531,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9985,176,1531,0,66,1530,1532,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9986,176,1532,0,67,1531,1533,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9987,176,1533,0,68,1532,1534,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9988,176,1534,0,69,1533,1493,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9989,176,1493,0,70,1534,1535,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9990,176,1535,0,71,1493,1536,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9991,176,1536,0,72,1535,1535,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9992,176,1535,0,73,1536,1537,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9993,176,1537,0,74,1535,1538,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9994,176,1538,0,75,1537,1539,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9995,176,1539,0,76,1538,1540,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9996,176,1540,0,77,1539,1529,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9997,176,1529,0,78,1540,1532,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9998,176,1532,0,79,1529,1541,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (9999,176,1541,0,80,1532,1507,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10000,176,1507,0,81,1541,1542,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10001,176,1542,0,82,1507,1543,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10002,176,1543,0,83,1542,1544,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10003,176,1544,0,84,1543,1491,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10004,176,1491,0,85,1544,1492,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10005,176,1492,0,86,1491,1493,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10006,176,1493,0,87,1492,1494,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10007,176,1494,0,88,1493,1495,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10008,176,1495,0,89,1494,1496,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10009,176,1496,0,90,1495,1497,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10010,176,1497,0,91,1496,1498,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10011,176,1498,0,92,1497,1499,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10012,176,1499,0,93,1498,1500,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10013,176,1500,0,94,1499,1501,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10014,176,1501,0,95,1500,1502,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10015,176,1502,0,96,1501,1503,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10016,176,1503,0,97,1502,1504,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10017,176,1504,0,98,1503,1505,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10018,176,1505,0,99,1504,1506,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10019,176,1506,0,100,1505,1507,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10020,176,1507,0,101,1506,1508,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10021,176,1508,0,102,1507,1509,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10022,176,1509,0,103,1508,1510,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10023,176,1510,0,104,1509,1511,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10024,176,1511,0,105,1510,1505,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10025,176,1505,0,106,1511,1512,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10026,176,1512,0,107,1505,1513,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10027,176,1513,0,108,1512,1514,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10028,176,1514,0,109,1513,1515,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10029,176,1515,0,110,1514,1516,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10030,176,1516,0,111,1515,1517,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10031,176,1517,0,112,1516,1518,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10032,176,1518,0,113,1517,1519,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10033,176,1519,0,114,1518,1520,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10034,176,1520,0,115,1519,1521,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10035,176,1521,0,116,1520,1522,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10036,176,1522,0,117,1521,1523,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10037,176,1523,0,118,1522,1524,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10038,176,1524,0,119,1523,1505,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10039,176,1505,0,120,1524,1525,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10040,176,1525,0,121,1505,1526,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10041,176,1526,0,122,1525,1527,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10042,176,1527,0,123,1526,1528,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10043,176,1528,0,124,1527,1529,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10044,176,1529,0,125,1528,1530,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10045,176,1530,0,126,1529,1531,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10046,176,1531,0,127,1530,1532,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10047,176,1532,0,128,1531,1533,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10048,176,1533,0,129,1532,1534,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10049,176,1534,0,130,1533,1493,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10050,176,1493,0,131,1534,1535,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10051,176,1535,0,132,1493,1536,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10052,176,1536,0,133,1535,1535,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10053,176,1535,0,134,1536,1537,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10054,176,1537,0,135,1535,1538,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10055,176,1538,0,136,1537,1539,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10056,176,1539,0,137,1538,1540,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10057,176,1540,0,138,1539,1529,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10058,176,1529,0,139,1540,1532,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10059,176,1532,0,140,1529,1541,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10060,176,1541,0,141,1532,1507,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10061,176,1507,0,142,1541,1542,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10062,176,1542,0,143,1507,1543,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10063,176,1543,0,144,1542,1544,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10064,176,1544,0,145,1543,0,2,1069774043,4,121,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10065,57,1582,0,0,0,1582,1,1066729137,5,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10066,57,1582,0,1,1582,0,1,1066729137,5,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10067,62,1583,0,0,0,1583,1,1066729284,5,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10068,62,1583,0,1,1583,0,1,1066729284,5,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10069,171,1584,0,0,0,1584,17,1069769945,5,170,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10070,171,1584,0,1,1584,1585,17,1069769945,5,170,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10071,171,1585,0,2,1584,1585,17,1069769945,5,169,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10072,171,1585,0,3,1585,1586,17,1069769945,5,169,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10073,171,1586,0,4,1585,1586,17,1069769945,5,171,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10074,171,1586,0,5,1586,1587,17,1069769945,5,171,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10075,171,1587,0,6,1586,1588,17,1069769945,5,172,'contact_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10076,171,1588,0,7,1587,1589,17,1069769945,5,172,'contact_type',2);
INSERT INTO ezsearch_object_word_link VALUES (10077,171,1589,0,8,1588,1590,17,1069769945,5,172,'contact_type',3);
INSERT INTO ezsearch_object_word_link VALUES (10078,171,1590,0,9,1589,1591,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10079,171,1591,0,10,1590,1592,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10080,171,1592,0,11,1591,1593,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10081,171,1593,0,12,1592,1594,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10082,171,1594,0,13,1593,1587,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10083,171,1587,0,14,1594,1588,17,1069769945,5,172,'contact_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10084,171,1588,0,15,1587,1589,17,1069769945,5,172,'contact_type',2);
INSERT INTO ezsearch_object_word_link VALUES (10085,171,1589,0,16,1588,1590,17,1069769945,5,172,'contact_type',3);
INSERT INTO ezsearch_object_word_link VALUES (10086,171,1590,0,17,1589,1591,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10087,171,1591,0,18,1590,1592,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10088,171,1592,0,19,1591,1593,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10089,171,1593,0,20,1592,1594,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10090,171,1594,0,21,1593,1578,17,1069769945,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10091,171,1578,0,22,1594,1595,17,1069769945,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10092,171,1595,0,23,1578,1596,17,1069769945,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10093,171,1596,0,24,1595,1578,17,1069769945,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10094,171,1578,0,25,1596,1595,17,1069769945,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10095,171,1595,0,26,1578,1596,17,1069769945,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10096,171,1596,0,27,1595,0,17,1069769945,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10097,172,1597,0,0,0,1597,17,1069770002,5,170,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10098,172,1597,0,1,1597,1598,17,1069770002,5,170,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10099,172,1598,0,2,1597,1598,17,1069770002,5,169,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10100,172,1598,0,3,1598,1599,17,1069770002,5,169,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10101,172,1599,0,4,1598,1599,17,1069770002,5,171,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10102,172,1599,0,5,1599,1587,17,1069770002,5,171,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10103,172,1587,0,6,1599,1588,17,1069770002,5,172,'contact_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10104,172,1588,0,7,1587,1590,17,1069770002,5,172,'contact_type',2);
INSERT INTO ezsearch_object_word_link VALUES (10105,172,1590,0,8,1588,1600,17,1069770002,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10106,172,1600,0,9,1590,1601,17,1069770002,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10107,172,1601,0,10,1600,1587,17,1069770002,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10108,172,1587,0,11,1601,1588,17,1069770002,5,172,'contact_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10109,172,1588,0,12,1587,1590,17,1069770002,5,172,'contact_type',2);
INSERT INTO ezsearch_object_word_link VALUES (10110,172,1590,0,13,1588,1600,17,1069770002,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10111,172,1600,0,14,1590,1601,17,1069770002,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10112,172,1601,0,15,1600,1597,17,1069770002,5,172,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10113,172,1597,0,16,1601,1598,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10114,172,1598,0,17,1597,1602,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10115,172,1602,0,18,1598,1578,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10116,172,1578,0,19,1602,1603,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10117,172,1603,0,20,1578,1604,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10118,172,1604,0,21,1603,1605,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10119,172,1605,0,22,1604,1597,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10120,172,1597,0,23,1605,1598,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10121,172,1598,0,24,1597,1602,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10122,172,1602,0,25,1598,1578,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10123,172,1578,0,26,1602,1603,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10124,172,1603,0,27,1578,1604,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10125,172,1604,0,28,1603,1605,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10126,172,1605,0,29,1604,0,17,1069770002,5,179,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10127,63,1606,0,0,0,1606,1,1066729298,5,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10128,63,1606,0,1,1606,0,1,1066729298,5,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10129,173,1607,0,0,0,1608,16,1069770749,5,162,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10130,173,1608,0,1,1607,1607,16,1069770749,5,162,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10131,173,1607,0,2,1608,1608,16,1069770749,5,162,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10132,173,1608,0,3,1607,1609,16,1069770749,5,162,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10133,173,1609,0,4,1608,1609,16,1069770749,5,163,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10134,173,1609,0,5,1609,1587,16,1069770749,5,163,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10135,173,1587,0,6,1609,1610,16,1069770749,5,164,'address_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10136,173,1610,0,7,1587,1611,16,1069770749,5,164,'address_type',1);
INSERT INTO ezsearch_object_word_link VALUES (10137,173,1611,0,8,1610,1588,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10138,173,1588,0,9,1611,1611,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10139,173,1611,0,10,1588,1588,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10140,173,1588,0,11,1611,1587,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10141,173,1587,0,12,1588,1610,16,1069770749,5,164,'address_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10142,173,1610,0,13,1587,1611,16,1069770749,5,164,'address_type',1);
INSERT INTO ezsearch_object_word_link VALUES (10143,173,1611,0,14,1610,1588,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10144,173,1588,0,15,1611,1611,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10145,173,1611,0,16,1588,1588,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10146,173,1588,0,17,1611,1578,16,1069770749,5,164,'address_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10147,173,1578,0,18,1588,1612,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10148,173,1612,0,19,1578,1608,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10149,173,1608,0,20,1612,1566,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10150,173,1566,0,21,1608,1613,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10151,173,1613,0,22,1566,1614,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10152,173,1614,0,23,1613,1578,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10153,173,1578,0,24,1614,1612,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10154,173,1612,0,25,1578,1608,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10155,173,1608,0,26,1612,1566,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10156,173,1566,0,27,1608,1613,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10157,173,1613,0,28,1566,1614,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10158,173,1614,0,29,1613,1615,16,1069770749,5,166,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10159,173,1615,0,30,1614,1615,16,1069770749,5,167,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10160,173,1615,0,31,1615,1587,16,1069770749,5,167,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10161,173,1587,0,32,1615,1610,16,1069770749,5,168,'contact_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10162,173,1610,0,33,1587,1590,16,1069770749,5,168,'contact_type',1);
INSERT INTO ezsearch_object_word_link VALUES (10163,173,1590,0,34,1610,1616,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10164,173,1616,0,35,1590,1590,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10165,173,1590,0,36,1616,1617,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10166,173,1617,0,37,1590,1587,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10167,173,1587,0,38,1617,1610,16,1069770749,5,168,'contact_type',0);
INSERT INTO ezsearch_object_word_link VALUES (10168,173,1610,0,39,1587,1590,16,1069770749,5,168,'contact_type',1);
INSERT INTO ezsearch_object_word_link VALUES (10169,173,1590,0,40,1610,1616,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10170,173,1616,0,41,1590,1590,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10171,173,1590,0,42,1616,1617,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10172,173,1617,0,43,1590,0,16,1069770749,5,168,'contact_value',0);
INSERT INTO ezsearch_object_word_link VALUES (10173,64,1618,0,0,0,1618,1,1066729319,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10174,64,1618,0,1,1618,1619,1,1066729319,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10175,64,1619,0,2,1618,1620,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10176,64,1620,0,3,1619,1621,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10177,64,1621,0,4,1620,1622,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10178,64,1622,0,5,1621,1623,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10179,64,1623,0,6,1622,1618,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10180,64,1618,0,7,1623,1619,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10181,64,1619,0,8,1618,1620,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10182,64,1620,0,9,1619,1621,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10183,64,1621,0,10,1620,1622,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10184,64,1622,0,11,1621,1623,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10185,64,1623,0,12,1622,1618,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10186,64,1618,0,13,1623,0,1,1066729319,6,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10187,66,1624,0,0,0,1624,1,1066729356,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10188,66,1624,0,1,1624,0,1,1066729356,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10189,67,1625,0,0,0,1625,1,1066729371,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10190,67,1625,0,1,1625,0,1,1066729371,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10191,68,1608,0,0,0,1626,1,1066729385,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10192,68,1626,0,1,1608,1608,1,1066729385,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10193,68,1608,0,2,1626,1626,1,1066729385,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10194,68,1626,0,3,1608,0,1,1066729385,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10195,69,1627,0,0,0,1627,1,1066729400,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10196,69,1627,0,1,1627,0,1,1066729400,6,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10197,112,1628,0,0,0,1628,1,1066986270,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10198,112,1628,0,1,1628,1629,1,1066986270,1,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10199,112,1629,0,2,1628,1628,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10200,112,1628,0,3,1629,1630,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10201,112,1630,0,4,1628,1569,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10202,112,1569,0,5,1630,1608,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10203,112,1608,0,6,1569,1629,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10204,112,1629,0,7,1608,1628,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10205,112,1628,0,8,1629,1630,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10206,112,1630,0,9,1628,1569,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10207,112,1569,0,10,1630,1608,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10208,112,1608,0,11,1569,0,1,1066986270,1,119,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10209,170,1631,0,0,0,1626,10,1069769718,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10210,170,1626,0,1,1631,1631,10,1069769718,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10211,170,1631,0,2,1626,1626,10,1069769718,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10212,170,1626,0,3,1631,1632,10,1069769718,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10213,170,1632,0,4,1626,1633,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10214,170,1633,0,5,1632,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10215,170,1634,0,6,1633,1538,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10216,170,1538,0,7,1634,1635,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10217,170,1635,0,8,1538,1636,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10218,170,1636,0,9,1635,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10219,170,1637,0,10,1636,1638,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10220,170,1638,0,11,1637,1502,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10221,170,1502,0,12,1638,1639,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10222,170,1639,0,13,1502,1640,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10223,170,1640,0,14,1639,1641,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10224,170,1641,0,15,1640,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10225,170,1642,0,16,1641,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10226,170,1634,0,17,1642,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10227,170,1508,0,18,1634,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10228,170,1542,0,19,1508,1643,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10229,170,1643,0,20,1542,1556,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10230,170,1556,0,21,1643,1644,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10231,170,1644,0,22,1556,1521,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10232,170,1521,0,23,1644,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10233,170,1645,0,24,1521,1646,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10234,170,1646,0,25,1645,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10235,170,1549,0,26,1646,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10236,170,1647,0,27,1549,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10237,170,1642,0,28,1647,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10238,170,1546,0,29,1642,1648,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10239,170,1648,0,30,1546,1509,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10240,170,1509,0,31,1648,1649,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10241,170,1649,0,32,1509,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10242,170,1645,0,33,1649,1528,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10243,170,1528,0,34,1645,1578,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10244,170,1578,0,35,1528,1650,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10245,170,1650,0,36,1578,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10246,170,1549,0,37,1650,1651,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10247,170,1651,0,38,1549,1652,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10248,170,1652,0,39,1651,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10249,170,1508,0,40,1652,1499,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10250,170,1499,0,41,1508,1532,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10251,170,1532,0,42,1499,1560,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10252,170,1560,0,43,1532,1653,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10253,170,1653,0,44,1560,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10254,170,1546,0,45,1653,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10255,170,1647,0,46,1546,1654,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10256,170,1654,0,47,1647,1655,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10257,170,1655,0,48,1654,1656,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10258,170,1656,0,49,1655,1657,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10259,170,1657,0,50,1656,1658,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10260,170,1658,0,51,1657,1659,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10261,170,1659,0,52,1658,1660,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10262,170,1660,0,53,1659,1505,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10263,170,1505,0,54,1660,1500,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10264,170,1500,0,55,1505,1544,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10265,170,1544,0,56,1500,1661,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10266,170,1661,0,57,1544,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10267,170,1637,0,58,1661,1662,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10268,170,1662,0,59,1637,1663,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10269,170,1663,0,60,1662,1497,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10270,170,1497,0,61,1663,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10271,170,1542,0,62,1497,1553,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10272,170,1553,0,63,1542,1517,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10273,170,1517,0,64,1553,1664,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10274,170,1664,0,65,1517,1535,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10275,170,1535,0,66,1664,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10276,170,1542,0,67,1535,1510,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10277,170,1510,0,68,1542,1632,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10278,170,1632,0,69,1510,1633,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10279,170,1633,0,70,1632,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10280,170,1634,0,71,1633,1538,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10281,170,1538,0,72,1634,1635,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10282,170,1635,0,73,1538,1636,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10283,170,1636,0,74,1635,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10284,170,1637,0,75,1636,1638,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10285,170,1638,0,76,1637,1502,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10286,170,1502,0,77,1638,1639,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10287,170,1639,0,78,1502,1640,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10288,170,1640,0,79,1639,1641,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10289,170,1641,0,80,1640,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10290,170,1642,0,81,1641,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10291,170,1634,0,82,1642,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10292,170,1508,0,83,1634,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10293,170,1542,0,84,1508,1643,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10294,170,1643,0,85,1542,1556,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10295,170,1556,0,86,1643,1644,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10296,170,1644,0,87,1556,1521,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10297,170,1521,0,88,1644,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10298,170,1645,0,89,1521,1646,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10299,170,1646,0,90,1645,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10300,170,1549,0,91,1646,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10301,170,1647,0,92,1549,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10302,170,1642,0,93,1647,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10303,170,1546,0,94,1642,1648,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10304,170,1648,0,95,1546,1509,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10305,170,1509,0,96,1648,1649,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10306,170,1649,0,97,1509,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10307,170,1645,0,98,1649,1528,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10308,170,1528,0,99,1645,1578,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10309,170,1578,0,100,1528,1650,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10310,170,1650,0,101,1578,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10311,170,1549,0,102,1650,1651,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10312,170,1651,0,103,1549,1652,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10313,170,1652,0,104,1651,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10314,170,1508,0,105,1652,1499,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10315,170,1499,0,106,1508,1532,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10316,170,1532,0,107,1499,1560,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10317,170,1560,0,108,1532,1653,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10318,170,1653,0,109,1560,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10319,170,1546,0,110,1653,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10320,170,1647,0,111,1546,1654,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10321,170,1654,0,112,1647,1655,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10322,170,1655,0,113,1654,1656,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10323,170,1656,0,114,1655,1657,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10324,170,1657,0,115,1656,1658,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10325,170,1658,0,116,1657,1659,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10326,170,1659,0,117,1658,1660,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10327,170,1660,0,118,1659,1505,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10328,170,1505,0,119,1660,1500,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10329,170,1500,0,120,1505,1544,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10330,170,1544,0,121,1500,1661,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10331,170,1661,0,122,1544,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10332,170,1637,0,123,1661,1662,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10333,170,1662,0,124,1637,1663,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10334,170,1663,0,125,1662,1497,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10335,170,1497,0,126,1663,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10336,170,1542,0,127,1497,1553,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10337,170,1553,0,128,1542,1517,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10338,170,1517,0,129,1553,1664,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10339,170,1664,0,130,1517,1535,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10340,170,1535,0,131,1664,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10341,170,1542,0,132,1535,1510,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10342,170,1510,0,133,1542,1632,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10343,170,1632,0,134,1510,1633,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10344,170,1633,0,135,1632,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10345,170,1634,0,136,1633,1538,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10346,170,1538,0,137,1634,1635,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10347,170,1635,0,138,1538,1636,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10348,170,1636,0,139,1635,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10349,170,1637,0,140,1636,1638,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10350,170,1638,0,141,1637,1502,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10351,170,1502,0,142,1638,1639,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10352,170,1639,0,143,1502,1640,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10353,170,1640,0,144,1639,1641,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10354,170,1641,0,145,1640,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10355,170,1642,0,146,1641,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10356,170,1634,0,147,1642,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10357,170,1508,0,148,1634,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10358,170,1542,0,149,1508,1643,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10359,170,1643,0,150,1542,1556,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10360,170,1556,0,151,1643,1644,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10361,170,1644,0,152,1556,1521,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10362,170,1521,0,153,1644,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10363,170,1645,0,154,1521,1646,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10364,170,1646,0,155,1645,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10365,170,1549,0,156,1646,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10366,170,1647,0,157,1549,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10367,170,1642,0,158,1647,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10368,170,1546,0,159,1642,1648,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10369,170,1648,0,160,1546,1509,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10370,170,1509,0,161,1648,1649,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10371,170,1649,0,162,1509,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10372,170,1645,0,163,1649,1528,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10373,170,1528,0,164,1645,1578,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10374,170,1578,0,165,1528,1650,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10375,170,1650,0,166,1578,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10376,170,1549,0,167,1650,1651,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10377,170,1651,0,168,1549,1652,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10378,170,1652,0,169,1651,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10379,170,1508,0,170,1652,1499,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10380,170,1499,0,171,1508,1532,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10381,170,1532,0,172,1499,1560,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10382,170,1560,0,173,1532,1653,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10383,170,1653,0,174,1560,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10384,170,1546,0,175,1653,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10385,170,1647,0,176,1546,1654,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10386,170,1654,0,177,1647,1655,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10387,170,1655,0,178,1654,1656,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10388,170,1656,0,179,1655,1657,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10389,170,1657,0,180,1656,1658,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10390,170,1658,0,181,1657,1659,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10391,170,1659,0,182,1658,1660,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10392,170,1660,0,183,1659,1505,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10393,170,1505,0,184,1660,1500,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10394,170,1500,0,185,1505,1544,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10395,170,1544,0,186,1500,1661,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10396,170,1661,0,187,1544,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10397,170,1637,0,188,1661,1662,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10398,170,1662,0,189,1637,1663,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10399,170,1663,0,190,1662,1497,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10400,170,1497,0,191,1663,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10401,170,1542,0,192,1497,1553,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10402,170,1553,0,193,1542,1517,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10403,170,1517,0,194,1553,1664,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10404,170,1664,0,195,1517,1535,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10405,170,1535,0,196,1664,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10406,170,1542,0,197,1535,1510,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10407,170,1510,0,198,1542,1632,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10408,170,1632,0,199,1510,1633,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10409,170,1633,0,200,1632,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10410,170,1634,0,201,1633,1538,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10411,170,1538,0,202,1634,1635,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10412,170,1635,0,203,1538,1636,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10413,170,1636,0,204,1635,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10414,170,1637,0,205,1636,1638,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10415,170,1638,0,206,1637,1502,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10416,170,1502,0,207,1638,1639,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10417,170,1639,0,208,1502,1640,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10418,170,1640,0,209,1639,1641,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10419,170,1641,0,210,1640,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10420,170,1642,0,211,1641,1634,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10421,170,1634,0,212,1642,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10422,170,1508,0,213,1634,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10423,170,1542,0,214,1508,1643,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10424,170,1643,0,215,1542,1556,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10425,170,1556,0,216,1643,1644,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10426,170,1644,0,217,1556,1521,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10427,170,1521,0,218,1644,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10428,170,1645,0,219,1521,1646,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10429,170,1646,0,220,1645,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10430,170,1549,0,221,1646,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10431,170,1647,0,222,1549,1642,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10432,170,1642,0,223,1647,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10433,170,1546,0,224,1642,1648,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10434,170,1648,0,225,1546,1509,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10435,170,1509,0,226,1648,1649,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10436,170,1649,0,227,1509,1645,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10437,170,1645,0,228,1649,1528,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10438,170,1528,0,229,1645,1578,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10439,170,1578,0,230,1528,1650,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10440,170,1650,0,231,1578,1549,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10441,170,1549,0,232,1650,1651,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10442,170,1651,0,233,1549,1652,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10443,170,1652,0,234,1651,1508,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10444,170,1508,0,235,1652,1499,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10445,170,1499,0,236,1508,1532,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10446,170,1532,0,237,1499,1560,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10447,170,1560,0,238,1532,1653,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10448,170,1653,0,239,1560,1546,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10449,170,1546,0,240,1653,1647,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10450,170,1647,0,241,1546,1654,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10451,170,1654,0,242,1647,1655,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10452,170,1655,0,243,1654,1656,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10453,170,1656,0,244,1655,1657,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10454,170,1657,0,245,1656,1658,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10455,170,1658,0,246,1657,1659,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10456,170,1659,0,247,1658,1660,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10457,170,1660,0,248,1659,1505,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10458,170,1505,0,249,1660,1500,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10459,170,1500,0,250,1505,1544,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10460,170,1544,0,251,1500,1661,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10461,170,1661,0,252,1544,1637,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10462,170,1637,0,253,1661,1662,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10463,170,1662,0,254,1637,1663,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10464,170,1663,0,255,1662,1497,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10465,170,1497,0,256,1663,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10466,170,1542,0,257,1497,1553,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10467,170,1553,0,258,1542,1517,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10468,170,1517,0,259,1553,1664,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10469,170,1664,0,260,1517,1535,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10470,170,1535,0,261,1664,1542,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10471,170,1542,0,262,1535,1510,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10472,170,1510,0,263,1542,0,10,1069769718,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10473,113,1626,0,0,0,1626,10,1066986541,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10474,113,1626,0,1,1626,1653,10,1066986541,1,140,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10475,113,1653,0,2,1626,1665,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10476,113,1665,0,3,1653,1666,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10477,113,1666,0,4,1665,1634,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10478,113,1634,0,5,1666,1667,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10479,113,1667,0,6,1634,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10480,113,1549,0,7,1667,1668,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10481,113,1668,0,8,1549,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10482,113,1549,0,9,1668,1669,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10483,113,1669,0,10,1549,1670,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10484,113,1670,0,11,1669,1654,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10485,113,1654,0,12,1670,1671,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10486,113,1671,0,13,1654,1672,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10487,113,1672,0,14,1671,1673,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10488,113,1673,0,15,1672,1674,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10489,113,1674,0,16,1673,1675,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10490,113,1675,0,17,1674,1676,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10491,113,1676,0,18,1675,1514,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10492,113,1514,0,19,1676,1677,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10493,113,1677,0,20,1514,1678,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10494,113,1678,0,21,1677,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10495,113,1597,0,22,1678,1679,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10496,113,1679,0,23,1597,1680,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10497,113,1680,0,24,1679,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10498,113,1597,0,25,1680,1681,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10499,113,1681,0,26,1597,1682,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10500,113,1682,0,27,1681,1683,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10501,113,1683,0,28,1682,1672,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10502,113,1672,0,29,1683,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10503,113,1524,0,30,1672,1684,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10504,113,1684,0,31,1524,1671,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10505,113,1671,0,32,1684,1683,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10506,113,1683,0,33,1671,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10507,113,1499,0,34,1683,1685,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10508,113,1685,0,35,1499,1505,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10509,113,1505,0,36,1685,1686,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10510,113,1686,0,37,1505,1687,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10511,113,1687,0,38,1686,1688,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10512,113,1688,0,39,1687,1673,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10513,113,1673,0,40,1688,1674,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10514,113,1674,0,41,1673,1675,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10515,113,1675,0,42,1674,1676,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10516,113,1676,0,43,1675,1514,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10517,113,1514,0,44,1676,1677,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10518,113,1677,0,45,1514,1678,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10519,113,1678,0,46,1677,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10520,113,1597,0,47,1678,1679,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10521,113,1679,0,48,1597,1680,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10522,113,1680,0,49,1679,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10523,113,1597,0,50,1680,1681,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10524,113,1681,0,51,1597,1682,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10525,113,1682,0,52,1681,1689,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10526,113,1689,0,53,1682,1690,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10527,113,1690,0,54,1689,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10528,113,1544,0,55,1690,1691,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10529,113,1691,0,56,1544,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10530,113,1549,0,57,1691,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10531,113,1509,0,58,1549,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10532,113,1499,0,59,1509,1692,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10533,113,1692,0,60,1499,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10534,113,1549,0,61,1692,1693,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10535,113,1693,0,62,1549,1635,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10536,113,1635,0,63,1693,1694,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10537,113,1694,0,64,1635,1646,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10538,113,1646,0,65,1694,1695,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10539,113,1695,0,66,1646,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10540,113,1499,0,67,1695,1696,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10541,113,1696,0,68,1499,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10542,113,1649,0,69,1696,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10543,113,1499,0,70,1649,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10544,113,1509,0,71,1499,1697,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10545,113,1697,0,72,1509,1510,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10546,113,1510,0,73,1697,1661,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10547,113,1661,0,74,1510,1698,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10548,113,1698,0,75,1661,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10549,113,1508,0,76,1698,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10550,113,1532,0,77,1508,1699,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10551,113,1699,0,78,1532,1560,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10552,113,1560,0,79,1699,1671,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10553,113,1671,0,80,1560,1517,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10554,113,1517,0,81,1671,1655,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10555,113,1655,0,82,1517,1700,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10556,113,1700,0,83,1655,1672,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10557,113,1672,0,84,1700,1500,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10558,113,1500,0,85,1672,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10559,113,1546,0,86,1500,1701,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10560,113,1701,0,87,1546,1632,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10561,113,1632,0,88,1701,1633,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10562,113,1633,0,89,1632,1634,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10563,113,1634,0,90,1633,1538,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10564,113,1538,0,91,1634,1635,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10565,113,1635,0,92,1538,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10566,113,1636,0,93,1635,1637,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10567,113,1637,0,94,1636,1638,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10568,113,1638,0,95,1637,1502,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10569,113,1502,0,96,1638,1639,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10570,113,1639,0,97,1502,1640,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10571,113,1640,0,98,1639,1641,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10572,113,1641,0,99,1640,1642,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10573,113,1642,0,100,1641,1634,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10574,113,1634,0,101,1642,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10575,113,1508,0,102,1634,1542,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10576,113,1542,0,103,1508,1643,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10577,113,1643,0,104,1542,1556,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10578,113,1556,0,105,1643,1644,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10579,113,1644,0,106,1556,1521,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10580,113,1521,0,107,1644,1645,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10581,113,1645,0,108,1521,1646,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10582,113,1646,0,109,1645,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10583,113,1549,0,110,1646,1647,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10584,113,1647,0,111,1549,1642,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10585,113,1642,0,112,1647,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10586,113,1546,0,113,1642,1648,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10587,113,1648,0,114,1546,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10588,113,1509,0,115,1648,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10589,113,1649,0,116,1509,1645,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10590,113,1645,0,117,1649,1528,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10591,113,1528,0,118,1645,1578,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10592,113,1578,0,119,1528,1650,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10593,113,1650,0,120,1578,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10594,113,1549,0,121,1650,1651,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10595,113,1651,0,122,1549,1652,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10596,113,1652,0,123,1651,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10597,113,1508,0,124,1652,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10598,113,1499,0,125,1508,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10599,113,1532,0,126,1499,1560,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10600,113,1560,0,127,1532,1653,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10601,113,1653,0,128,1560,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10602,113,1546,0,129,1653,1647,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10603,113,1647,0,130,1546,1654,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10604,113,1654,0,131,1647,1655,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10605,113,1655,0,132,1654,1656,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10606,113,1656,0,133,1655,1657,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10607,113,1657,0,134,1656,1658,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10608,113,1658,0,135,1657,1659,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10609,113,1659,0,136,1658,1660,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10610,113,1660,0,137,1659,1505,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10611,113,1505,0,138,1660,1500,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10612,113,1500,0,139,1505,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10613,113,1544,0,140,1500,1661,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10614,113,1661,0,141,1544,1637,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10615,113,1637,0,142,1661,1662,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10616,113,1662,0,143,1637,1663,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10617,113,1663,0,144,1662,1497,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10618,113,1497,0,145,1663,1542,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10619,113,1542,0,146,1497,1553,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10620,113,1553,0,147,1542,1517,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10621,113,1517,0,148,1553,1664,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10622,113,1664,0,149,1517,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10623,113,1535,0,150,1664,1542,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10624,113,1542,0,151,1535,1510,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10625,113,1510,0,152,1542,1702,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10626,113,1702,0,153,1510,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10627,113,1532,0,154,1702,1491,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10628,113,1491,0,155,1532,1578,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10629,113,1578,0,156,1491,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10630,113,1524,0,157,1578,1697,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10631,113,1697,0,158,1524,1651,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10632,113,1651,0,159,1697,1635,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10633,113,1635,0,160,1651,1703,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10634,113,1703,0,161,1635,1498,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10635,113,1498,0,162,1703,1692,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10636,113,1692,0,163,1498,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10637,113,1535,0,164,1692,1704,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10638,113,1704,0,165,1535,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10639,113,1546,0,166,1704,1528,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10640,113,1528,0,167,1546,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10641,113,1546,0,168,1528,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10642,113,1544,0,169,1546,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10643,113,1509,0,170,1544,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10644,113,1535,0,171,1509,1502,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10645,113,1502,0,172,1535,1705,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10646,113,1705,0,173,1502,1706,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10647,113,1706,0,174,1705,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10648,113,1649,0,175,1706,1707,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10649,113,1707,0,176,1649,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10650,113,1636,0,177,1707,1669,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10651,113,1669,0,178,1636,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10652,113,1532,0,179,1669,1708,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10653,113,1708,0,180,1532,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10654,113,1636,0,181,1708,1655,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10655,113,1655,0,182,1636,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10656,113,1535,0,183,1655,1709,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10657,113,1709,0,184,1535,1710,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10658,113,1710,0,185,1709,1711,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10659,113,1711,0,186,1710,1712,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10660,113,1712,0,187,1711,1639,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10661,113,1639,0,188,1712,1517,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10662,113,1517,0,189,1639,1713,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10663,113,1713,0,190,1517,1505,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10664,113,1505,0,191,1713,1648,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10665,113,1648,0,192,1505,1697,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10666,113,1697,0,193,1648,1714,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10667,113,1714,0,194,1697,1689,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10668,113,1689,0,195,1714,1654,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10669,113,1654,0,196,1689,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10670,113,1524,0,197,1654,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10671,113,1532,0,198,1524,1715,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10672,113,1715,0,199,1532,1716,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10673,113,1716,0,200,1715,1717,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10674,113,1717,0,201,1716,1666,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10675,113,1666,0,202,1717,1652,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10676,113,1652,0,203,1666,1513,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10677,113,1513,0,204,1652,1639,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10678,113,1639,0,205,1513,1528,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10679,113,1528,0,206,1639,1713,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10680,113,1713,0,207,1528,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10681,113,1546,0,208,1713,1718,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10682,113,1718,0,209,1546,1719,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10683,113,1719,0,210,1718,1510,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10684,113,1510,0,211,1719,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10685,113,1544,0,212,1510,1698,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10686,113,1698,0,213,1544,1648,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10687,113,1648,0,214,1698,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10688,113,1636,0,215,1648,1496,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10689,113,1496,0,216,1636,1694,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10690,113,1694,0,217,1496,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10691,113,1508,0,218,1694,1494,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10692,113,1494,0,219,1508,1495,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10693,113,1495,0,220,1494,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10694,113,1649,0,221,1495,1720,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10695,113,1720,0,222,1649,1506,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10696,113,1506,0,223,1720,1512,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10697,113,1512,0,224,1506,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10698,113,1499,0,225,1512,1713,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10699,113,1713,0,226,1499,1632,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10700,113,1632,0,227,1713,1523,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10701,113,1523,0,228,1632,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10702,113,1508,0,229,1523,1640,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10703,113,1640,0,230,1508,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10704,113,1524,0,231,1640,1556,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10705,113,1556,0,232,1524,1684,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10706,113,1684,0,233,1556,1513,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10707,113,1513,0,234,1684,1653,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10708,113,1653,0,235,1513,1665,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10709,113,1665,0,236,1653,1666,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10710,113,1666,0,237,1665,1634,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10711,113,1634,0,238,1666,1667,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10712,113,1667,0,239,1634,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10713,113,1549,0,240,1667,1668,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10714,113,1668,0,241,1549,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10715,113,1549,0,242,1668,1669,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10716,113,1669,0,243,1549,1670,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10717,113,1670,0,244,1669,1654,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10718,113,1654,0,245,1670,1671,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10719,113,1671,0,246,1654,1672,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10720,113,1672,0,247,1671,1673,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10721,113,1673,0,248,1672,1674,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10722,113,1674,0,249,1673,1675,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10723,113,1675,0,250,1674,1676,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10724,113,1676,0,251,1675,1514,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10725,113,1514,0,252,1676,1677,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10726,113,1677,0,253,1514,1678,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10727,113,1678,0,254,1677,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10728,113,1597,0,255,1678,1679,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10729,113,1679,0,256,1597,1680,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10730,113,1680,0,257,1679,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10731,113,1597,0,258,1680,1681,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10732,113,1681,0,259,1597,1682,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10733,113,1682,0,260,1681,1683,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10734,113,1683,0,261,1682,1672,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10735,113,1672,0,262,1683,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10736,113,1524,0,263,1672,1684,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10737,113,1684,0,264,1524,1671,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10738,113,1671,0,265,1684,1683,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10739,113,1683,0,266,1671,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10740,113,1499,0,267,1683,1685,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10741,113,1685,0,268,1499,1505,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10742,113,1505,0,269,1685,1686,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10743,113,1686,0,270,1505,1687,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10744,113,1687,0,271,1686,1688,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10745,113,1688,0,272,1687,1673,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10746,113,1673,0,273,1688,1674,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10747,113,1674,0,274,1673,1675,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10748,113,1675,0,275,1674,1676,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10749,113,1676,0,276,1675,1514,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10750,113,1514,0,277,1676,1677,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10751,113,1677,0,278,1514,1678,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10752,113,1678,0,279,1677,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10753,113,1597,0,280,1678,1679,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10754,113,1679,0,281,1597,1680,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10755,113,1680,0,282,1679,1597,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10756,113,1597,0,283,1680,1681,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10757,113,1681,0,284,1597,1682,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10758,113,1682,0,285,1681,1689,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10759,113,1689,0,286,1682,1690,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10760,113,1690,0,287,1689,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10761,113,1544,0,288,1690,1691,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10762,113,1691,0,289,1544,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10763,113,1549,0,290,1691,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10764,113,1509,0,291,1549,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10765,113,1499,0,292,1509,1692,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10766,113,1692,0,293,1499,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10767,113,1549,0,294,1692,1693,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10768,113,1693,0,295,1549,1635,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10769,113,1635,0,296,1693,1694,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10770,113,1694,0,297,1635,1646,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10771,113,1646,0,298,1694,1695,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10772,113,1695,0,299,1646,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10773,113,1499,0,300,1695,1696,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10774,113,1696,0,301,1499,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10775,113,1649,0,302,1696,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10776,113,1499,0,303,1649,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10777,113,1509,0,304,1499,1697,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10778,113,1697,0,305,1509,1510,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10779,113,1510,0,306,1697,1661,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10780,113,1661,0,307,1510,1698,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10781,113,1698,0,308,1661,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10782,113,1508,0,309,1698,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10783,113,1532,0,310,1508,1699,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10784,113,1699,0,311,1532,1560,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10785,113,1560,0,312,1699,1671,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10786,113,1671,0,313,1560,1517,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10787,113,1517,0,314,1671,1655,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10788,113,1655,0,315,1517,1700,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10789,113,1700,0,316,1655,1672,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10790,113,1672,0,317,1700,1500,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10791,113,1500,0,318,1672,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10792,113,1546,0,319,1500,1701,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10793,113,1701,0,320,1546,1632,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10794,113,1632,0,321,1701,1633,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10795,113,1633,0,322,1632,1634,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10796,113,1634,0,323,1633,1538,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10797,113,1538,0,324,1634,1635,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10798,113,1635,0,325,1538,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10799,113,1636,0,326,1635,1637,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10800,113,1637,0,327,1636,1638,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10801,113,1638,0,328,1637,1502,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10802,113,1502,0,329,1638,1639,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10803,113,1639,0,330,1502,1640,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10804,113,1640,0,331,1639,1641,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10805,113,1641,0,332,1640,1642,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10806,113,1642,0,333,1641,1634,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10807,113,1634,0,334,1642,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10808,113,1508,0,335,1634,1542,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10809,113,1542,0,336,1508,1643,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10810,113,1643,0,337,1542,1556,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10811,113,1556,0,338,1643,1644,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10812,113,1644,0,339,1556,1521,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10813,113,1521,0,340,1644,1645,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10814,113,1645,0,341,1521,1646,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10815,113,1646,0,342,1645,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10816,113,1549,0,343,1646,1647,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10817,113,1647,0,344,1549,1642,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10818,113,1642,0,345,1647,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10819,113,1546,0,346,1642,1648,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10820,113,1648,0,347,1546,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10821,113,1509,0,348,1648,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10822,113,1649,0,349,1509,1645,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10823,113,1645,0,350,1649,1528,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10824,113,1528,0,351,1645,1578,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10825,113,1578,0,352,1528,1650,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10826,113,1650,0,353,1578,1549,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10827,113,1549,0,354,1650,1651,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10828,113,1651,0,355,1549,1652,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10829,113,1652,0,356,1651,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10830,113,1508,0,357,1652,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10831,113,1499,0,358,1508,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10832,113,1532,0,359,1499,1560,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10833,113,1560,0,360,1532,1653,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10834,113,1653,0,361,1560,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10835,113,1546,0,362,1653,1647,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10836,113,1647,0,363,1546,1654,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10837,113,1654,0,364,1647,1655,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10838,113,1655,0,365,1654,1656,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10839,113,1656,0,366,1655,1657,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10840,113,1657,0,367,1656,1658,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10841,113,1658,0,368,1657,1659,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10842,113,1659,0,369,1658,1660,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10843,113,1660,0,370,1659,1505,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10844,113,1505,0,371,1660,1500,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10845,113,1500,0,372,1505,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10846,113,1544,0,373,1500,1661,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10847,113,1661,0,374,1544,1637,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10848,113,1637,0,375,1661,1662,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10849,113,1662,0,376,1637,1663,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10850,113,1663,0,377,1662,1497,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10851,113,1497,0,378,1663,1542,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10852,113,1542,0,379,1497,1553,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10853,113,1553,0,380,1542,1517,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10854,113,1517,0,381,1553,1664,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10855,113,1664,0,382,1517,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10856,113,1535,0,383,1664,1542,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10857,113,1542,0,384,1535,1510,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10858,113,1510,0,385,1542,1702,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10859,113,1702,0,386,1510,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10860,113,1532,0,387,1702,1491,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10861,113,1491,0,388,1532,1578,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10862,113,1578,0,389,1491,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10863,113,1524,0,390,1578,1697,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10864,113,1697,0,391,1524,1651,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10865,113,1651,0,392,1697,1635,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10866,113,1635,0,393,1651,1703,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10867,113,1703,0,394,1635,1498,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10868,113,1498,0,395,1703,1692,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10869,113,1692,0,396,1498,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10870,113,1535,0,397,1692,1704,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10871,113,1704,0,398,1535,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10872,113,1546,0,399,1704,1528,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10873,113,1528,0,400,1546,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10874,113,1546,0,401,1528,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10875,113,1544,0,402,1546,1509,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10876,113,1509,0,403,1544,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10877,113,1535,0,404,1509,1502,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10878,113,1502,0,405,1535,1705,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10879,113,1705,0,406,1502,1706,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10880,113,1706,0,407,1705,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10881,113,1649,0,408,1706,1707,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10882,113,1707,0,409,1649,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10883,113,1636,0,410,1707,1669,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10884,113,1669,0,411,1636,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10885,113,1532,0,412,1669,1708,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10886,113,1708,0,413,1532,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10887,113,1636,0,414,1708,1655,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10888,113,1655,0,415,1636,1535,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10889,113,1535,0,416,1655,1709,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10890,113,1709,0,417,1535,1710,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10891,113,1710,0,418,1709,1711,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10892,113,1711,0,419,1710,1712,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10893,113,1712,0,420,1711,1639,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10894,113,1639,0,421,1712,1517,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10895,113,1517,0,422,1639,1713,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10896,113,1713,0,423,1517,1505,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10897,113,1505,0,424,1713,1648,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10898,113,1648,0,425,1505,1697,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10899,113,1697,0,426,1648,1714,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10900,113,1714,0,427,1697,1689,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10901,113,1689,0,428,1714,1654,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10902,113,1654,0,429,1689,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10903,113,1524,0,430,1654,1532,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10904,113,1532,0,431,1524,1715,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10905,113,1715,0,432,1532,1716,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10906,113,1716,0,433,1715,1717,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10907,113,1717,0,434,1716,1666,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10908,113,1666,0,435,1717,1652,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10909,113,1652,0,436,1666,1513,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10910,113,1513,0,437,1652,1639,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10911,113,1639,0,438,1513,1528,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10912,113,1528,0,439,1639,1713,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10913,113,1713,0,440,1528,1546,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10914,113,1546,0,441,1713,1718,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10915,113,1718,0,442,1546,1719,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10916,113,1719,0,443,1718,1510,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10917,113,1510,0,444,1719,1544,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10918,113,1544,0,445,1510,1698,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10919,113,1698,0,446,1544,1648,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10920,113,1648,0,447,1698,1636,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10921,113,1636,0,448,1648,1496,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10922,113,1496,0,449,1636,1694,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10923,113,1694,0,450,1496,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10924,113,1508,0,451,1694,1494,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10925,113,1494,0,452,1508,1495,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10926,113,1495,0,453,1494,1649,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10927,113,1649,0,454,1495,1720,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10928,113,1720,0,455,1649,1506,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10929,113,1506,0,456,1720,1512,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10930,113,1512,0,457,1506,1499,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10931,113,1499,0,458,1512,1713,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10932,113,1713,0,459,1499,1632,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10933,113,1632,0,460,1713,1523,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10934,113,1523,0,461,1632,1508,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10935,113,1508,0,462,1523,1640,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10936,113,1640,0,463,1508,1524,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10937,113,1524,0,464,1640,1556,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10938,113,1556,0,465,1524,1684,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10939,113,1684,0,466,1556,1513,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10940,113,1513,0,467,1684,0,10,1066986541,1,141,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10941,11,1721,0,0,0,1722,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10942,11,1722,0,1,1721,1721,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10943,11,1721,0,2,1722,1722,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10944,11,1722,0,3,1721,0,3,1033920746,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10945,12,1599,0,0,0,1723,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10946,12,1723,0,1,1599,1599,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10947,12,1599,0,2,1723,1723,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10948,12,1723,0,3,1599,0,3,1033920775,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10949,14,1599,0,0,0,1599,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10950,14,1599,0,1,1599,1724,4,1033920830,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10951,14,1724,0,2,1599,1724,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10952,14,1724,0,3,1724,1725,4,1033920830,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10953,14,1725,0,4,1724,1726,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10954,14,1726,0,5,1725,1725,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10955,14,1725,0,6,1726,1726,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10956,14,1726,0,7,1725,0,4,1033920830,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10957,13,1727,0,0,0,1727,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10958,13,1727,0,1,1727,0,3,1033920794,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10959,177,1728,0,0,0,1723,3,1072181000,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10960,177,1723,0,1,1728,1728,3,1072181000,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10961,177,1728,0,2,1723,1723,3,1072181000,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10962,177,1723,0,3,1728,1724,3,1072181000,2,6,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10963,177,1724,0,4,1723,1729,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10964,177,1729,0,5,1724,1730,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10965,177,1730,0,6,1729,1488,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10966,177,1488,0,7,1730,1728,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10967,177,1728,0,8,1488,1724,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10968,177,1724,0,9,1728,1724,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10969,177,1724,0,10,1724,1729,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10970,177,1729,0,11,1724,1730,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10971,177,1730,0,12,1729,1488,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10972,177,1488,0,13,1730,1728,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10973,177,1728,0,14,1488,1724,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10974,177,1724,0,15,1728,0,3,1072181000,2,7,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10975,10,1728,0,0,0,1728,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10976,10,1728,0,1,1728,1724,4,1033920665,2,8,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10977,10,1724,0,2,1728,1724,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10978,10,1724,0,3,1724,1728,4,1033920665,2,9,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10979,10,1728,0,4,1724,1726,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10980,10,1726,0,5,1728,1728,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10981,10,1728,0,6,1726,1726,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10982,10,1726,0,7,1728,0,4,1033920665,2,12,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10983,44,1731,0,0,0,1732,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10984,44,1732,0,1,1731,1731,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10985,44,1731,0,2,1732,1732,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10986,44,1732,0,3,1731,0,1,1066384457,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10987,43,1733,0,0,0,1733,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10988,43,1733,0,1,1733,1673,14,1066384365,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10989,43,1673,0,2,1733,1734,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10990,43,1734,0,3,1673,1673,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10991,43,1673,0,4,1734,1734,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10992,43,1734,0,5,1673,0,14,1066384365,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10993,45,1735,0,0,0,1736,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10994,45,1736,0,1,1735,1737,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10995,45,1737,0,2,1736,1735,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10996,45,1735,0,3,1737,1736,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10997,45,1736,0,4,1735,1737,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10998,45,1737,0,5,1736,1738,14,1066388816,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (10999,45,1738,0,6,1737,1739,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11000,45,1739,0,7,1738,1740,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11001,45,1740,0,8,1739,1738,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11002,45,1738,0,9,1740,1739,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11003,45,1739,0,10,1738,1740,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11004,45,1740,0,11,1739,0,14,1066388816,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11005,115,1741,0,0,0,1741,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11006,115,1741,0,1,1741,1731,14,1066991725,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11007,115,1731,0,2,1741,1741,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11008,115,1741,0,3,1731,1731,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11009,115,1731,0,4,1741,1741,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11010,115,1741,0,5,1731,0,14,1066991725,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11011,116,1742,0,0,0,1743,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11012,116,1743,0,1,1742,1742,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11013,116,1742,0,2,1743,1743,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11014,116,1743,0,3,1742,1738,14,1066992054,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11015,116,1738,0,4,1743,1744,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11016,116,1744,0,5,1738,1738,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11017,116,1738,0,6,1744,1744,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11018,116,1744,0,7,1738,0,14,1066992054,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11019,46,1735,0,0,0,1736,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11020,46,1736,0,1,1735,1737,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11021,46,1737,0,2,1736,1735,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11022,46,1735,0,3,1737,1736,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11023,46,1736,0,4,1735,1737,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11024,46,1737,0,5,1736,0,1,1066389805,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11025,136,1745,0,0,0,1745,15,1069164104,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11026,136,1745,0,1,1745,1746,15,1069164104,11,161,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11027,136,1746,0,2,1745,1747,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11028,136,1747,0,3,1746,1748,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11029,136,1748,0,4,1747,1749,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11030,136,1749,0,5,1748,1750,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11031,136,1750,0,6,1749,1751,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11032,136,1751,0,7,1750,1752,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11033,136,1752,0,8,1751,1746,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11034,136,1746,0,9,1752,1747,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11035,136,1747,0,10,1746,1748,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11036,136,1748,0,11,1747,1749,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11037,136,1749,0,12,1748,1750,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11038,136,1750,0,13,1749,1751,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11039,136,1751,0,14,1750,1752,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11040,136,1752,0,15,1751,0,15,1069164104,11,182,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11041,178,1753,0,0,0,1754,1,1076579382,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11042,178,1754,0,1,1753,1755,1,1076579382,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11043,178,1755,0,2,1754,1753,1,1076579382,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11044,178,1753,0,3,1755,1754,1,1076579382,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11045,178,1754,0,4,1753,1755,1,1076579382,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11046,178,1755,0,5,1754,0,1,1076579382,11,4,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11070,179,1755,0,5,1754,0,19,1076579436,11,183,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11069,179,1754,0,4,1753,1755,19,1076579436,11,183,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11068,179,1753,0,3,1755,1754,19,1076579436,11,183,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11067,179,1755,0,2,1754,1753,19,1076579436,11,183,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11066,179,1754,0,1,1753,1755,19,1076579436,11,183,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11065,179,1753,0,0,0,1754,19,1076579436,11,183,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11053,180,1753,0,0,0,1754,14,1076579512,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11054,180,1754,0,1,1753,1755,14,1076579512,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11055,180,1755,0,2,1754,1753,14,1076579512,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11056,180,1753,0,3,1755,1754,14,1076579512,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11057,180,1754,0,4,1753,1755,14,1076579512,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11058,180,1755,0,5,1754,1738,14,1076579512,11,152,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11059,180,1738,0,6,1755,1739,14,1076579512,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11060,180,1739,0,7,1738,1756,14,1076579512,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11061,180,1756,0,8,1739,1738,14,1076579512,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11062,180,1738,0,9,1756,1739,14,1076579512,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11063,180,1739,0,10,1738,1756,14,1076579512,11,155,'',0);
INSERT INTO ezsearch_object_word_link VALUES (11064,180,1756,0,11,1739,0,14,1076579512,11,155,'',0);

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


INSERT INTO ezsearch_word VALUES (1402,'news',2);
INSERT INTO ezsearch_word VALUES (1403,'off',1);
INSERT INTO ezsearch_word VALUES (1404,'topic',1);
INSERT INTO ezsearch_word VALUES (1547,'vero',2);
INSERT INTO ezsearch_word VALUES (1546,'at',4);
INSERT INTO ezsearch_word VALUES (1545,'facilisis',2);
INSERT INTO ezsearch_word VALUES (1544,'nulla',5);
INSERT INTO ezsearch_word VALUES (1543,'feugiat',3);
INSERT INTO ezsearch_word VALUES (1542,'eu',5);
INSERT INTO ezsearch_word VALUES (1541,'illum',3);
INSERT INTO ezsearch_word VALUES (1540,'molestie',3);
INSERT INTO ezsearch_word VALUES (1539,'esse',3);
INSERT INTO ezsearch_word VALUES (1538,'velit',5);
INSERT INTO ezsearch_word VALUES (1537,'vulputate',3);
INSERT INTO ezsearch_word VALUES (1536,'hendrerit',3);
INSERT INTO ezsearch_word VALUES (1535,'in',5);
INSERT INTO ezsearch_word VALUES (1534,'iriure',3);
INSERT INTO ezsearch_word VALUES (1533,'eum',3);
INSERT INTO ezsearch_word VALUES (1532,'vel',5);
INSERT INTO ezsearch_word VALUES (1531,'autem',3);
INSERT INTO ezsearch_word VALUES (1530,'duis',3);
INSERT INTO ezsearch_word VALUES (1529,'consequat',3);
INSERT INTO ezsearch_word VALUES (1528,'commodo',5);
INSERT INTO ezsearch_word VALUES (1527,'ea',3);
INSERT INTO ezsearch_word VALUES (1526,'ex',3);
INSERT INTO ezsearch_word VALUES (1525,'aliquip',3);
INSERT INTO ezsearch_word VALUES (1524,'nisl',4);
INSERT INTO ezsearch_word VALUES (1523,'lobortis',4);
INSERT INTO ezsearch_word VALUES (1522,'suscipit',3);
INSERT INTO ezsearch_word VALUES (1521,'ullamcorper',5);
INSERT INTO ezsearch_word VALUES (1520,'tation',3);
INSERT INTO ezsearch_word VALUES (1519,'exerci',3);
INSERT INTO ezsearch_word VALUES (1518,'nostrud',3);
INSERT INTO ezsearch_word VALUES (1517,'quis',5);
INSERT INTO ezsearch_word VALUES (1516,'veniam',3);
INSERT INTO ezsearch_word VALUES (1515,'minim',3);
INSERT INTO ezsearch_word VALUES (1514,'ad',4);
INSERT INTO ezsearch_word VALUES (1513,'enim',4);
INSERT INTO ezsearch_word VALUES (1512,'wisi',4);
INSERT INTO ezsearch_word VALUES (1511,'volutpat',3);
INSERT INTO ezsearch_word VALUES (1510,'erat',5);
INSERT INTO ezsearch_word VALUES (1509,'aliquam',5);
INSERT INTO ezsearch_word VALUES (1508,'magna',5);
INSERT INTO ezsearch_word VALUES (1507,'dolore',3);
INSERT INTO ezsearch_word VALUES (1506,'laoreet',4);
INSERT INTO ezsearch_word VALUES (1505,'ut',5);
INSERT INTO ezsearch_word VALUES (1504,'tincidunt',3);
INSERT INTO ezsearch_word VALUES (1503,'euismod',3);
INSERT INTO ezsearch_word VALUES (1502,'nibh',5);
INSERT INTO ezsearch_word VALUES (1501,'nonummy',3);
INSERT INTO ezsearch_word VALUES (1500,'diam',5);
INSERT INTO ezsearch_word VALUES (1499,'sed',5);
INSERT INTO ezsearch_word VALUES (1498,'elit',4);
INSERT INTO ezsearch_word VALUES (1497,'adipiscing',5);
INSERT INTO ezsearch_word VALUES (1496,'consectetuer',4);
INSERT INTO ezsearch_word VALUES (1495,'amet',4);
INSERT INTO ezsearch_word VALUES (1494,'sit',4);
INSERT INTO ezsearch_word VALUES (1493,'dolor',3);
INSERT INTO ezsearch_word VALUES (1492,'ipsum',3);
INSERT INTO ezsearch_word VALUES (1491,'lorem',4);
INSERT INTO ezsearch_word VALUES (1490,'arrived',1);
INSERT INTO ezsearch_word VALUES (1489,'just',3);
INSERT INTO ezsearch_word VALUES (1488,'the',2);
INSERT INTO ezsearch_word VALUES (1487,'cards',1);
INSERT INTO ezsearch_word VALUES (1486,'business',1);
INSERT INTO ezsearch_word VALUES (1485,'new',2);
INSERT INTO ezsearch_word VALUES (1484,'reports',1);
INSERT INTO ezsearch_word VALUES (1548,'eros',2);
INSERT INTO ezsearch_word VALUES (1549,'et',4);
INSERT INTO ezsearch_word VALUES (1550,'accumsan',2);
INSERT INTO ezsearch_word VALUES (1551,'iusto',2);
INSERT INTO ezsearch_word VALUES (1552,'odio',2);
INSERT INTO ezsearch_word VALUES (1553,'dignissim',4);
INSERT INTO ezsearch_word VALUES (1554,'qui',2);
INSERT INTO ezsearch_word VALUES (1555,'blandit',2);
INSERT INTO ezsearch_word VALUES (1556,'praesent',4);
INSERT INTO ezsearch_word VALUES (1557,'luptatum',2);
INSERT INTO ezsearch_word VALUES (1558,'zzril',2);
INSERT INTO ezsearch_word VALUES (1559,'delenit',2);
INSERT INTO ezsearch_word VALUES (1560,'augue',4);
INSERT INTO ezsearch_word VALUES (1561,'te',2);
INSERT INTO ezsearch_word VALUES (1562,'feugait',2);
INSERT INTO ezsearch_word VALUES (1563,'facilisi',2);
INSERT INTO ezsearch_word VALUES (1564,'annual',1);
INSERT INTO ezsearch_word VALUES (1565,'report',1);
INSERT INTO ezsearch_word VALUES (1566,'we',3);
INSERT INTO ezsearch_word VALUES (1567,'ve',2);
INSERT INTO ezsearch_word VALUES (1568,'released',1);
INSERT INTO ezsearch_word VALUES (1569,'our',3);
INSERT INTO ezsearch_word VALUES (1570,'staff',1);
INSERT INTO ezsearch_word VALUES (1571,'jkhkjh',1);
INSERT INTO ezsearch_word VALUES (1572,'kjhjkh',1);
INSERT INTO ezsearch_word VALUES (1573,'jkhjkh',1);
INSERT INTO ezsearch_word VALUES (1574,'kljjkl',1);
INSERT INTO ezsearch_word VALUES (1575,'lkjlkj',1);
INSERT INTO ezsearch_word VALUES (1576,'employee',1);
INSERT INTO ezsearch_word VALUES (1577,'got',1);
INSERT INTO ezsearch_word VALUES (1578,'a',6);
INSERT INTO ezsearch_word VALUES (1579,'member',1);
INSERT INTO ezsearch_word VALUES (1580,'of',1);
INSERT INTO ezsearch_word VALUES (1581,'team',1);
INSERT INTO ezsearch_word VALUES (1582,'contact',1);
INSERT INTO ezsearch_word VALUES (1583,'persons',1);
INSERT INTO ezsearch_word VALUES (1584,'john',1);
INSERT INTO ezsearch_word VALUES (1585,'doe',1);
INSERT INTO ezsearch_word VALUES (1586,'developer',1);
INSERT INTO ezsearch_word VALUES (1587,'0',3);
INSERT INTO ezsearch_word VALUES (1588,'2',3);
INSERT INTO ezsearch_word VALUES (1589,'3',1);
INSERT INTO ezsearch_word VALUES (1590,'555',3);
INSERT INTO ezsearch_word VALUES (1591,'1234',1);
INSERT INTO ezsearch_word VALUES (1592,'doe@example.com',1);
INSERT INTO ezsearch_word VALUES (1593,'http',1);
INSERT INTO ezsearch_word VALUES (1594,'www.example.com',1);
INSERT INTO ezsearch_word VALUES (1595,'nice',1);
INSERT INTO ezsearch_word VALUES (1596,'guy',1);
INSERT INTO ezsearch_word VALUES (1597,'per',2);
INSERT INTO ezsearch_word VALUES (1598,'son',1);
INSERT INTO ezsearch_word VALUES (1599,'administrator',3);
INSERT INTO ezsearch_word VALUES (1600,'1236',1);
INSERT INTO ezsearch_word VALUES (1601,'per.son@example.com',1);
INSERT INTO ezsearch_word VALUES (1602,'is',1);
INSERT INTO ezsearch_word VALUES (1603,'very',1);
INSERT INTO ezsearch_word VALUES (1604,'active',1);
INSERT INTO ezsearch_word VALUES (1605,'person',1);
INSERT INTO ezsearch_word VALUES (1606,'companies',1);
INSERT INTO ezsearch_word VALUES (1607,'my',1);
INSERT INTO ezsearch_word VALUES (1608,'company',3);
INSERT INTO ezsearch_word VALUES (1609,'c100',1);
INSERT INTO ezsearch_word VALUES (1610,'1',1);
INSERT INTO ezsearch_word VALUES (1611,'mystreet',1);
INSERT INTO ezsearch_word VALUES (1612,'small',1);
INSERT INTO ezsearch_word VALUES (1613,'work',1);
INSERT INTO ezsearch_word VALUES (1614,'with',1);
INSERT INTO ezsearch_word VALUES (1615,'partner',1);
INSERT INTO ezsearch_word VALUES (1616,'2345',1);
INSERT INTO ezsearch_word VALUES (1617,'2344',1);
INSERT INTO ezsearch_word VALUES (1618,'files',1);
INSERT INTO ezsearch_word VALUES (1619,'here',1);
INSERT INTO ezsearch_word VALUES (1620,'you',1);
INSERT INTO ezsearch_word VALUES (1621,'can',1);
INSERT INTO ezsearch_word VALUES (1622,'download',1);
INSERT INTO ezsearch_word VALUES (1623,'all',1);
INSERT INTO ezsearch_word VALUES (1624,'handbooks',1);
INSERT INTO ezsearch_word VALUES (1625,'documents',1);
INSERT INTO ezsearch_word VALUES (1626,'routines',3);
INSERT INTO ezsearch_word VALUES (1627,'logos',1);
INSERT INTO ezsearch_word VALUES (1628,'information',1);
INSERT INTO ezsearch_word VALUES (1629,'general',1);
INSERT INTO ezsearch_word VALUES (1630,'about',1);
INSERT INTO ezsearch_word VALUES (1631,'vacation',1);
INSERT INTO ezsearch_word VALUES (1632,'vestibulum',2);
INSERT INTO ezsearch_word VALUES (1633,'viverra',2);
INSERT INTO ezsearch_word VALUES (1634,'tristique',2);
INSERT INTO ezsearch_word VALUES (1635,'vivamus',2);
INSERT INTO ezsearch_word VALUES (1636,'vitae',2);
INSERT INTO ezsearch_word VALUES (1637,'quam',2);
INSERT INTO ezsearch_word VALUES (1638,'mauris',2);
INSERT INTO ezsearch_word VALUES (1639,'phasellus',2);
INSERT INTO ezsearch_word VALUES (1640,'nec',2);
INSERT INTO ezsearch_word VALUES (1641,'metus',2);
INSERT INTO ezsearch_word VALUES (1642,'integer',2);
INSERT INTO ezsearch_word VALUES (1643,'sem',2);
INSERT INTO ezsearch_word VALUES (1644,'rutrum',2);
INSERT INTO ezsearch_word VALUES (1645,'ligula',2);
INSERT INTO ezsearch_word VALUES (1646,'fusce',2);
INSERT INTO ezsearch_word VALUES (1647,'est',2);
INSERT INTO ezsearch_word VALUES (1648,'orci',2);
INSERT INTO ezsearch_word VALUES (1649,'lectus',2);
INSERT INTO ezsearch_word VALUES (1650,'rhoncus',2);
INSERT INTO ezsearch_word VALUES (1651,'semper',2);
INSERT INTO ezsearch_word VALUES (1652,'eget',2);
INSERT INTO ezsearch_word VALUES (1653,'pellentesque',2);
INSERT INTO ezsearch_word VALUES (1654,'ac',2);
INSERT INTO ezsearch_word VALUES (1655,'massa',2);
INSERT INTO ezsearch_word VALUES (1656,'gravida',2);
INSERT INTO ezsearch_word VALUES (1657,'vehicula',2);
INSERT INTO ezsearch_word VALUES (1658,'suspendisse',2);
INSERT INTO ezsearch_word VALUES (1659,'potenti',2);
INSERT INTO ezsearch_word VALUES (1660,'aenean',2);
INSERT INTO ezsearch_word VALUES (1661,'purus',2);
INSERT INTO ezsearch_word VALUES (1662,'sodales',2);
INSERT INTO ezsearch_word VALUES (1663,'id',2);
INSERT INTO ezsearch_word VALUES (1664,'libero',2);
INSERT INTO ezsearch_word VALUES (1665,'habitant',1);
INSERT INTO ezsearch_word VALUES (1666,'morbi',1);
INSERT INTO ezsearch_word VALUES (1667,'senectus',1);
INSERT INTO ezsearch_word VALUES (1668,'netus',1);
INSERT INTO ezsearch_word VALUES (1669,'malesuada',1);
INSERT INTO ezsearch_word VALUES (1670,'fames',1);
INSERT INTO ezsearch_word VALUES (1671,'turpis',1);
INSERT INTO ezsearch_word VALUES (1672,'egestas',1);
INSERT INTO ezsearch_word VALUES (1673,'class',2);
INSERT INTO ezsearch_word VALUES (1674,'aptent',1);
INSERT INTO ezsearch_word VALUES (1675,'taciti',1);
INSERT INTO ezsearch_word VALUES (1676,'sociosqu',1);
INSERT INTO ezsearch_word VALUES (1677,'litora',1);
INSERT INTO ezsearch_word VALUES (1678,'torquent',1);
INSERT INTO ezsearch_word VALUES (1679,'conubia',1);
INSERT INTO ezsearch_word VALUES (1680,'nostra',1);
INSERT INTO ezsearch_word VALUES (1681,'inceptos',1);
INSERT INTO ezsearch_word VALUES (1682,'hymenaeos',1);
INSERT INTO ezsearch_word VALUES (1683,'cras',1);
INSERT INTO ezsearch_word VALUES (1684,'non',1);
INSERT INTO ezsearch_word VALUES (1685,'leo',1);
INSERT INTO ezsearch_word VALUES (1686,'dui',1);
INSERT INTO ezsearch_word VALUES (1687,'iaculis',1);
INSERT INTO ezsearch_word VALUES (1688,'pharetra',1);
INSERT INTO ezsearch_word VALUES (1689,'donec',1);
INSERT INTO ezsearch_word VALUES (1690,'felis',1);
INSERT INTO ezsearch_word VALUES (1691,'aliquet',1);
INSERT INTO ezsearch_word VALUES (1692,'ultricies',1);
INSERT INTO ezsearch_word VALUES (1693,'urna',1);
INSERT INTO ezsearch_word VALUES (1694,'risus',1);
INSERT INTO ezsearch_word VALUES (1695,'pede',1);
INSERT INTO ezsearch_word VALUES (1696,'ornare',1);
INSERT INTO ezsearch_word VALUES (1697,'auctor',1);
INSERT INTO ezsearch_word VALUES (1698,'elementum',1);
INSERT INTO ezsearch_word VALUES (1699,'luctus',1);
INSERT INTO ezsearch_word VALUES (1700,'nullam',1);
INSERT INTO ezsearch_word VALUES (1701,'mi',1);
INSERT INTO ezsearch_word VALUES (1702,'maecenas',1);
INSERT INTO ezsearch_word VALUES (1703,'arcu',1);
INSERT INTO ezsearch_word VALUES (1704,'congue',1);
INSERT INTO ezsearch_word VALUES (1705,'etiam',1);
INSERT INTO ezsearch_word VALUES (1706,'sapien',1);
INSERT INTO ezsearch_word VALUES (1707,'mollis',1);
INSERT INTO ezsearch_word VALUES (1708,'fermentum',1);
INSERT INTO ezsearch_word VALUES (1709,'hac',1);
INSERT INTO ezsearch_word VALUES (1710,'habitasse',1);
INSERT INTO ezsearch_word VALUES (1711,'platea',1);
INSERT INTO ezsearch_word VALUES (1712,'dictumst',1);
INSERT INTO ezsearch_word VALUES (1713,'neque',1);
INSERT INTO ezsearch_word VALUES (1714,'posuere',1);
INSERT INTO ezsearch_word VALUES (1715,'nunc',1);
INSERT INTO ezsearch_word VALUES (1716,'porttitor',1);
INSERT INTO ezsearch_word VALUES (1717,'venenatis',1);
INSERT INTO ezsearch_word VALUES (1718,'sagittis',1);
INSERT INTO ezsearch_word VALUES (1719,'scelerisque',1);
INSERT INTO ezsearch_word VALUES (1720,'curabitur',1);
INSERT INTO ezsearch_word VALUES (1721,'guest',1);
INSERT INTO ezsearch_word VALUES (1722,'accounts',1);
INSERT INTO ezsearch_word VALUES (1723,'users',2);
INSERT INTO ezsearch_word VALUES (1724,'user',3);
INSERT INTO ezsearch_word VALUES (1725,'admin',1);
INSERT INTO ezsearch_word VALUES (1726,'nospam@ez.no',2);
INSERT INTO ezsearch_word VALUES (1727,'editors',1);
INSERT INTO ezsearch_word VALUES (1728,'anonymous',2);
INSERT INTO ezsearch_word VALUES (1729,'group',1);
INSERT INTO ezsearch_word VALUES (1730,'for',1);
INSERT INTO ezsearch_word VALUES (1731,'setup',2);
INSERT INTO ezsearch_word VALUES (1732,'links',1);
INSERT INTO ezsearch_word VALUES (1733,'classes',1);
INSERT INTO ezsearch_word VALUES (1734,'grouplist',1);
INSERT INTO ezsearch_word VALUES (1735,'look',2);
INSERT INTO ezsearch_word VALUES (1736,'and',2);
INSERT INTO ezsearch_word VALUES (1737,'feel',2);
INSERT INTO ezsearch_word VALUES (1738,'content',3);
INSERT INTO ezsearch_word VALUES (1739,'edit',2);
INSERT INTO ezsearch_word VALUES (1740,'136',1);
INSERT INTO ezsearch_word VALUES (1741,'cache',1);
INSERT INTO ezsearch_word VALUES (1742,'url',1);
INSERT INTO ezsearch_word VALUES (1743,'translator',1);
INSERT INTO ezsearch_word VALUES (1744,'urltranslator',1);
INSERT INTO ezsearch_word VALUES (1745,'intranet_package',1);
INSERT INTO ezsearch_word VALUES (1746,'copyright',1);
INSERT INTO ezsearch_word VALUES (1747,'&copy',1);
INSERT INTO ezsearch_word VALUES (1748,'ez',1);
INSERT INTO ezsearch_word VALUES (1749,'systems',1);
INSERT INTO ezsearch_word VALUES (1750,'as',1);
INSERT INTO ezsearch_word VALUES (1751,'1999',1);
INSERT INTO ezsearch_word VALUES (1752,'2004',1);
INSERT INTO ezsearch_word VALUES (1753,'common',3);
INSERT INTO ezsearch_word VALUES (1754,'ini',3);
INSERT INTO ezsearch_word VALUES (1755,'settings',3);
INSERT INTO ezsearch_word VALUES (1756,'179',1);

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


INSERT INTO ezsession VALUES ('8ef6ac21bc851e40dab18d3ba3ca1904',1076838751,'LastAccessesURI|s:22:\"/content/view/full/156\";eZUserInfoCache_Timestamp|i:1076579190;eZUserGroupsCache_Timestamp|i:1076579190;eZUserLoggedInID|s:2:\"14\";eZUserInfoCache|a:1:{i:14;a:5:{s:16:\"contentobject_id\";s:2:\"14\";s:5:\"login\";s:5:\"admin\";s:5:\"email\";s:12:\"nospam@ez.no\";s:13:\"password_hash\";s:32:\"c78e3b0f3d9244ed8c6d1c29464bdff9\";s:18:\"password_hash_type\";s:1:\"2\";}}eZUserGroupsCache|a:1:{i:14;a:1:{i:0;a:1:{s:2:\"id\";s:2:\"12\";}}}PermissionCachedForUserID|s:2:\"14\";PermissionCachedForUserIDTimestamp|i:1076579190;UserRoles|a:1:{i:0;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:13:\"Administrator\";}}UserPolicies|a:1:{i:2;a:1:{i:0;a:5:{s:2:\"id\";s:3:\"308\";s:7:\"role_id\";s:1:\"2\";s:11:\"module_name\";s:1:\"*\";s:13:\"function_name\";s:1:\"*\";s:10:\"limitation\";s:1:\"*\";}}}eZUserDiscountRulesTimestamp|i:1076579190;eZUserDiscountRules14|a:0:{}eZGlobalSection|a:1:{s:2:\"id\";s:2:\"11\";}CanInstantiateClassesCachedForUser|s:2:\"14\";ClassesCachedTimestamp|i:1076579338;CanInstantiateClasses|i:1;CanInstantiateClassList|a:19:{i:0;a:2:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Folder\";}i:1;a:2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:7:\"Article\";}i:2;a:2:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:10:\"User group\";}i:3;a:2:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:4:\"User\";}i:4;a:2:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:5:\"Image\";}i:5;a:2:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:5:\"Forum\";}i:6;a:2:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:13:\"Forum message\";}i:7;a:2:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:7:\"Product\";}i:8;a:2:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:14:\"Product review\";}i:9;a:2:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:9:\"Info page\";}i:10;a:2:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:4:\"Link\";}i:11;a:2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:4:\"File\";}i:12;a:2:{s:2:\"id\";s:2:\"13\";s:4:\"name\";s:7:\"Comment\";}i:13;a:2:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:10:\"Setup link\";}i:14;a:2:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:13:\"Template look\";}i:15;a:2:{s:2:\"id\";s:2:\"16\";s:4:\"name\";s:7:\"Company\";}i:16;a:2:{s:2:\"id\";s:2:\"17\";s:4:\"name\";s:6:\"Person\";}i:17;a:2:{s:2:\"id\";s:2:\"18\";s:4:\"name\";s:5:\"Event\";}i:18;a:2:{s:2:\"id\";s:2:\"19\";s:4:\"name\";s:19:\"Common ini settings\";}}eZPreferences|a:3:{s:13:\"bookmark_menu\";b:0;s:12:\"history_menu\";b:0;s:13:\"advanced_menu\";s:2:\"on\";}FromGroupID|b:0;ClassesCachedForUser|s:2:\"14\";');

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
INSERT INTO ezurlalias VALUES (14,'users/anonymous_user','a37b7463e2c21098fa1a729dad4b4437','content/view/full/11',1,146,0);
INSERT INTO ezurlalias VALUES (15,'users/guest_accounts','02d4e844e3a660857a3f81585995ffe1','content/view/full/12',1,0,0);
INSERT INTO ezurlalias VALUES (16,'users/administrator_users','1b1d79c16700fd6003ea7be233e754ba','content/view/full/13',1,0,0);
INSERT INTO ezurlalias VALUES (17,'users/editors','0bb9dd665c96bbc1cf36b79180786dea','content/view/full/14',1,0,0);
INSERT INTO ezurlalias VALUES (18,'users/administrator_users/administrator_user','f1305ac5f327a19b451d82719e0c3f5d','content/view/full/15',1,0,0);
INSERT INTO ezurlalias VALUES (20,'media','62933a2951ef01f4eafd9bdf4d3cd2f0','content/view/full/43',1,0,0);
INSERT INTO ezurlalias VALUES (21,'setup','a0f848942ce863cf53c0fa6cc684007d','content/view/full/44',1,0,0);
INSERT INTO ezurlalias VALUES (22,'setup/classes','9e8c46c1357285763cd49ea56c57312d','content/view/full/45',1,24,0);
INSERT INTO ezurlalias VALUES (23,'setup/setup_links','675a9c5ab6fb3f5fdfaa609b7ef9d997','content/view/full/46',1,0,0);
INSERT INTO ezurlalias VALUES (24,'setup/setup_links/classes','75b3e86b0bb8a74fcb38f10fd02945e8','content/view/full/45',1,0,0);
INSERT INTO ezurlalias VALUES (25,'setup/setup_links/setup_objects','a695bd42e59634b44441ca4e4548e94a','content/view/full/47',1,80,0);
INSERT INTO ezurlalias VALUES (26,'setup/fonts_and_colors','db4641c5ea979dba4cfd99ea3267a456','content/view/full/48',1,27,0);
INSERT INTO ezurlalias VALUES (27,'setup/look_and_feel','11f42026b65f2d1801679ba58e443944','content/view/full/48',1,0,0);
INSERT INTO ezurlalias VALUES (29,'news','508c75c8507a2ae5223dfd2faeb98122','content/view/full/50',1,0,0);
INSERT INTO ezurlalias VALUES (37,'news/off_topic','c77d3081eac3bee15b0213bcc89b369b','content/view/full/57',1,0,0);
INSERT INTO ezurlalias VALUES (96,'setup/look_and_feel/intranet','6d6a9d6e8f6cadb080fffb1276dd1e5e','content/view/full/107',1,0,0);
INSERT INTO ezurlalias VALUES (35,'contact','2f8a6bf31f3bd67bd2d9720c58b19c9a','content/view/full/55',1,0,0);
INSERT INTO ezurlalias VALUES (38,'news/reports_','ac624940baa3e037e0467bf2db2743cb','content/view/full/58',1,39,0);
INSERT INTO ezurlalias VALUES (39,'news/reports','f3cbeafbd5dbf7477a9a803d47d4dcbb','content/view/full/58',1,0,0);
INSERT INTO ezurlalias VALUES (40,'news/staff_news','c50e4a6eb10a499c098857026282ceb4','content/view/full/59',1,0,0);
INSERT INTO ezurlalias VALUES (41,'contact/persons','8d26f497abc489a9566eab966cbfe3ed','content/view/full/60',1,0,0);
INSERT INTO ezurlalias VALUES (42,'contact/companies','7b84a445a156acf3dd455ea6f585d78f','content/view/full/61',1,0,0);
INSERT INTO ezurlalias VALUES (43,'files','45b963397aa40d4a0063e0d85e4fe7a1','content/view/full/62',1,0,0);
INSERT INTO ezurlalias VALUES (45,'files/handbooks','7b18bc03d154e9c0643a86d3d2b7d68f','content/view/full/64',1,0,0);
INSERT INTO ezurlalias VALUES (46,'files/documents','2d30f25cef1a92db784bc537e8bf128d','content/view/full/65',1,0,0);
INSERT INTO ezurlalias VALUES (47,'files/company_routines','7ffaba1db587b80e9767abd0ceb00df7','content/view/full/66',1,0,0);
INSERT INTO ezurlalias VALUES (48,'files/logos','ab4749ddb9d45855d2431d2341c1c14e','content/view/full/67',1,0,0);
INSERT INTO ezurlalias VALUES (138,'contact/persons/john_doe','7945048c2293246f22831f5df43ea531','content/view/full/148',1,0,0);
INSERT INTO ezurlalias VALUES (139,'contact/persons/per_son__1','929374712dd2595e1423fd3e5a1fabb6','content/view/full/149',1,0,0);
INSERT INTO ezurlalias VALUES (140,'contact/companies/my_company','01fb086b461ff9993a7494aacdb4e1d0','content/view/full/150',1,0,0);
INSERT INTO ezurlalias VALUES (141,'news/reports/new_business_cards','9f643832f26db5a0599cab139e7729d6','content/view/full/151',1,0,0);
INSERT INTO ezurlalias VALUES (142,'news/off_topic/new_business_cards','101bdc76d2a9e0fcc0dff8ca415709c4','content/view/full/152',1,0,0);
INSERT INTO ezurlalias VALUES (143,'news/reports/annual_report','7d71ac68f1f9c9f03c530add2b18f8d7','content/view/full/153',1,0,0);
INSERT INTO ezurlalias VALUES (144,'news/staff_news/new_employee','9e18db101f2d057531652aba88e141a3','content/view/full/154',1,0,0);
INSERT INTO ezurlalias VALUES (137,'information/vacation_routines','59e579c66a21dc175d202e5ceafc9068','content/view/full/147',1,0,0);
INSERT INTO ezurlalias VALUES (65,'munich1','3a6e2f1cb7b127c4984af22780094240','content/view/full/84',1,69,0);
INSERT INTO ezurlalias VALUES (69,'media/images/news/munich1','0492853131729dac783e4c4dc6e7a676','content/view/full/84',1,0,0);
INSERT INTO ezurlalias VALUES (108,'contact/persons/jh_jh','cf01f10bebd4f9aec52a6778c36c8233','content/view/full/118',1,0,0);
INSERT INTO ezurlalias VALUES (71,'media/images/contact/mr_xxx','e613416ebc175f81b5660d2e1758d1d0','content/view/full/89',1,0,0);
INSERT INTO ezurlalias VALUES (72,'l','2db95e8e1a9267b7a1188556b2013b33','user/logout',0,0,0);
INSERT INTO ezurlalias VALUES (76,'information','bb3ccd5881d651448ded1dac904054ac','content/view/full/93',1,0,0);
INSERT INTO ezurlalias VALUES (77,'information/routines','ed84b3909be89ec2c730ddc2fa7b7a46','content/view/full/94',1,0,0);
INSERT INTO ezurlalias VALUES (78,'setup/setup_links/cache','1f2374cab6280ecfca991a7b6e5119c6','content/view/full/95',1,0,0);
INSERT INTO ezurlalias VALUES (79,'setup/setup_links/url_translator','7b226327c99e6fd78ad40eb66892d7ae','content/view/full/96',1,0,0);
INSERT INTO ezurlalias VALUES (80,'setup/setup_links/look_and_feel','37986c863618270fa0fa6936ba217c7b','content/view/full/47',1,0,0);
INSERT INTO ezurlalias VALUES (82,'images/*','04e9ea07da46830b94f38285ba6ea065','media/images/{1}',1,0,1);
INSERT INTO ezurlalias VALUES (104,'news/staff_news/mnb','e816c1fe1795536e6896953fa5249ef7','content/view/full/114',1,0,0);
INSERT INTO ezurlalias VALUES (106,'news/reports/fdhjkldfhj','5928e1cce21ba84ed7f29cc0e00136be','content/view/full/116',1,0,0);
INSERT INTO ezurlalias VALUES (110,'news/off_topic/dfsdfg','3933dd18ca8b2e509b8b45118a8eaad4','content/view/full/120',1,0,0);
INSERT INTO ezurlalias VALUES (112,'news/staff_news/sdifgksdjfgkjgh','524539c61399ed93fc9fa090da54ec9d','content/view/full/122',1,0,0);
INSERT INTO ezurlalias VALUES (114,'news/reports/kre_test','2dc61bac93b13af1aae5a92ac15c55e7','content/view/full/124',1,0,0);
INSERT INTO ezurlalias VALUES (122,'news/reports/utuytuy','863350595188c49f4925dba8a66d1a18','content/view/full/132',1,0,0);
INSERT INTO ezurlalias VALUES (126,'files/products/jkhkjh','09f9658056d40e65ae3521fd02f89fe1','content/view/full/136',1,0,0);
INSERT INTO ezurlalias VALUES (128,'contact/persons/per_son','547056bbe8097664a20631c40f020e22','content/view/full/149',1,0,0);
INSERT INTO ezurlalias VALUES (131,'news/staff_news/lkj','76ca99cb194260eb47ec5d697473b0a2','content/view/full/141',1,0,0);
INSERT INTO ezurlalias VALUES (133,'news/staff_news/lkj/jkhkjh','0ab56a1b16594b117f45bb7797574a9c','content/view/full/143',1,0,0);
INSERT INTO ezurlalias VALUES (134,'news/staff_news/lkj/kljjkl','c3ffa06697cf122974c26a55bb1e64f7','content/view/full/144',1,0,0);
INSERT INTO ezurlalias VALUES (135,'news/reports/jkljlkj','079e3d5ad55d498fae54a21fe49b57b5','content/view/full/145',1,0,0);
INSERT INTO ezurlalias VALUES (145,'users/anonymous_users','3ae1aac958e1c82013689d917d34967a','content/view/full/155',1,0,0);
INSERT INTO ezurlalias VALUES (146,'users/anonymous_users/anonymous_user','aad93975f09371695ba08292fd9698db','content/view/full/11',1,0,0);
INSERT INTO ezurlalias VALUES (147,'jkhkjh','44158f924344d45790cd4e0e16dec3f3','content/view/full/143',1,0,0);
INSERT INTO ezurlalias VALUES (148,'kljjkl','9150c54211d08c8eb959c22b2773371e','content/view/full/144',1,0,0);
INSERT INTO ezurlalias VALUES (149,'setup/common_ini_settings','e501fe6c81ed14a5af2b322d248102d8','content/view/full/156',1,0,0);
INSERT INTO ezurlalias VALUES (150,'setup/common_ini_settings/common_ini_settings','51580fac4a0d382aede57bc43af6e63a','content/view/full/157',1,0,0);
INSERT INTO ezurlalias VALUES (151,'setup/setup_links/common_ini_settings','e85ca643d417d1d3b7459bc4eef7a1f0','content/view/full/158',1,0,0);

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
INSERT INTO ezuser_role VALUES (32,24,13);
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



