DROP TABLE IF EXISTS `phpboost_articles`;
CREATE TABLE `phpboost_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `rewrited_title` varchar(255) DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `published` int(1) NOT NULL DEFAULT 0,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `publishing_start_date` int(11) NOT NULL DEFAULT 0,
  `publishing_end_date` int(11) NOT NULL DEFAULT 0,
  `sources` text DEFAULT NULL,
  `views_number` int(11) DEFAULT 0,
  `summary` text DEFAULT NULL,
  `author_custom_name` varchar(255) DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `summary` (`summary`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_articles` (`id`, `title`, `rewrited_title`, `content`, `author_user_id`, `creation_date`, `update_date`, `published`, `id_category`, `publishing_start_date`, `publishing_end_date`, `sources`, `views_number`, `summary`, `author_custom_name`, `thumbnail`) VALUES (1,'Débuter avec le module Articles','debuter-avec-le-module-articles','\n		<p>Ce bref article va vous donner quelques conseils simples pour prendre en main ce module.</p>\n		<ul class="formatter-ul">\n			<li class="formatter-li">Pour configurer votre module, <a class="offload" href="/articles/?url=/admin/config/">cliquez ici</a></li>\n			<li class="formatter-li">Pour ajouter des catégories : <a class="offload" href="/articles/?url=/categories/add/">cliquez ici</a> (les catégories et sous catégories sont à l''infini)</li>\n			<li class="formatter-li">Pour ajouter un article : <a class="offload" href="/articles/?url=/add/">cliquez ici</a></li>\n		</ul>\n		<ul class="formatter-ul">\n			<li class="formatter-li">Pour mettre en page vos articles, vous pouvez utiliser le langage bbcode ou l''éditeur WYSIWYG (cf cet <a class="offload" href="https://www.phpboost.com/wiki/bbcode">article</a>)<br /></li>\n		</ul>\n		<p>Pour en savoir plus, n''hésitez pas à consulter la documentation du module sur le site de <a class="offload" href="https://www.phpboost.com/wiki/articles">PHPBoost</a>.</p>\n		<br />\n		<br />\n		Bonne utilisation de ce module.',1,1775419343,0,1,1,0,0,'a:0:{}',0,'','','default');
DROP TABLE IF EXISTS `phpboost_articles_cats`;
CREATE TABLE `phpboost_articles_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_articles_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Catégorie de test','categorie-de-test',1,0,'',0,'Articles de démonstration','default');
DROP TABLE IF EXISTS `phpboost_authentication_method`;
CREATE TABLE `phpboost_authentication_method` (
  `user_id` int(11) NOT NULL,
  `method` varchar(32) DEFAULT '',
  `identifier` varchar(128) DEFAULT '',
  `data` text DEFAULT NULL,
  UNIQUE KEY `method` (`method`,`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_authentication_method` (`user_id`, `method`, `identifier`, `data`) VALUES (1,'internal',1,NULL);
DROP TABLE IF EXISTS `phpboost_average_notes`;
CREATE TABLE `phpboost_average_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `id_in_module` int(11) NOT NULL DEFAULT 0,
  `average_notes` varchar(255) NOT NULL DEFAULT '0',
  `notes_number` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_bugtracker`;
CREATE TABLE `phpboost_bugtracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `content` text DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `submit_date` int(11) NOT NULL DEFAULT 0,
  `fix_date` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT '',
  `severity` int(11) DEFAULT 0,
  `priority` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `category` int(11) DEFAULT 0,
  `reproductible` tinyint(1) NOT NULL DEFAULT 1,
  `reproduction_method` text DEFAULT NULL,
  `detected_in` int(11) DEFAULT 0,
  `fixed_in` int(11) DEFAULT 0,
  `assigned_to_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_bugtracker` (`id`, `title`, `content`, `author_id`, `submit_date`, `fix_date`, `status`, `severity`, `priority`, `type`, `category`, `reproductible`, `reproduction_method`, `detected_in`, `fixed_in`, `assigned_to_id`) VALUES (1,'Bug de test 1','Contenu du bug de test 1',1,1775419345,0,'new',1,3,1,1,1,'',0,0,0);
INSERT INTO `phpboost_bugtracker` (`id`, `title`, `content`, `author_id`, `submit_date`, `fix_date`, `status`, `severity`, `priority`, `type`, `category`, `reproductible`, `reproduction_method`, `detected_in`, `fixed_in`, `assigned_to_id`) VALUES (2,'Bug de test 2','Contenu du bug de test 2',1,1775418345,1775419345,'fixed',2,4,1,2,1,'',0,0,0);
INSERT INTO `phpboost_bugtracker` (`id`, `title`, `content`, `author_id`, `submit_date`, `fix_date`, `status`, `severity`, `priority`, `type`, `category`, `reproductible`, `reproduction_method`, `detected_in`, `fixed_in`, `assigned_to_id`) VALUES (3,'Bug de test 3','Contenu du bug de test 3',1,1775419345,0,'reopen',3,5,1,3,1,'',0,0,0);
DROP TABLE IF EXISTS `phpboost_bugtracker_history`;
CREATE TABLE `phpboost_bugtracker_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `updater_id` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `updated_field` varchar(64) DEFAULT '0',
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `change_comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bug_id` (`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_bugtracker_users_filters`;
CREATE TABLE `phpboost_bugtracker_users_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `page` varchar(64) NOT NULL DEFAULT '',
  `filters` varchar(64) NOT NULL DEFAULT '',
  `filters_ids` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_calendar_cats`;
CREATE TABLE `phpboost_calendar_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `color` varchar(250) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_calendar_events`;
CREATE TABLE `phpboost_calendar_events` (
  `id_event` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `start_date` int(11) NOT NULL DEFAULT 0,
  `end_date` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_event`),
  KEY `content_id` (`content_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_calendar_events_content`;
CREATE TABLE `phpboost_calendar_events_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `rewrited_title` varchar(250) DEFAULT '',
  `content` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `map_displayed` tinyint(1) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `registration_authorized` tinyint(1) NOT NULL DEFAULT 0,
  `registration_limit` tinyint(1) NOT NULL DEFAULT 0,
  `max_registered_members` int(11) NOT NULL DEFAULT -1,
  `last_registration_date` int(11) NOT NULL DEFAULT 0,
  `register_authorizations` text DEFAULT NULL,
  `repeat_number` int(11) NOT NULL DEFAULT 0,
  `repeat_type` varchar(25) NOT NULL DEFAULT 'never',
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_calendar_users_relation`;
CREATE TABLE `phpboost_calendar_users_relation` (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_comments`;
CREATE TABLE `phpboost_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_topic` int(11) NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `pseudo` varchar(255) NOT NULL DEFAULT '',
  `visitor_email` varchar(255) NOT NULL DEFAULT '',
  `user_ip` varchar(255) NOT NULL DEFAULT '',
  `note` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_comments_topic`;
CREATE TABLE `phpboost_comments_topic` (
  `id_topic` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL DEFAULT '',
  `topic_identifier` varchar(255) NOT NULL DEFAULT 'default',
  `id_in_module` int(11) NOT NULL DEFAULT 0,
  `is_locked` int(11) NOT NULL DEFAULT 0,
  `comments_number` int(11) NOT NULL DEFAULT 0,
  `path` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_configs`;
CREATE TABLE `phpboost_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (1,'kernel-general-config','O:13:"GeneralConfig":1:{s:34:" AbstractConfigData properties_map";a:10:{s:8:"site_url";s:25:"https://phpboostdev.local";s:9:"site_path";s:9:"/phpboost";s:9:"site_name";s:8:"PhpBoost";s:11:"site_slogan";s:0:"";s:16:"site_description";s:0:"";s:16:"module_home_page";s:4:"news";s:15:"other_home_page";s:0:"";s:16:"phpboost_version";s:3:"6.0";s:17:"site_install_date";O:4:"Date":1:{s:15:" Date date_time";O:8:"DateTime":3:{s:4:"date";s:26:"2026-04-05 22:02:23.766540";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}s:8:"timezone";s:12:"Europe/Paris";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (2,'kernel-server-environment-config','O:23:"ServerEnvironmentConfig":1:{s:34:" AbstractConfigData properties_map";a:10:{s:21:"url_rewriting_enabled";b:0;s:23:"redirection_www_enabled";b:0;s:20:"redirection_www_mode";s:8:"with_www";s:25:"redirection_https_enabled";b:1;s:21:"hsts_security_enabled";b:0;s:31:"hsts_security_subdomain_enabled";b:0;s:22:"hsts_security_duration";i:2592000;s:23:"htaccess_manual_content";s:0:"";s:20:"nginx_manual_content";s:0:"";s:22:"output_gziping_enabled";b:1;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (3,'kernel-sessions-config','O:14:"SessionsConfig":1:{s:34:" AbstractConfigData properties_map";a:4:{s:11:"cookie_name";s:7:"session";s:16:"session_duration";i:3600;s:23:"active_session_duration";i:300;s:20:"autoconnect_duration";i:2592000;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (4,'kernel-user-accounts','O:18:"UserAccountsConfig":1:{s:34:" AbstractConfigData properties_map";a:21:{s:12:"display_type";s:10:"table_view";s:14:"items_per_page";i:25;s:13:"items_per_row";i:2;s:20:"registration_enabled";s:1:"1";s:33:"member_accounts_validation_method";s:1:"1";s:39:"administrator_accounts_validation_email";b:0;s:15:"welcome_message";s:174:"Bienvenue sur le site. Vous êtes membre du site, vous pouvez accéder à tous les espaces nécessitant un compte utilisateur, éditer votre profil et voir vos contributions.";s:22:"registration_agreement";s:147:"Vous vous apprêtez à vous enregistrer sur le site. Nous vous demandons d''être poli et courtois dans vos interventions.\nMerci, l''équipe du site.";s:28:"unactivated_accounts_timeout";i:20;s:20:"enable_avatar_upload";b:1;s:27:"enable_avatar_auto_resizing";b:1;s:18:"default_avatar_url";s:7:"default";s:16:"max_avatar_width";i:120;s:17:"max_avatar_height";i:120;s:17:"max_avatar_weight";i:20;s:17:"auth_read_members";a:2:{s:2:"r0";i:1;s:2:"r1";i:1;}s:12:"default_lang";s:6:"french";s:13:"default_theme";s:4:"base";s:13:"max_pm_number";i:50;s:34:"allow_users_to_change_display_name";b:1;s:27:"allow_users_to_change_email";b:1;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (5,'kernel-content-formatting','O:23:"ContentFormattingConfig":1:{s:34:" AbstractConfigData properties_map";a:3:{s:14:"default_editor";s:6:"BBCode";s:14:"forbidden_tags";a:0:{}s:13:"html_tag_auth";a:0:{}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (6,'kernel-security','O:14:"SecurityConfig":1:{s:34:" AbstractConfigData properties_map";a:4:{s:28:"internal_password_min_length";s:1:"6";s:26:"internal_password_strength";s:4:"weak";s:37:"login_and_email_forbidden_in_password";b:0;s:22:"forbidden_mail_domains";a:0:{}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (7,'kernel-css-cache-config','O:14:"CSSCacheConfig":1:{s:34:" AbstractConfigData properties_map";a:2:{s:9:"activated";b:1;s:18:"optimization_level";s:4:"high";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (8,'kernel-themes','O:12:"ThemesConfig":1:{s:34:" AbstractConfigData properties_map";a:1:{s:6:"themes";a:1:{s:4:"base";O:5:"Theme":5:{s:15:" Theme theme_id";s:4:"base";s:16:" Theme activated";b:1;s:23:" Theme columns_disabled";O:15:"ColumnsDisabled":9:{s:35:" ColumnsDisabled disable_top_header";b:0;s:31:" ColumnsDisabled disable_header";b:0;s:35:" ColumnsDisabled disable_sub_header";b:0;s:36:" ColumnsDisabled disable_top_central";b:0;s:39:" ColumnsDisabled disable_bottom_central";b:0;s:35:" ColumnsDisabled disable_top_footer";b:0;s:31:" ColumnsDisabled disable_footer";b:0;s:37:" ColumnsDisabled disable_left_columns";b:0;s:38:" ColumnsDisabled disable_right_columns";b:1;}s:26:" Theme customize_interface";O:18:"CustomizeInterface":1:{s:36:" CustomizeInterface header_logo_path";s:0:"";}s:21:" Theme authorizations";a:0:{}}}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (9,'kernel-modules','O:13:"ModulesConfig":1:{s:34:" AbstractConfigData properties_map";a:1:{s:7:"modules";a:35:{s:4:"news";O:6:"Module":4:{s:17:" Module module_id";s:4:"news";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:8:"articles";O:6:"Module":4:{s:17:" Module module_id";s:8:"articles";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:7:"sandbox";O:6:"Module":4:{s:17:" Module module_id";s:7:"sandbox";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:8:"database";O:6:"Module":4:{s:17:" Module module_id";s:8:"database";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:8:"calendar";O:6:"Module":4:{s:17:" Module module_id";s:8:"calendar";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:7:"connect";O:6:"Module":4:{s:17:" Module module_id";s:7:"connect";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:7:"contact";O:6:"Module":4:{s:17:" Module module_id";s:7:"contact";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:8:"shoutbox";O:6:"Module":4:{s:17:" Module module_id";s:8:"shoutbox";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:6:"BBCode";O:6:"Module":4:{s:17:" Module module_id";s:6:"BBCode";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:7:"TinyMCE";O:6:"Module":4:{s:17:" Module module_id";s:7:"TinyMCE";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:6:"online";O:6:"Module":4:{s:17:" Module module_id";s:6:"online";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:3:"faq";O:6:"Module":4:{s:17:" Module module_id";s:3:"faq";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:5:"forum";O:6:"Module":4:{s:17:" Module module_id";s:5:"forum";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:7:"gallery";O:6:"Module":4:{s:17:" Module module_id";s:7:"gallery";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:10:"GoogleMaps";O:6:"Module":4:{s:17:" Module module_id";s:10:"GoogleMaps";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:7:"history";O:6:"Module":4:{s:17:" Module module_id";s:7:"history";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:3:"web";O:6:"Module":4:{s:17:" Module module_id";s:3:"web";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:9:"guestbook";O:6:"Module":4:{s:17:" Module module_id";s:9:"guestbook";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:13:"LangsSwitcher";O:6:"Module":4:{s:17:" Module module_id";s:13:"LangsSwitcher";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:14:"ThemesSwitcher";O:6:"Module":4:{s:17:" Module module_id";s:14:"ThemesSwitcher";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:5:"media";O:6:"Module":4:{s:17:" Module module_id";s:5:"media";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:10:"newsletter";O:6:"Module":4:{s:17:" Module module_id";s:10:"newsletter";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:5:"pages";O:6:"Module":4:{s:17:" Module module_id";s:5:"pages";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:13:"customization";O:6:"Module":4:{s:17:" Module module_id";s:13:"customization";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:7:"sitemap";O:6:"Module":4:{s:17:" Module module_id";s:7:"sitemap";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:15:"QuestionCaptcha";O:6:"Module":4:{s:17:" Module module_id";s:15:"QuestionCaptcha";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:10:"bugtracker";O:6:"Module":4:{s:17:" Module module_id";s:10:"bugtracker";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:9:"ReCaptcha";O:6:"Module":4:{s:17:" Module module_id";s:9:"ReCaptcha";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:6:"search";O:6:"Module":4:{s:17:" Module module_id";s:6:"search";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:14:"SocialNetworks";O:6:"Module":4:{s:17:" Module module_id";s:14:"SocialNetworks";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:4:"poll";O:6:"Module":4:{s:17:" Module module_id";s:4:"poll";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:5:"stats";O:6:"Module":4:{s:17:" Module module_id";s:5:"stats";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:8:"download";O:6:"Module":4:{s:17:" Module module_id";s:8:"download";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:10:"UrlUpdater";O:6:"Module":4:{s:17:" Module module_id";s:10:"UrlUpdater";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}s:4:"wiki";O:6:"Module":4:{s:17:" Module module_id";s:4:"wiki";s:17:" Module activated";b:1;s:25:" Module installed_version";s:5:"6.0.0";s:22:" Module authorizations";N;}}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (10,'question-captcha-config','O:21:"QuestionCaptchaConfig":1:{s:34:" AbstractConfigData properties_map";a:1:{s:5:"items";a:2:{i:1;a:2:{s:5:"label";s:23:"Combien font 4 + cinq ?";s:7:"answers";s:6:"9;neuf";}i:2;a:2:{s:5:"label";s:53:"Combien y a-t-il de voyelles dans le mot ordinateur ?";s:7:"answers";s:6:"5;cinq";}}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (11,'kernel-content-management','O:23:"ContentManagementConfig":1:{s:34:" AbstractConfigData properties_map";a:17:{s:10:"anti_flood";b:0;s:19:"anti_flood_duration";i:7;s:19:"used_captcha_module";s:15:"QuestionCaptcha";s:11:"new_content";b:1;s:20:"new_content_duration";i:5;s:32:"new_content_unauthorized_modules";a:0:{}s:12:"new_notation";b:1;s:14:"notation_scale";i:5;s:29:"notation_unauthorized_modules";a:0:{}s:23:"content_sharing_enabled";b:1;s:29:"content_sharing_email_enabled";b:1;s:29:"content_sharing_print_enabled";b:1;s:27:"content_sharing_sms_enabled";b:1;s:17:"opengraph_enabled";b:1;s:24:"site_default_picture_url";s:0:"";s:7:"id_card";b:1;s:28:"id_card_unauthorized_modules";a:0:{}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (12,'kernel-graphical-environment-config','O:26:"GraphicalEnvironmentConfig":1:{s:34:" AbstractConfigData properties_map";a:3:{s:21:"visit_counter_enabled";b:0;s:20:"display_theme_author";b:0;s:18:"page_bench_enabled";s:1:"1";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (13,'calendar-config','O:14:"CalendarConfig":1:{s:34:" AbstractConfigData properties_map";a:10:{s:14:"items_per_page";i:15;s:13:"items_per_row";i:2;s:17:"full_item_display";b:0;s:24:"members_birthday_enabled";b:0;s:24:"characters_number_to_cut";i:128;s:12:"display_type";s:9:"list_view";s:15:"default_content";s:0:"";s:11:"event_color";s:7:"#81A4C8";s:14:"birthday_color";s:7:"#8F8ACF";s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:5;s:2:"r1";i:15;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (14,'kernel-mail-service','O:17:"MailServiceConfig":1:{s:34:" AbstractConfigData properties_map";a:9:{s:8:"use_smtp";b:0;s:9:"smtp_host";s:0:"";s:9:"smtp_port";i:25;s:10:"smtp_login";s:0:"";s:13:"smtp_password";s:0:"";s:13:"smtp_protocol";s:4:"none";s:19:"default_mail_sender";s:20:"internetbf@gmail.com";s:20:"administrators_mails";a:1:{i:0;s:20:"internetbf@gmail.com";}s:14:"mail_signature";s:0:"";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (15,'kernel-langs','O:11:"LangsConfig":1:{s:34:" AbstractConfigData properties_map";a:1:{s:5:"langs";a:2:{s:7:"english";O:4:"Lang":3:{s:8:" Lang id";s:7:"english";s:15:" Lang activated";b:1;s:20:" Lang authorizations";a:0:{}}s:6:"french";O:4:"Lang":3:{s:8:" Lang id";s:6:"french";s:15:" Lang activated";b:1;s:20:" Lang authorizations";a:0:{}}}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (16,'kernel-file-upload-config','O:16:"FileUploadConfig":1:{s:34:" AbstractConfigData properties_map";a:5:{s:36:"authorization_enable_interface_files";a:2:{s:2:"r0";i:1;s:2:"r1";i:1;}s:19:"maximum_size_upload";i:512;s:24:"enable_bandwidth_protect";b:1;s:22:"display_file_thumbnail";b:1;s:21:"authorized_extensions";a:46:{i:0;s:3:"jpg";i:1;s:4:"jpeg";i:2;s:3:"bmp";i:3;s:3:"gif";i:4;s:3:"png";i:5;s:4:"webp";i:6;s:3:"tif";i:7;s:3:"svg";i:8;s:3:"ico";i:9;s:3:"nef";i:10;s:3:"rar";i:11;s:3:"zip";i:12;s:2:"gz";i:13;s:2:"7z";i:14;s:3:"txt";i:15;s:3:"doc";i:16;s:4:"docx";i:17;s:3:"pdf";i:18;s:3:"ppt";i:19;s:3:"xls";i:20;s:3:"odt";i:21;s:3:"odp";i:22;s:3:"ods";i:23;s:3:"odg";i:24;s:3:"odc";i:25;s:3:"odf";i:26;s:3:"odb";i:27;s:3:"xcf";i:28;s:3:"csv";i:29;s:3:"mp3";i:30;s:3:"ogg";i:31;s:3:"mpg";i:32;s:3:"mov";i:33;s:3:"wav";i:34;s:3:"wmv";i:35;s:4:"midi";i:36;s:3:"mng";i:37;s:2:"qt";i:38;s:3:"mp4";i:39;s:3:"mkv";i:40;s:4:"webm";i:41;s:3:"ttf";i:42;s:3:"tex";i:43;s:3:"rtf";i:44;s:3:"psd";i:45;s:3:"iso";}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (17,'kernel-last-use-date','O:17:"LastUseDateConfig":1:{s:34:" AbstractConfigData properties_map";a:3:{s:4:"year";s:4:"2026";s:5:"month";s:2:"04";s:3:"day";s:1:"5";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (18,'forum-config','O:11:"ForumConfig":1:{s:34:" AbstractConfigData properties_map";a:17:{s:10:"forum_name";s:14:"PhpBoost forum";s:22:"number_topics_per_page";i:20;s:24:"number_messages_per_page";i:15;s:30:"read_messages_storage_duration";i:30;s:28:"max_topic_number_in_favorite";i:40;s:17:"edit_mark_enabled";b:1;s:22:"multiple_posts_allowed";b:1;s:24:"connexion_form_displayed";b:0;s:20:"left_column_disabled";b:0;s:21:"right_column_disabled";b:0;s:36:"message_before_topic_title_displayed";b:1;s:26:"message_before_topic_title";s:9:"[Réglé]";s:30:"message_when_topic_is_unsolved";s:15:"Sujet réglé ?";s:28:"message_when_topic_is_solved";s:19:"Sujet non réglé ?";s:41:"message_before_topic_title_icon_displayed";b:1;s:14:"authorizations";a:3:{s:3:"r-1";i:129;s:2:"r0";i:131;s:2:"r1";i:139;}s:17:"display_thumbnail";b:0;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (19,'sitemap-config','O:13:"SitemapConfig":1:{s:34:" AbstractConfigData properties_map";a:3:{s:20:"last_generation_date";O:4:"Date":1:{s:15:" Date date_time";O:8:"DateTime":3:{s:4:"date";s:26:"2026-04-05 22:02:30.620870";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}s:21:"sitemap_xml_life_time";i:3;s:18:"enable_sitemap_xml";b:0;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (20,'database-config','O:14:"DatabaseConfig":1:{s:34:" AbstractConfigData properties_map";a:2:{s:36:"database_tables_optimization_enabled";b:1;s:32:"database_tables_optimization_day";i:0;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (21,'web-config','O:9:"WebConfig":1:{s:34:" AbstractConfigData properties_map";a:17:{s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:3;s:14:"items_per_page";i:15;s:13:"items_per_row";i:2;s:17:"full_item_display";b:0;s:12:"display_type";s:9:"grid_view";s:24:"items_default_sort_field";s:5:"title";s:23:"items_default_sort_mode";s:3:"ASC";s:15:"default_content";s:0:"";s:32:"descriptions_displayed_to_guests";b:0;s:25:"root_category_description";s:786:"\n	Welcome to the website Liens Web module.\n	<br />\n	A category and an lien were created to show you how this module works. Here are some tips to get started on this module.\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> To configure or customize the module homepage your module, go into the <a class="offload" href="/web/?url=/admin/config/">module administration</a></li>\n		<li class="formatter-li"> To create categories, <a class="offload" href="/web/?url=/categories/add/">clic here</a> </li>\n		<li class="formatter-li"> To create liens, <a class="offload" href="/web/?url=/add/">clic here</a></li>\n	</ul>\n	To learn more, feel free to consult the documentation for the module on <a class="offload" href="https://www.phpboost.com/wiki/liens-web">PHPBoost</a> website.\n";s:26:"auto_cut_characters_number";i:128;s:19:"partners_sort_field";s:5:"title";s:18:"partners_sort_mode";s:3:"ASC";s:23:"partners_number_in_menu";i:5;s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:5;s:2:"r1";i:13;}s:19:"deferred_operations";a:0:{}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (22,'download-config','O:14:"DownloadConfig":1:{s:34:" AbstractConfigData properties_map";a:20:{s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:3;s:14:"items_per_page";i:15;s:13:"items_per_row";i:2;s:17:"full_item_display";b:0;s:12:"display_type";s:9:"grid_view";s:24:"items_default_sort_field";s:11:"update_date";s:23:"items_default_sort_mode";s:4:"DESC";s:15:"default_content";s:0:"";s:27:"summary_displayed_to_guests";b:0;s:16:"author_displayed";b:1;s:15:"nb_view_enabled";b:0;s:25:"root_category_description";s:820:"\n	Welcome to the website Téléchargements module.\n	<br />\n	A category and an fichier were created to show you how this module works. Here are some tips to get started on this module.\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> To configure or customize the module homepage your module, go into the <a class="offload" href="/download/?url=/admin/config/">module administration</a></li>\n		<li class="formatter-li"> To create categories, <a class="offload" href="/download/?url=/categories/add/">clic here</a> </li>\n		<li class="formatter-li"> To create fichiers, <a class="offload" href="/download/?url=/add/">clic here</a></li>\n	</ul>\n	To learn more, feel free to consult the documentation for the module on <a class="offload" href="https://www.phpboost.com/wiki/telechargement">PHPBoost</a> website.\n";s:9:"sort_type";s:16:"downloads_number";s:20:"files_number_in_menu";i:5;s:37:"limit_oldest_file_day_in_menu_enabled";b:0;s:23:"oldest_file_day_in_menu";i:30;s:26:"auto_cut_characters_number";i:128;s:14:"authorizations";a:3:{s:3:"r-1";i:33;s:2:"r0";i:37;s:2:"r1";i:61;}s:19:"deferred_operations";a:0:{}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (23,'kernel-maintenance','O:17:"MaintenanceConfig":1:{s:34:" AbstractConfigData properties_map";a:7:{s:7:"enabled";b:0;s:9:"unlimited";b:0;s:8:"end_date";O:4:"Date":1:{s:15:" Date date_time";O:8:"DateTime":3:{s:4:"date";s:26:"2026-04-05 22:02:30.648599";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}s:7:"message";s:11:"Maintenance";s:4:"auth";a:0:{}s:16:"display_duration";b:1;s:22:"display_duration_admin";b:1;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (24,'sandbox-config','O:13:"SandboxConfig":1:{s:34:" AbstractConfigData properties_map";a:7:{s:18:"superadmin_enabled";b:0;s:15:"superadmin_name";s:0:"";s:17:"menu_opening_type";s:4:"left";s:14:"expansion_type";s:7:"overlap";s:13:"disabled_body";b:1;s:14:"pushed_content";b:1;s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:5;s:2:"r1";i:13;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (25,'kernel-comments-config','O:14:"CommentsConfig":1:{s:34:" AbstractConfigData properties_map";a:8:{s:8:"comments";b:1;s:13:"visitor_email";b:1;s:29:"comments_unauthorized_modules";a:0:{}s:14:"authorizations";a:3:{s:2:"r1";i:7;s:2:"r0";i:3;s:3:"r-1";i:3;}s:24:"comments_number_per_page";i:15;s:14:"forbidden_tags";a:0:{}s:17:"max_links_comment";i:2;s:22:"order_display_comments";s:4:"DESC";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (26,'social-networks-config','O:20:"SocialNetworksConfig":1:{s:34:" AbstractConfigData properties_map";a:6:{s:23:"authentications_enabled";a:0:{}s:10:"client_ids";a:0:{}s:14:"client_secrets";a:0:{}s:23:"content_sharing_enabled";a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}s:21:"social_networks_order";a:0:{}s:26:"additional_social_networks";a:0:{}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (27,'faq-config','O:9:"FaqConfig":1:{s:34:" AbstractConfigData properties_map";a:6:{s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:4;s:12:"display_type";s:10:"basic_view";s:16:"display_controls";b:1;s:25:"root_category_description";s:786:"\n	Welcome to the website F.A.Q module.\n	<br />\n	2 categories and 2 questions were created to show you how this module works. Here are some tips to get started on this module.\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> To configure or customize the module homepage your module, go into the <a class="offload" href="/faq/?url=/admin/config/">module administration</a></li>\n		<li class="formatter-li"> To create categories, <a class="offload" href="/faq/?url=/categories/add/">clic here</a> </li>\n		<li class="formatter-li"> To create questions, <a class="offload" href="/faq/?url=/add/">clic here</a></li>\n	</ul>\n	To learn more, feel free to consult the documentation for the module on <a class="offload" href="https://www.phpboost.com/wiki/faq">PHPBoost</a> website.\n";s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:5;s:2:"r1";i:13;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (28,'newsletter-config','O:16:"NewsletterConfig":1:{s:34:" AbstractConfigData properties_map";a:5:{s:11:"mail_sender";s:0:"";s:15:"newsletter_name";s:0:"";s:15:"default_content";s:0:"";s:23:"streams_number_per_page";i:25;s:14:"authorizations";a:3:{s:2:"r1";i:63;s:2:"r0";i:35;s:3:"r-1";i:35;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (29,'guestbook-config','O:15:"GuestbookConfig":1:{s:34:" AbstractConfigData properties_map";a:5:{s:14:"items_per_page";i:10;s:14:"forbidden_tags";a:7:{i:0;s:5:"movie";i:1;s:5:"sound";i:2;s:4:"code";i:3;s:4:"math";i:4;s:4:"mail";i:5;s:4:"html";i:6;s:4:"feed";}s:36:"max_links_number_per_message_enabled";b:0;s:21:"maximum_links_message";i:1;s:14:"authorizations";a:3:{s:3:"r-1";i:3;s:2:"r0";i:3;s:2:"r1";i:7;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (30,'search-config','O:12:"SearchConfig":1:{s:34:" AbstractConfigData properties_map";a:6:{s:10:"weightings";a:0:{}s:20:"_nb_results_per_page";i:15;s:14:"cache_lifetime";i:30;s:14:"cache_max_uses";i:200;s:22:"unauthorized_providers";a:0:{}s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:1;s:2:"r1";i:1;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (31,'poll-config','O:10:"PollConfig":1:{s:34:" AbstractConfigData properties_map";a:23:{s:14:"items_per_page";i:15;s:14:"authorizations";a:3:{s:3:"r-1";i:97;s:2:"r0";i:103;s:2:"r1";i:109;}s:13:"items_per_row";i:2;s:24:"items_default_sort_field";s:4:"date";s:23:"items_default_sort_mode";s:4:"desc";s:15:"default_content";s:0:"";s:17:"full_item_display";b:0;s:27:"summary_displayed_to_guests";b:0;s:26:"auto_cut_characters_number";i:150;s:19:"sort_form_displayed";b:1;s:16:"author_displayed";b:1;s:14:"date_displayed";b:1;s:21:"update_date_displayed";b:1;s:20:"views_number_enabled";b:0;s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:3;s:25:"root_category_description";s:793:"\n	Welcome to the website Sondages module.\n	<br />\n	A category and an sondage were created to show you how this module works. Here are some tips to get started on this module.\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> To configure or customize the module homepage your module, go into the <a class="offload" href="/poll/?url=/admin/config/">module administration</a></li>\n		<li class="formatter-li"> To create categories, <a class="offload" href="/poll/?url=/categories/add/">clic here</a> </li>\n		<li class="formatter-li"> To create sondages, <a class="offload" href="/poll/?url=/add/">clic here</a></li>\n	</ul>\n	To learn more, feel free to consult the documentation for the module on <a class="offload" href="https://www.phpboost.com/wiki/sondages">PHPBoost</a> website.\n";s:12:"display_type";s:9:"grid_view";s:15:"display_options";s:12:"more_options";s:19:"deferred_operations";a:0:{}s:26:"mini_module_selected_items";a:1:{i:0;s:1:"1";}s:11:"cookie_name";s:4:"poll";s:13:"cookie_lenght";i:30;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (32,'stats-config','O:11:"StatsConfig":1:{s:34:" AbstractConfigData properties_map";a:2:{s:14:"items_per_page";i:15;s:14:"authorizations";a:2:{s:2:"r0";i:1;s:2:"r1";i:1;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (33,'kernel-customization-config','O:19:"CustomizationConfig":1:{s:34:" AbstractConfigData properties_map";a:2:{s:12:"favicon_path";s:12:"/favicon.ico";s:27:"header_logo_path_all_themes";N;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (34,'kernel-cookiebar-config','O:15:"CookieBarConfig":1:{s:34:" AbstractConfigData properties_map";a:6:{s:17:"cookiebar_enabled";b:1;s:18:"cookiebar_duration";i:12;s:23:"cookiebar_tracking_mode";s:10:"notracking";s:17:"cookiebar_content";s:154:"If you continue your visit to this website, you agree to use Cookies to manage your connection, your preferences, and to save anonymous visits statistics.";s:27:"cookiebar_aboutcookie_title";s:13:"About Cookies";s:29:"cookiebar_aboutcookie_content";s:1617:"To make this site work properly, we sometimes need to save small data files called cookies on your device.<br />Most of websites do this too.\n\n<h2 class="formatter-title">What are cookies ?</h2>\nA cookie is a small text file that a website saves on your computer or mobile device when you visit the site.<br />\nIt enables the website to remember your actions and preferences (such as login, language, font size and other display preferences) over a period of time, so you don''t have to keep re-entering them whenever you come back to the site or browse from one page to another.\n\n<h2 class="formatter-title">Technical Cookies : </h2>\nPhpBoost use technical cookie to :<br />\n<ul class="formatter-ul">\n    <li class="formatter-li"> manage login (essential if you want to connect),\n    </li><li class="formatter-li"> record anonymous statistics for website (note essenial, but allows webmasters to know how visit website.)\n    </li>\n</ul>\n\n<h2 class="formatter-title">Others cookies :</h2>\nPhpBoost does not use any tracking cookies. However, using google-analytics module or social-media buttons need some tracking cookies.\n\n<h2 class="formatter-title">How to control cookies ?</h2>\nYou can control and/or delete cookies as you wish – for details, see <a class="offload" href="https://www.aboutcookies.org">aboutcookies.org</a>. <br />\nYou can delete all cookies that are already on your computer and you can set most browsers to prevent them from being placed. If you do this, however, you may have to manually adjust some preferences every time you visit a site and some services and functionalities may not work.\n";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (35,'kernel-writing-pad','O:16:"WritingPadConfig":1:{s:34:" AbstractConfigData properties_map";a:1:{s:7:"content";s:65:"Cet emplacement est destiné à la saisie vos notes personnelles.";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (36,'news-config','O:10:"NewsConfig":1:{s:34:" AbstractConfigData properties_map";a:22:{s:14:"items_per_page";i:10;s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:5;s:2:"r1";i:13;}s:13:"items_per_row";i:1;s:24:"items_default_sort_field";s:4:"date";s:23:"items_default_sort_mode";s:4:"desc";s:15:"default_content";s:0:"";s:17:"full_item_display";b:1;s:27:"summary_displayed_to_guests";b:0;s:26:"auto_cut_characters_number";i:150;s:19:"sort_form_displayed";b:1;s:16:"author_displayed";b:1;s:14:"date_displayed";b:1;s:21:"update_date_displayed";b:1;s:20:"views_number_enabled";b:1;s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:3;s:25:"root_category_description";s:0:"";s:12:"display_type";s:9:"list_view";s:15:"display_options";s:12:"more_options";s:19:"deferred_operations";a:0:{}s:25:"items_suggestions_enabled";b:1;s:24:"items_navigation_enabled";b:1;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (37,'articles-config','O:14:"ArticlesConfig":1:{s:34:" AbstractConfigData properties_map";a:20:{s:14:"items_per_page";i:10;s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:5;s:2:"r1";i:13;}s:13:"items_per_row";i:2;s:24:"items_default_sort_field";s:4:"date";s:23:"items_default_sort_mode";s:4:"desc";s:15:"default_content";s:0:"";s:17:"full_item_display";b:0;s:27:"summary_displayed_to_guests";b:0;s:26:"auto_cut_characters_number";i:150;s:19:"sort_form_displayed";b:1;s:16:"author_displayed";b:1;s:14:"date_displayed";b:1;s:21:"update_date_displayed";b:1;s:20:"views_number_enabled";b:1;s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:2;s:25:"root_category_description";s:877:"\n	Bienvenue dans le module Articles du site.\n	<br />\n	Une catégorie et un article ont été créés pour vous montrer comment fonctionne ce module. Voici quelques conseils pour bien débuter sur ce module.\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> Pour configurer ou personnaliser l''accueil de votre module, rendez-vous dans l''<a class="offload" href="/articles/?url=/admin/config/">administration du module</a></li>\n		<li class="formatter-li"> Pour créer des catégories, <a class="offload" href="/articles/?url=/categories/add/">cliquez ici</a> </li>\n		<li class="formatter-li"> Pour ajouter des articles, <a class="offload" href="/articles/?url=/add/">cliquez ici</a></li>\n	</ul>\n	Pour en savoir plus, n''hésitez pas à consulter la documentation du module sur le site de <a class="offload" href="https://www.phpboost.com/wiki/articles">PHPBoost</a>.\n";s:12:"display_type";s:9:"grid_view";s:15:"display_options";s:12:"more_options";s:19:"deferred_operations";a:0:{}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (38,'shoutbox-config','O:14:"ShoutboxConfig":1:{s:34:" AbstractConfigData properties_map";a:15:{s:14:"items_per_page";i:20;s:27:"max_messages_number_enabled";b:1;s:19:"max_messages_number";i:200;s:36:"max_links_number_per_message_enabled";b:1;s:28:"max_links_number_per_message";i:2;s:40:"no_write_authorization_message_displayed";b:1;s:25:"forbidden_formatting_tags";a:39:{i:0;s:5:"color";i:1;s:7:"bgcolor";i:2;s:4:"size";i:3;s:4:"font";i:4;s:5:"align";i:5;s:5:"float";i:6;s:6:"indent";i:7;s:3:"sup";i:8;s:3:"sub";i:9;s:5:"title";i:10;s:4:"list";i:11;s:5:"table";i:12;s:5:"block";i:13;s:9:"container";i:14;s:8:"fieldset";i:15;s:4:"abbr";i:16;s:5:"quote";i:17;s:4:"hide";i:18;s:6:"member";i:19;s:6:"teaser";i:20;s:9:"moderator";i:21;s:5:"style";i:22;s:4:"line";i:23;s:3:"url";i:24;s:4:"mail";i:25;s:9:"wikipedia";i:26;s:4:"feed";i:27;s:6:"anchor";i:28;s:5:"sound";i:29;s:5:"movie";i:30;s:8:"lightbox";i:31;s:3:"img";i:32;s:6:"upload";i:33;s:7:"smileys";i:34;s:4:"code";i:35;s:4:"math";i:36;s:4:"html";i:37;s:7:"charmap";i:38;s:14:"insertdatetime";}s:25:"automatic_refresh_enabled";b:1;s:13:"refresh_delay";i:60000;s:14:"date_displayed";b:0;s:33:"shout_max_messages_number_enabled";b:1;s:25:"shout_max_messages_number";i:50;s:20:"shout_bbcode_enabled";b:1;s:35:"validation_onkeypress_enter_enabled";b:0;s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:3;s:2:"r1";i:7;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (39,'gallery-config','O:13:"GalleryConfig":1:{s:34:" AbstractConfigData properties_map";a:25:{s:14:"mini_max_width";i:150;s:15:"mini_max_height";i:150;s:9:"max_width";i:1920;s:10:"max_height";i:1080;s:10:"max_weight";i:1536;s:7:"quality";i:80;s:12:"logo_enabled";b:1;s:4:"logo";s:11:"protect.png";s:17:"logo_transparency";i:40;s:24:"logo_horizontal_distance";i:5;s:22:"logo_vertical_distance";i:5;s:26:"categories_number_per_page";i:10;s:14:"columns_number";i:4;s:20:"pics_number_per_page";i:16;s:13:"title_enabled";b:1;s:22:"notes_number_displayed";b:1;s:21:"views_counter_enabled";b:1;s:16:"author_displayed";b:1;s:22:"member_max_pics_number";i:10;s:25:"moderator_max_pics_number";i:25;s:21:"pics_enlargement_mode";s:11:"full_screen";s:11:"scroll_type";s:23:"vertical_dynamic_scroll";s:19:"pics_number_in_mini";i:6;s:15:"mini_pics_speed";i:6;s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:3;s:2:"r1";i:11;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (40,'media-config','O:11:"MediaConfig":1:{s:34:" AbstractConfigData properties_map";a:13:{s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:2;s:14:"items_per_page";i:25;s:13:"items_per_row";i:2;s:12:"display_type";s:9:"grid_view";s:24:"characters_number_to_cut";i:128;s:16:"author_displayed";b:1;s:15:"max_video_width";i:900;s:16:"max_video_height";i:570;s:25:"root_category_description";s:877:"\n	Bienvenue dans le module Multimédia du site.\n	<br />\n	Une catégorie et un élément ont été créés pour vous montrer comment fonctionne ce module. Voici quelques conseils pour bien débuter sur ce module.\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> Pour configurer ou personnaliser l''accueil de votre module, rendez-vous dans l''<a class="offload" href="/media/?url=/admin/config/">administration du module</a></li>\n		<li class="formatter-li"> Pour créer des catégories, <a class="offload" href="/media/?url=/categories/add/">cliquez ici</a> </li>\n		<li class="formatter-li"> Pour ajouter des éléments, <a class="offload" href="/media/?url=/add/">cliquez ici</a></li>\n	</ul>\n	Pour en savoir plus, n''hésitez pas à consulter la documentation du module sur le site de <a class="offload" href="https://www.phpboost.com/wiki/multimedia">PHPBoost</a>.\n";s:26:"root_category_content_type";i:0;s:14:"authorizations";a:3:{s:3:"r-1";i:1;s:2:"r0";i:5;s:2:"r1";i:13;}s:0:"";s:19:"https://peertube.fr";}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (41,'pages-config','O:11:"PagesConfig":1:{s:34:" AbstractConfigData properties_map";a:22:{s:14:"items_per_page";i:15;s:14:"authorizations";a:3:{s:3:"r-1";i:33;s:2:"r0";i:37;s:2:"r1";i:61;}s:13:"items_per_row";i:2;s:24:"items_default_sort_field";s:4:"date";s:23:"items_default_sort_mode";s:4:"desc";s:15:"default_content";s:0:"";s:17:"full_item_display";b:0;s:27:"summary_displayed_to_guests";b:0;s:26:"auto_cut_characters_number";i:150;s:19:"sort_form_displayed";b:0;s:16:"author_displayed";b:1;s:14:"date_displayed";b:1;s:21:"update_date_displayed";b:1;s:20:"views_number_enabled";b:1;s:19:"categories_per_page";i:10;s:18:"categories_per_row";i:3;s:25:"root_category_description";s:857:"\n	Bienvenue dans le module Pages du site.\n	<br />\n	Une catégorie et une page ont été créés pour vous montrer comment fonctionne ce module. Voici quelques conseils pour bien débuter sur ce module.\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> Pour configurer ou personnaliser l''accueil de votre module, rendez-vous dans l''<a class="offload" href="/pages/?url=/admin/config/">administration du module</a></li>\n		<li class="formatter-li"> Pour créer des catégories, <a class="offload" href="/pages/?url=/categories/add/">cliquez ici</a> </li>\n		<li class="formatter-li"> Pour ajouter des pages, <a class="offload" href="/pages/?url=/add/">cliquez ici</a></li>\n	</ul>\n	Pour en savoir plus, n''hésitez pas à consulter la documentation du module sur le site de <a class="offload" href="https://www.phpboost.com/wiki/pages">PHPBoost</a>.\n";s:12:"display_type";s:10:"table_view";s:15:"display_options";s:12:"more_options";s:19:"deferred_operations";a:0:{}s:20:"left_column_disabled";b:0;s:21:"right_column_disabled";b:0;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (42,'bugtracker-config','O:16:"BugtrackerConfig":1:{s:34:" AbstractConfigData properties_map";a:44:{s:14:"items_per_page";i:20;s:18:"rejected_bug_color";s:7:"#f8465e";s:15:"fixed_bug_color";s:7:"#afffa2";s:15:"roadmap_enabled";b:0;s:13:"stats_enabled";b:1;s:25:"stats_top_posters_enabled";b:1;s:24:"stats_top_posters_number";i:10;s:20:"progress_bar_enabled";b:1;s:40:"restrict_display_to_own_elements_enabled";b:0;s:20:"admin_alerts_enabled";b:1;s:19:"admin_alerts_levels";a:2:{i:0;s:1:"2";i:1;s:1:"3";}s:23:"admin_alerts_fix_action";s:3:"fix";s:10:"pm_enabled";b:1;s:18:"pm_comment_enabled";b:1;s:22:"pm_in_progress_enabled";b:1;s:14:"pm_fix_enabled";b:1;s:18:"pm_pending_enabled";b:1;s:17:"pm_assign_enabled";b:1;s:15:"pm_edit_enabled";b:1;s:17:"pm_reject_enabled";b:1;s:17:"pm_reopen_enabled";b:1;s:17:"pm_delete_enabled";b:1;s:13:"content_value";s:0:"";s:5:"types";a:2:{i:1;s:8:"Anomalie";i:2;s:9:"Evolution";}s:10:"categories";a:4:{i:1;s:5:"Noyau";i:2;s:6:"Module";i:3;s:9:"Graphisme";i:4;s:12:"Installation";}s:10:"severities";a:3:{i:1;a:2:{s:4:"name";s:6:"Mineur";s:5:"color";s:7:"#e8ffa2";}i:2;a:2:{s:4:"name";s:6:"Majeur";s:5:"color";s:7:"#feebbc";}i:3;a:2:{s:4:"name";s:8:"Bloquant";s:5:"color";s:7:"#fdbbbb";}}s:10:"priorities";a:5:{i:1;s:11:"Très basse";i:2;s:5:"Basse";i:3;s:7:"Normale";i:4;s:7:"Elevée";i:5;s:7:"Urgente";}s:8:"versions";a:0:{}s:12:"default_type";i:1;s:16:"default_category";i:0;s:16:"default_severity";i:1;s:16:"default_priority";i:3;s:15:"default_version";i:0;s:14:"type_mandatory";b:0;s:18:"category_mandatory";b:1;s:18:"severity_mandatory";b:0;s:18:"priority_mandatory";b:1;s:29:"detected_in_version_mandatory";b:0;s:19:"display_type_column";b:0;s:23:"display_category_column";b:0;s:23:"display_priority_column";b:0;s:26:"display_detected_in_column";b:0;s:14:"authorizations";a:2:{s:2:"r0";i:3;s:2:"r1";i:15;}s:11:"status_list";a:7:{s:3:"new";i:0;s:7:"pending";i:0;s:8:"assigned";i:20;s:11:"in_progress";i:50;s:8:"rejected";i:0;s:6:"reopen";i:30;s:5:"fixed";i:100;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (43,'wiki-config','O:10:"WikiConfig":1:{s:34:" AbstractConfigData properties_map";a:7:{s:11:"sticky_menu";b:1;s:9:"wiki_name";s:13:"Wiki PhpBoost";s:24:"number_articles_on_index";i:0;s:27:"display_categories_on_index";b:0;s:12:"hits_counter";b:1;s:10:"index_text";s:831:"\n	Bienvenue sur le module wiki !\n	<p>Voici quelques conseils pour bien débuter sur ce module.</p>\n	<ul class="formatter-ul">\n		<li class="formatter-li">Pour configurer votre module, rendez vous dans l''<a class="offload" href="/wiki/admin_wiki.php">administration du module</a></li>\n		<li class="formatter-li">Pour créer des catégories, <a class="offload" href="/wiki/post.php?type=cat">cliquez ici</a></li>\n		<li class="formatter-li">Pour créer des articles, rendez vous <a class="offload" href="/wiki/post.php">ici</a></li>\n	</ul><br /><br />\n	Pour personnaliser l''accueil de ce module, <a class="offload" href="/wiki/admin_wiki.php">cliquez ici</a><br /><br />\n	Pour en savoir plus, n''hésitez pas à consulter la documentation du module sur le site de <a class="offload" href="https://www.phpboost.com/forum/">PHPBoost</a>.\n";s:14:"authorizations";a:3:{s:3:"r-1";i:5137;s:2:"r0";i:5395;s:2:"r1";i:8191;}}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (44,'google-maps-config','O:16:"GoogleMapsConfig":1:{s:34:" AbstractConfigData properties_map";a:5:{s:7:"api_key";s:0:"";s:22:"default_marker_address";s:0:"";s:23:"default_marker_latitude";s:17:"48.85339964950244";s:24:"default_marker_longitude";s:18:"2.3487655397918843";s:12:"default_zoom";i:14;}}');
INSERT INTO `phpboost_configs` (`id`, `name`, `value`) VALUES (45,'recaptcha-config','O:15:"ReCaptchaConfig":1:{s:34:" AbstractConfigData properties_map";a:3:{s:8:"site_key";s:0:"";s:10:"secret_key";s:0:"";s:22:"invisible_mode_enabled";b:0;}}');
DROP TABLE IF EXISTS `phpboost_download`;
CREATE TABLE `phpboost_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `rewrited_title` varchar(255) DEFAULT '',
  `content` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `views_number` int(11) DEFAULT 0,
  `author_custom_name` varchar(255) DEFAULT '',
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `published` int(1) NOT NULL DEFAULT 0,
  `publishing_start_date` int(11) NOT NULL DEFAULT 0,
  `publishing_end_date` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `sources` text DEFAULT NULL,
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `size` bigint(18) NOT NULL DEFAULT 0,
  `downloads_number` int(11) NOT NULL DEFAULT 0,
  `version_number` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `summary` (`summary`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_download` (`id`, `id_category`, `thumbnail`, `title`, `rewrited_title`, `content`, `summary`, `views_number`, `author_custom_name`, `author_user_id`, `published`, `publishing_start_date`, `publishing_end_date`, `creation_date`, `update_date`, `sources`, `file_url`, `size`, `downloads_number`, `version_number`) VALUES (1,1,'default','Logo du module téléchargements','logo-du-module-telechargements','Logo du module téléchargements de PHPBoost.','',0,'',1,1,0,0,1775419345,1775419345,'a:0:{}','/templates/__default__/theme/images/logo.svg',1430,0,'');
DROP TABLE IF EXISTS `phpboost_download_cats`;
CREATE TABLE `phpboost_download_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_download_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Catégorie de test','categorie-de-test',1,0,'',0,'Fichiers de test','default');
DROP TABLE IF EXISTS `phpboost_errors_404`;
CREATE TABLE `phpboost_errors_404` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requested_url` varchar(255) NOT NULL DEFAULT '',
  `from_url` varchar(255) NOT NULL DEFAULT '',
  `times` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`requested_url`,`from_url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
DROP TABLE IF EXISTS `phpboost_events`;
CREATE TABLE `phpboost_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entitled` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `fixing_url` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(100) NOT NULL DEFAULT '',
  `current_status` tinyint(1) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `fixing_date` int(11) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `fixer_id` int(11) DEFAULT NULL,
  `id_in_module` int(11) DEFAULT NULL,
  `identifier` varchar(64) DEFAULT NULL,
  `contribution_type` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(64) DEFAULT NULL,
  `priority` tinyint(1) NOT NULL DEFAULT 3,
  PRIMARY KEY (`id`),
  KEY `type_index` (`type`),
  KEY `identifier_index` (`identifier`),
  KEY `module_index` (`module`),
  KEY `id_in_module_index` (`id_in_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_faq`;
CREATE TABLE `phpboost_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `q_order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_faq` (`id`, `id_category`, `q_order`, `title`, `content`, `creation_date`, `author_user_id`, `approved`) VALUES (1,1,1,'Qu''est-ce que PHPBoost ?','\n    PHPBoost est un CMS (Content Management System ou système de gestion de contenu) français. Ce logiciel permet à n''importe qui de créer\n    son site de façon très simple, tout est assisté. Conçu pour satisfaire les débutants, il devrait aussi ravir les utilisateurs expérimentés qui\n    souhaiteraient pousser son fonctionnement ou encore développer leurs propres modules.\n',1775419344,1,1);
INSERT INTO `phpboost_faq` (`id`, `id_category`, `q_order`, `title`, `content`, `creation_date`, `author_user_id`, `approved`) VALUES (2,2,1,'Qu''est ce qu''un CMS ?','C''est un système de gestion de contenu ou SGC en français (en anglais : Content Management Systems).',1775419344,1,1);
DROP TABLE IF EXISTS `phpboost_faq_cats`;
CREATE TABLE `phpboost_faq_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_faq_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'PHPBoost','phpboost',1,0,'',0,'Des questions sur PHPBoost ?','/templates/__default__/images/default_category.webp');
INSERT INTO `phpboost_faq_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (2,'Dictionnaire','dictionnaire',2,0,'',0,'','/templates/__default__/images/default_category.webp');
DROP TABLE IF EXISTS `phpboost_forum_alerts`;
CREATE TABLE `phpboost_forum_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `idtopic` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `idmodo` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_forum_cats`;
CREATE TABLE `phpboost_forum_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `last_topic_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `color` varchar(250) DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_forum_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `status`, `description`, `last_topic_id`, `url`, `icon`, `color`, `thumbnail`) VALUES (1,'Catégorie de test','categorie-de-test',1,0,'',0,0,'Catégorie de test',1,'','','','');
INSERT INTO `phpboost_forum_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `status`, `description`, `last_topic_id`, `url`, `icon`, `color`, `thumbnail`) VALUES (2,'Forum de test','forum-de-test',1,0,'',1,0,'Description du forum de test',1,'','','','');
DROP TABLE IF EXISTS `phpboost_forum_history`;
CREATE TABLE `phpboost_forum_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_id_action` int(11) NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_forum_msg`;
CREATE TABLE `phpboost_forum_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtopic` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `timestamp_edit` int(11) NOT NULL DEFAULT 0,
  `user_id_edit` int(11) NOT NULL DEFAULT 0,
  `user_ip` varchar(128) NOT NULL DEFAULT '',
  `selected` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idtopic` (`idtopic`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_forum_msg` (`id`, `idtopic`, `user_id`, `content`, `timestamp`, `timestamp_edit`, `user_id_edit`, `user_ip`, `selected`) VALUES (1,1,1,'Message de test sur le forum PHPBoost',1775419344,0,0,'192.168.1.20',0);
DROP TABLE IF EXISTS `phpboost_forum_poll`;
CREATE TABLE `phpboost_forum_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtopic` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answers` text DEFAULT NULL,
  `voter_id` text DEFAULT NULL,
  `votes` text DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_forum_ranks`;
CREATE TABLE `phpboost_forum_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `msg` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `special` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (1,'Administrateur',-2,'rank_admin.png',1);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (2,'Modérateur',-1,'rank_modo.png',1);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (3,'Boosteur Inactif',0,'rank_0.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (4,'Boosteur Fronde',1,'rank_0.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (5,'Boosteur Minigun',25,'rank_1.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (6,'Boosteur Fusil',50,'rank_2.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (7,'Boosteur Bazooka',100,'rank_3.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (8,'Boosteur Roquette',250,'rank_4.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (9,'Boosteur Mortier',500,'rank_5.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (10,'Boosteur Missile',1000,'rank_6.png',0);
INSERT INTO `phpboost_forum_ranks` (`id`, `name`, `msg`, `icon`, `special`) VALUES (11,'Boosteur Fusée',1500,'rank_special.png',0);
DROP TABLE IF EXISTS `phpboost_forum_topics`;
CREATE TABLE `phpboost_forum_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `nbr_msg` int(9) NOT NULL DEFAULT 0,
  `nbr_views` int(9) NOT NULL DEFAULT 0,
  `last_user_id` int(11) NOT NULL DEFAULT 0,
  `last_msg_id` int(11) NOT NULL DEFAULT 0,
  `last_timestamp` int(11) NOT NULL DEFAULT 0,
  `first_msg_id` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `aprob` tinyint(1) NOT NULL DEFAULT 0,
  `display_msg` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`,`last_user_id`,`last_timestamp`,`type`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_forum_topics` (`id`, `id_category`, `title`, `subtitle`, `user_id`, `nbr_msg`, `nbr_views`, `last_user_id`, `last_msg_id`, `last_timestamp`, `first_msg_id`, `type`, `status`, `aprob`, `display_msg`) VALUES (1,2,'Test','Sujet de test',1,1,0,1,1,1775419344,1,0,1,0,0);
DROP TABLE IF EXISTS `phpboost_forum_track`;
CREATE TABLE `phpboost_forum_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtopic` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `track` tinyint(1) NOT NULL DEFAULT 0,
  `pm` tinyint(1) NOT NULL DEFAULT 0,
  `mail` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_forum_view`;
CREATE TABLE `phpboost_forum_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtopic` int(11) NOT NULL DEFAULT 0,
  `last_view_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_gallery`;
CREATE TABLE `phpboost_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `width` int(9) NOT NULL DEFAULT 0,
  `height` int(9) NOT NULL DEFAULT 0,
  `weight` int(9) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `aprob` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_gallery` (`id`, `id_category`, `name`, `path`, `width`, `height`, `weight`, `user_id`, `aprob`, `views`, `timestamp`) VALUES (1,1,'Logo PHPBoost','phpboost-logo.png',90,90,8080,1,1,0,1775419344);
DROP TABLE IF EXISTS `phpboost_gallery_cats`;
CREATE TABLE `phpboost_gallery_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_gallery_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Test','test',1,0,'',0,'Galerie de test','/templates/__default__/images/default_category.webp');
DROP TABLE IF EXISTS `phpboost_group`;
CREATE TABLE `phpboost_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(6) NOT NULL DEFAULT '',
  `auth` varchar(255) NOT NULL DEFAULT '',
  `members` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_guestbook`;
CREATE TABLE `phpboost_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `login` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_history`;
CREATE TABLE `phpboost_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL DEFAULT '',
  `id_in_module` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `action` varchar(128) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module_id_index` (`module_id`),
  KEY `id_in_module_index` (`id_in_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_internal_authentication`;
CREATE TABLE `phpboost_internal_authentication` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT '',
  `password` varchar(64) DEFAULT '',
  `registration_pass` varchar(30) NOT NULL DEFAULT '0',
  `change_password_pass` varchar(64) NOT NULL DEFAULT '',
  `connection_attemps` tinyint(1) NOT NULL DEFAULT 0,
  `last_connection` int(11) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
-- INSERT INTO `phpboost_internal_authentication` (`user_id`, `login`, `password`, `registration_pass`, `change_password_pass`, `connection_attemps`, `last_connection`, `approved`) VALUES (1,'internetbf','1f83071b40aa012b67fd6fb76a62de29c3db351f215811337f68d8a3a34daa46','','',0,1775419366,1);
DROP TABLE IF EXISTS `phpboost_internal_authentication_failures`;
CREATE TABLE `phpboost_internal_authentication_failures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(64) DEFAULT '',
  `login` varchar(255) DEFAULT '',
  `connection_attemps` tinyint(1) NOT NULL DEFAULT 0,
  `last_connection` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_keywords`;
CREATE TABLE `phpboost_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_keywords_relations`;
CREATE TABLE `phpboost_keywords_relations` (
  `id_in_module` int(11) NOT NULL DEFAULT 0,
  `module_id` varchar(25) DEFAULT '',
  `id_keyword` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_media`;
CREATE TABLE `phpboost_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `rewrited_title` varchar(250) NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `author_user_id` int(11) NOT NULL DEFAULT -1,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `published` int(6) NOT NULL DEFAULT 0,
  `file_url` text DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL DEFAULT '0',
  `width` int(9) NOT NULL DEFAULT 100,
  `height` int(9) NOT NULL DEFAULT 100,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `views_number` int(11) NOT NULL DEFAULT 0,
  `sources` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_media` (`id`, `id_category`, `title`, `rewrited_title`, `content`, `summary`, `author_user_id`, `creation_date`, `update_date`, `published`, `file_url`, `mime_type`, `width`, `height`, `thumbnail`, `views_number`, `sources`) VALUES (1,1,'Vidéo - Big Buck Bunny','video-big-buck-bunny','\n	Vidéo de démonstration.<br /><br />\n	Voici une vidéo de démonstration illustrant le fonctionnement de ce module.<br /><br />\n	Bonne visualisation !\n',NULL,1,1775419344,0,2,'https://www.youtube.com/watch?v=aqz-KE-bpKQ&t=363s','video/host',800,450,'',0,NULL);
DROP TABLE IF EXISTS `phpboost_media_cats`;
CREATE TABLE `phpboost_media_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `content_type` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_media_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`, `content_type`) VALUES (1,'Vidéos','videos',1,0,'',0,'Cette catégorie contient une vidéo de démonstration.','/templates/__default__/images/default_category.webp',2);
DROP TABLE IF EXISTS `phpboost_member`;
CREATE TABLE `phpboost_member` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(50) DEFAULT '',
  `show_email` tinyint(1) NOT NULL DEFAULT 1,
  `locale` varchar(25) DEFAULT '',
  `theme` varchar(50) DEFAULT '',
  `timezone` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(15) DEFAULT '',
  `unread_pm` int(6) NOT NULL DEFAULT 0,
  `posted_msg` int(6) NOT NULL DEFAULT 0,
  `registration_date` int(11) NOT NULL DEFAULT 0,
  `last_connection_date` int(11) NOT NULL DEFAULT 0,
  `user_groups` text DEFAULT NULL,
  `warning_percentage` int(6) NOT NULL DEFAULT 0,
  `delay_banned` int(11) NOT NULL DEFAULT 0,
  `delay_readonly` int(11) NOT NULL DEFAULT 0,
  `autoconnect_key` varchar(64) DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `display_name` (`display_name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
-- INSERT INTO `phpboost_member` (`user_id`, `display_name`, `level`, `email`, `show_email`, `locale`, `theme`, `timezone`, `editor`, `unread_pm`, `posted_msg`, `registration_date`, `last_connection_date`, `user_groups`, `warning_percentage`, `delay_banned`, `delay_readonly`, `autoconnect_key`) VALUES (1,'internetbf',2,'internetbf@gmail.com',0,'french','base','Europe/Paris','BBCode',0,0,1775419366,0,'',0,0,0,'0b613fc5d3771608ec9aecabf4d3a36cdc6b9d2e63c147aa2cfc9cd30181d016');
DROP TABLE IF EXISTS `phpboost_member_extended_fields`;
CREATE TABLE `phpboost_member_extended_fields` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_view_forum` text DEFAULT NULL,
  `user_skype` text DEFAULT NULL,
  `user_sign` text DEFAULT NULL,
  `register_newsletter` text DEFAULT NULL,
  `user_sex` text DEFAULT NULL,
  `user_biography` text DEFAULT NULL,
  `user_pmtomail` text DEFAULT NULL,
  `user_born` text DEFAULT NULL,
  `user_avatar` text DEFAULT NULL,
  `user_website` text DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_member_extended_fields` (`user_id`, `last_view_forum`, `user_skype`, `user_sign`, `register_newsletter`, `user_sex`, `user_biography`, `user_pmtomail`, `user_born`, `user_avatar`, `user_website`) VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DROP TABLE IF EXISTS `phpboost_member_extended_fields_list`;
CREATE TABLE `phpboost_member_extended_fields_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `field_name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `field_type` varchar(255) NOT NULL DEFAULT '',
  `possible_values` text DEFAULT NULL,
  `default_value` text DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `display` tinyint(1) NOT NULL DEFAULT 0,
  `regex` varchar(255) NOT NULL DEFAULT '',
  `freeze` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (1,1,'last_view_forum','last_view_forum','','MemberHiddenExtendedField','s:0:"";','',0,0,0,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (2,2,'Skype','user_skype','','MemberShortTextExtendedField','s:0:"";','',0,0,4,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (3,3,'Signature','user_sign','Apparaît sous chacun de vos messages','MemberLongTextExtendedField','s:0:"";','',0,0,0,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (4,4,'Newsletter(s) souscrite(s)','register_newsletter','Sélectionnez la(les) newsletter(s) auxquelles vous souhaitez être inscrit','RegisterNewsletterExtendedField','s:0:"";','',0,1,0,0,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (5,5,'Sexe','user_sex','','MemberUserSexExtendedField','s:0:"";','',0,0,0,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (6,6,'Biographie','user_biography','','MemberLongTextExtendedField','s:0:"";','',0,0,0,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (7,7,'Recevoir une notification par mail à la réception d''un message privé','user_pmtomail','','MemberUserPMToMailExtendedField','s:0:"";','',0,0,0,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (8,8,'Date de naissance','user_born','','MemberUserBornExtendedField','s:0:"";','',0,0,0,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (9,9,'Avatar','user_avatar','','MemberUserAvatarExtendedField','s:0:"";','',0,1,0,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
INSERT INTO `phpboost_member_extended_fields_list` (`id`, `position`, `name`, `field_name`, `description`, `field_type`, `possible_values`, `default_value`, `required`, `display`, `regex`, `freeze`, `auth`) VALUES (10,10,'Site internet','user_website','Veuillez renseigner un site web valide (ex : https://www.phpboost.com)','MemberShortTextExtendedField','s:0:"";','',0,1,5,1,'a:3:{s:2:"r1";i:3;s:2:"r0";i:3;s:3:"r-1";i:2;}');
DROP TABLE IF EXISTS `phpboost_menus`;
CREATE TABLE `phpboost_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `object` mediumtext DEFAULT NULL,
  `class` varchar(67) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `block` tinyint(1) NOT NULL DEFAULT 0,
  `position` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `block` (`block`),
  KEY `class` (`class`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (1,'sandbox/SandboxModuleMiniMenu','O:21:"SandboxModuleMiniMenu":34:{s:2:"id";s:1:"1";s:5:"title";s:29:"sandbox/SandboxModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"1";s:8:"position";i:0;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:40:" SandboxModuleMiniMenu enable_css_button";N;s:39:" SandboxModuleMiniMenu enable_css_cache";N;s:41:" SandboxModuleMiniMenu disable_css_button";N;s:40:" SandboxModuleMiniMenu disable_css_cache";N;s:39:" SandboxModuleMiniMenu clean_css_button";N;s:38:" SandboxModuleMiniMenu clean_css_cache";N;s:35:" SandboxModuleMiniMenu clean_button";N;s:34:" SandboxModuleMiniMenu clean_cache";N;s:47:" SandboxModuleMiniMenu clean_syndication_button";N;s:46:" SandboxModuleMiniMenu clean_syndication_cache";N;s:42:" SandboxModuleMiniMenu disable_left_button";N;s:41:" SandboxModuleMiniMenu enable_left_button";N;s:40:" SandboxModuleMiniMenu disable_left_menu";N;s:39:" SandboxModuleMiniMenu enable_left_menu";N;s:43:" SandboxModuleMiniMenu disable_right_button";N;s:42:" SandboxModuleMiniMenu enable_right_button";N;s:41:" SandboxModuleMiniMenu disable_right_menu";N;s:40:" SandboxModuleMiniMenu enable_right_menu";N;s:32:" SandboxModuleMiniMenu mini_lang";N;s:27:" SandboxModuleMiniMenu lang";N;}','SandboxModuleMiniMenu',1,1,0);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (2,'calendar/CalendarModuleMiniMenu','O:22:"CalendarModuleMiniMenu":14:{s:2:"id";s:1:"2";s:5:"title";s:31:"calendar/CalendarModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"7";s:8:"position";i:0;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','CalendarModuleMiniMenu',1,7,-1);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (3,'connect/ConnectModuleMiniMenu','O:21:"ConnectModuleMiniMenu":14:{s:2:"id";s:1:"3";s:5:"title";s:29:"connect/ConnectModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"2";s:8:"position";i:0;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','ConnectModuleMiniMenu',1,2,0);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (4,'shoutbox/ShoutboxModuleMiniMenu','O:22:"ShoutboxModuleMiniMenu":14:{s:2:"id";s:1:"4";s:5:"title";s:31:"shoutbox/ShoutboxModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:0;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','ShoutboxModuleMiniMenu',1,8,0);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (5,'online/OnlineModuleMiniMenu','O:20:"OnlineModuleMiniMenu":20:{s:2:"id";s:1:"5";s:5:"title";s:27:"online/OnlineModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:34:" OnlineModuleMiniMenu robot_number";i:0;s:36:" OnlineModuleMiniMenu visitor_number";i:0;s:35:" OnlineModuleMiniMenu member_number";i:0;s:38:" OnlineModuleMiniMenu moderator_number";i:0;s:42:" OnlineModuleMiniMenu administrator_number";i:0;s:33:" OnlineModuleMiniMenu total_users";i:0;}','OnlineModuleMiniMenu',1,8,1);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (6,'faq/FaqModuleMiniMenu','O:17:"FaqModuleMiniMenu":14:{s:2:"id";s:1:"6";s:5:"title";s:21:"faq/FaqModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"7";s:8:"position";i:1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','FaqModuleMiniMenu',1,7,0);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (7,'gallery/GalleryModuleMiniMenu','O:21:"GalleryModuleMiniMenu":14:{s:2:"id";s:1:"7";s:5:"title";s:29:"gallery/GalleryModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:2;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','GalleryModuleMiniMenu',1,8,2);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (8,'web/WebModuleMiniMenu','O:17:"WebModuleMiniMenu":14:{s:2:"id";s:1:"8";s:5:"title";s:21:"web/WebModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:3;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','WebModuleMiniMenu',1,8,3);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (9,'guestbook/GuestbookModuleMiniMenu','O:23:"GuestbookModuleMiniMenu":14:{s:2:"id";s:1:"9";s:5:"title";s:33:"guestbook/GuestbookModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"7";s:8:"position";i:2;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','GuestbookModuleMiniMenu',1,7,1);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (10,'LangsSwitcher/LangsSwitcherModuleMiniMenu','O:27:"LangsSwitcherModuleMiniMenu":14:{s:2:"id";s:2:"10";s:5:"title";s:41:"LangsSwitcher/LangsSwitcherModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:4;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','LangsSwitcherModuleMiniMenu',1,8,4);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (11,'ThemesSwitcher/ThemesSwitcherModuleMiniMenu','O:28:"ThemesSwitcherModuleMiniMenu":14:{s:2:"id";s:2:"11";s:5:"title";s:43:"ThemesSwitcher/ThemesSwitcherModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:5;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','ThemesSwitcherModuleMiniMenu',1,8,5);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (12,'newsletter/NewsletterModuleMiniMenu','O:24:"NewsletterModuleMiniMenu":14:{s:2:"id";s:2:"12";s:5:"title";s:35:"newsletter/NewsletterModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"5";s:8:"position";i:0;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','NewsletterModuleMiniMenu',1,5,0);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (13,'search/SearchModuleMiniMenu','O:20:"SearchModuleMiniMenu":14:{s:2:"id";s:2:"13";s:5:"title";s:27:"search/SearchModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"1";s:8:"position";i:1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','SearchModuleMiniMenu',1,1,1);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (14,'SocialNetworks/SocialNetworksModuleMiniMenu','O:28:"SocialNetworksModuleMiniMenu":14:{s:2:"id";s:2:"14";s:5:"title";s:43:"SocialNetworks/SocialNetworksModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:6;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','SocialNetworksModuleMiniMenu',1,8,6);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (15,'poll/PollModuleMiniMenu','O:18:"PollModuleMiniMenu":19:{s:2:"id";s:2:"15";s:5:"title";s:23:"poll/PollModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"7";s:8:"position";i:2;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:4:"lang";N;s:4:"item";N;s:4:"view";N;s:29:" PollModuleMiniMenu vote_form";N;s:24:" PollModuleMiniMenu vote";a:0:{}}','PollModuleMiniMenu',1,7,2);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (16,'stats/StatsModuleMiniMenu','O:19:"StatsModuleMiniMenu":14:{s:2:"id";s:2:"16";s:5:"title";s:25:"stats/StatsModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"7";s:8:"position";i:3;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','StatsModuleMiniMenu',1,7,3);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (17,'download/DownloadModuleMiniMenu','O:22:"DownloadModuleMiniMenu":14:{s:2:"id";s:2:"17";s:5:"title";s:31:"download/DownloadModuleMiniMenu";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";s:1:"8";s:8:"position";i:7;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;}','DownloadModuleMiniMenu',1,8,7);
INSERT INTO `phpboost_menus` (`id`, `title`, `object`, `class`, `enabled`, `block`, `position`) VALUES (18,'PHPBoost','O:9:"LinksMenu":21:{s:2:"id";i:18;s:5:"title";s:8:"PHPBoost";s:4:"auth";N;s:7:"enabled";b:1;s:5:"block";i:7;s:8:"position";i:-4;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:1:"/";s:5:"image";s:0:"";s:4:"icon";s:0:"";s:3:"uid";i:1764;s:5:"depth";i:0;s:4:"type";s:9:"automatic";s:8:"elements";a:22:{i:0;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:11:"Actualités";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:6:"/news/";s:5:"image";s:0:"";s:4:"icon";s:22:"far fa-fw fa-newspaper";s:3:"uid";i:1765;s:5:"depth";i:1;}i:1;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:8:"Articles";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:10:"/articles/";s:5:"image";s:0:"";s:4:"icon";s:23:"far fa-fw fa-file-lines";s:3:"uid";i:1766;s:5:"depth";i:1;}i:2;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:12:"Bac à sable";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:9:"/sandbox/";s:5:"image";s:0:"";s:4:"icon";s:30:"fa fa-fw fa-screwdriver-wrench";s:3:"uid";i:1767;s:5:"depth";i:1;}i:3;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:10:"Calendrier";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:10:"/calendar/";s:5:"image";s:0:"";s:4:"icon";s:26:"far fa-fw fa-calendar-days";s:3:"uid";i:1768;s:5:"depth";i:1;}i:4;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:7:"Contact";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:9:"/contact/";s:5:"image";s:0:"";s:4:"icon";s:14:"fa fa-fw fa-at";s:3:"uid";i:1769;s:5:"depth";i:1;}i:5;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:10:"Discussion";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:10:"/shoutbox/";s:5:"image";s:0:"";s:4:"icon";s:21:"far fa-fw fa-comments";s:3:"uid";i:1770;s:5:"depth";i:1;}i:6;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:8:"En ligne";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:8:"/online/";s:5:"image";s:0:"";s:4:"icon";s:16:"fa fa-fw fa-plug";s:3:"uid";i:1771;s:5:"depth";i:1;}i:7;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:5:"F.A.Q";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:5:"/faq/";s:5:"image";s:0:"";s:4:"icon";s:28:"far fa-fw fa-circle-question";s:3:"uid";i:1772;s:5:"depth";i:1;}i:8;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:5:"Forum";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:7:"/forum/";s:5:"image";s:0:"";s:4:"icon";s:24:"fa fa-fw fa-earth-europe";s:3:"uid";i:1773;s:5:"depth";i:1;}i:9;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:7:"Galerie";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:9:"/gallery/";s:5:"image";s:0:"";s:4:"icon";s:18:"far fa-fw fa-image";s:3:"uid";i:1774;s:5:"depth";i:1;}i:10;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:9:"Liens Web";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:5:"/web/";s:5:"image";s:0:"";s:4:"icon";s:25:"fa fa-fw fa-external-link";s:3:"uid";i:1775;s:5:"depth";i:1;}i:11;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:10:"Livre d''or";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:11:"/guestbook/";s:5:"image";s:0:"";s:4:"icon";s:21:"fa fa-fw fa-signature";s:3:"uid";i:1776;s:5:"depth";i:1;}i:12;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:11:"Multimédia";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:7:"/media/";s:5:"image";s:0:"";s:4:"icon";s:16:"fa fa-fw fa-film";s:3:"uid";i:1777;s:5:"depth";i:1;}i:13;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:10:"Newsletter";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:12:"/newsletter/";s:5:"image";s:0:"";s:4:"icon";s:30:"fa fa-fw fa-envelope-open-text";s:3:"uid";i:1778;s:5:"depth";i:1;}i:14;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:5:"Pages";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:7:"/pages/";s:5:"image";s:0:"";s:4:"icon";s:17:"far fa-fw fa-file";s:3:"uid";i:1779;s:5:"depth";i:1;}i:15;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:12:"Plan du site";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:9:"/sitemap/";s:5:"image";s:0:"";s:4:"icon";s:19:"fa fa-fw fa-sitemap";s:3:"uid";i:1780;s:5:"depth";i:1;}i:16;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:15:"Rapport de bugs";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:12:"/bugtracker/";s:5:"image";s:0:"";s:4:"icon";s:15:"fa fa-fw fa-bug";s:3:"uid";i:1781;s:5:"depth";i:1;}i:17;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:9:"Recherche";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:8:"/search/";s:5:"image";s:0:"";s:4:"icon";s:18:"fa fa-fw fa-search";s:3:"uid";i:1782;s:5:"depth";i:1;}i:18;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:8:"Sondages";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:6:"/poll/";s:5:"image";s:0:"";s:4:"icon";s:34:"fa fa-fw fa-square-poll-horizontal";s:3:"uid";i:1783;s:5:"depth";i:1;}i:19;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:12:"Statistiques";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:7:"/stats/";s:5:"image";s:0:"";s:4:"icon";s:24:"fa fa-fw fa-chart-column";s:3:"uid";i:1784;s:5:"depth";i:1;}i:20;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:17:"Téléchargements";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:10:"/download/";s:5:"image";s:0:"";s:4:"icon";s:20:"fa fa-fw fa-download";s:3:"uid";i:1785;s:5:"depth";i:1;}i:21;O:13:"LinksMenuLink":19:{s:2:"id";i:0;s:5:"title";s:4:"Wiki";s:4:"auth";N;s:7:"enabled";b:0;s:5:"block";i:0;s:8:"position";i:-1;s:28:" * hidden_with_small_screens";b:0;s:19:" * mini_from_module";b:0;s:16:" * disabled_body";b:0;s:17:" * pushed_content";b:0;s:16:"pushmenu_opening";s:4:"left";s:18:"pushmenu_expanding";s:7:"overlap";s:7:"filters";a:1:{i:0;O:16:"MenuStringFilter":1:{s:10:" * pattern";s:1:"/";}}s:11:" * template";N;s:3:"url";s:6:"/wiki/";s:5:"image";s:0:"";s:4:"icon";s:26:"fa fa-fw fa-graduation-cap";s:3:"uid";i:1786;s:5:"depth";i:1;}}}','LinksMenu',1,7,-4);
DROP TABLE IF EXISTS `phpboost_news`;
CREATE TABLE `phpboost_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `rewrited_title` varchar(255) DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `published` int(1) NOT NULL DEFAULT 0,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `publishing_start_date` int(11) NOT NULL DEFAULT 0,
  `publishing_end_date` int(11) NOT NULL DEFAULT 0,
  `sources` text DEFAULT NULL,
  `views_number` int(11) DEFAULT 0,
  `summary` text DEFAULT NULL,
  `author_custom_name` varchar(255) DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `top_list_enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `summary` (`summary`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_news` (`id`, `title`, `rewrited_title`, `content`, `author_user_id`, `creation_date`, `update_date`, `published`, `id_category`, `publishing_start_date`, `publishing_end_date`, `sources`, `views_number`, `summary`, `author_custom_name`, `thumbnail`, `top_list_enabled`) VALUES (1,'Votre site sous PHPBoost CMS','votre-site-sous-phpboost-cms','Votre site propulsé par PHPBoost est bien installé et fonctionnel. Afin de vous aider à le prendre en main,\n    l''accueil de chaque module contient un message pour vous guider dans vos premiers pas. Voici également quelques recommandations supplémentaires que nous vous proposons de lire avec attention : <br />\n    <br />\n    <h2 class="formatter-title">N''oubliez pas de supprimer le répertoire "install"</h2><br />\n    <br />\n    Supprimez le répertoire /install à la racine de votre site pour des raisons de sécurité afin que personne ne puisse recommencer l''installation.<br />\n    <br />\n    <h2 class="formatter-title">Administrez votre site</h2><br />\n    <br />\n    Accédez au <a class="offload" href="/admin/">panneau d''administration de votre site</a> afin de le paramétrer comme vous le souhaitez !  Pour cela : <br />\n    <br />\n    <ul class="formatter-ul">\n        <li class="formatter-li"><a class="offload" href="/admin/maintain/?url=/">Mettez votre site en maintenance</a> en attendant que vous le configuriez à votre guise.\n        </li><li class="formatter-li">Rendez vous à la <a class="offload" href="/admin/config/?url=/general/">Configuration générale du site</a>.\n        </li><li class="formatter-li"><a class="offload" href="/admin/modules/?url=/installed/">Configurez les modules</a> disponibles et donnez leur les droits d''accès (si vous n''avez pas installé le pack complet, tous les modules sont disponibles sur le site de <a class="offload" href="https://www.phpboost.com/download/">phpboost.com</a> dans la section téléchargement).\n        </li><li class="formatter-li"><a class="offload" href="/admin/content/?url=/config/">Choisissez le langage de formatage du contenu</a> par défaut du site.\n        </li><li class="formatter-li"><a class="offload" href="/admin/member/?url=/config/">Configurez l''inscription des membres</a>.\n        </li><li class="formatter-li"><a class="offload" href="/admin/themes/?url=/installed/">Choisissez le thème par défaut de votre site</a> pour en changer l''apparence (vous pouvez en obtenir d''autres sur le site de <a class="offload" href="https://www.phpboost.com/download/">phpboost.com</a>).\n        </li><li class="formatter-li">Avant de donner l''accès de votre site à vos visiteurs, prenez un peu de temps pour y mettre du contenu.\n        </li><li class="formatter-li">Enfin <a class="offload" href="/admin/maintain/?url=/">désactivez la maintenance</a> de votre site afin qu''il soit visible par vos visiteurs.<br />\n        </li>\n    </ul><br />\n    <br />\n    <h2 class="formatter-title">Que faire si vous rencontrez un problème ?</h2><br />\n    <br />\n    N''hésitez pas à consulter <a class="offload" href="https://www.phpboost.com/wiki/">la documentation de PHPBoost</a> ou à poser vos questions sur le <a class="offload" href="https://www.phpboost.com/forum/">forum d''entraide</a>.<br /> <br />\n    <br />\n    <p class="float-right">Toute l''équipe de PHPBoost vous remercie d''utiliser son logiciel pour créer votre site web !</p>',1,1775419343,0,1,1,0,0,'a:0:{}',0,'','','default',0);
DROP TABLE IF EXISTS `phpboost_news_cats`;
CREATE TABLE `phpboost_news_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_news_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Test','test',1,0,'',0,'Catégorie de test','default');
DROP TABLE IF EXISTS `phpboost_newsletter_archives`;
CREATE TABLE `phpboost_newsletter_archives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `nbr_subscribers` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `language_type` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_newsletter_streams`;
CREATE TABLE `phpboost_newsletter_streams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_newsletter_streams` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Actualités du site PhpBoost','actualites-du-site-phpboost',1,0,'',0,'Newsletter mensuelle','/templates/__default__/images/default_item.webp');
DROP TABLE IF EXISTS `phpboost_newsletter_subscribers`;
CREATE TABLE `phpboost_newsletter_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT -1,
  `mail` varchar(50) NOT NULL DEFAULT '',
  `subscription_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_newsletter_subscriptions`;
CREATE TABLE `phpboost_newsletter_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_note`;
CREATE TABLE `phpboost_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `id_in_module` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `note` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_pages`;
CREATE TABLE `phpboost_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `rewrited_title` varchar(255) DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `published` int(1) NOT NULL DEFAULT 0,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `publishing_start_date` int(11) NOT NULL DEFAULT 0,
  `publishing_end_date` int(11) NOT NULL DEFAULT 0,
  `sources` text DEFAULT NULL,
  `views_number` int(11) DEFAULT 0,
  `author_custom_name` varchar(255) DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `i_order` int(11) NOT NULL DEFAULT 0,
  `author_display` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_pages` (`id`, `title`, `rewrited_title`, `content`, `author_user_id`, `creation_date`, `update_date`, `published`, `id_category`, `publishing_start_date`, `publishing_end_date`, `sources`, `views_number`, `author_custom_name`, `thumbnail`, `i_order`, `author_display`) VALUES (1,'Une première page','une-premiere-page','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem vel odio eligendi, esse nostrum quo sunt consectetur ea earum laudantium voluptate sequi harum,\n    sint voluptates cumque, minima a in sit. Accusantium eum a, rerum libero fugiat quae vero sequi officia!',1,1775419345,0,1,1,0,0,'a:0:{}',0,'','default',0,0);
DROP TABLE IF EXISTS `phpboost_pages_cats`;
CREATE TABLE `phpboost_pages_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_pages_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Test','test',1,0,'',0,'Catégorie de test','default');
DROP TABLE IF EXISTS `phpboost_pm_msg`;
CREATE TABLE `phpboost_pm_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idconvers` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `contents` text DEFAULT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `view_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idconvers` (`idconvers`,`user_id`,`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_pm_topic`;
CREATE TABLE `phpboost_pm_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_id_dest` int(11) NOT NULL DEFAULT 0,
  `user_convers_status` tinyint(1) NOT NULL DEFAULT 0,
  `user_view_pm` int(11) NOT NULL DEFAULT 0,
  `nbr_msg` int(11) NOT NULL DEFAULT 0,
  `last_user_id` int(11) NOT NULL DEFAULT 0,
  `last_msg_id` int(11) NOT NULL DEFAULT 0,
  `last_timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_user` (`user_id`,`user_id_dest`,`user_convers_status`,`last_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_poll`;
CREATE TABLE `phpboost_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `rewrited_title` varchar(255) DEFAULT '',
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `published` int(1) NOT NULL DEFAULT 0,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `publishing_start_date` int(11) NOT NULL DEFAULT 0,
  `publishing_end_date` int(11) NOT NULL DEFAULT 0,
  `views_number` int(11) DEFAULT 0,
  `author_custom_name` varchar(255) DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `question` text NOT NULL,
  `answers_type` int(1) NOT NULL DEFAULT 1,
  `answers` text NOT NULL,
  `votes` text NOT NULL,
  `votes_number` int(11) NOT NULL DEFAULT 0,
  `countdown_display` int(1) NOT NULL DEFAULT 2,
  `close_poll` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
-- INSERT INTO `phpboost_poll` (`id`, `title`, `rewrited_title`, `author_user_id`, `creation_date`, `update_date`, `published`, `id_category`, `publishing_start_date`, `publishing_end_date`, `views_number`, `author_custom_name`, `thumbnail`, `question`, `answers_type`, `answers`, `votes`, `votes_number`, `countdown_display`, `close_poll`) VALUES (1,'Critique du site','critique-du-site',1,1775419345,0,1,1,0,0,0,'','default','Comment trouvez-vous notre site ?',1,'a:4:{s:9:"Supersite";a:2:{s:10:"is_default";b:0;s:5:"title";s:10:"Super site";}s:6:"Pasmal";a:2:{s:10:"is_default";b:0;s:5:"title";s:7:"Pas mal";}s:12:"Plutôtmoyen";a:2:{s:10:"is_default";b:0;s:5:"title";s:13:"Plutôt moyen";}s:3:"Bof";a:2:{s:10:"is_default";b:0;s:5:"title";s:3:"Bof";}}','a:4:{s:10:"Super site";i:15;s:7:"Pas mal";i:3;s:13:"Plutôt moyen";i:6;s:3:"Bof";i:0;}',24,0,0);
DROP TABLE IF EXISTS `phpboost_poll_cats`;
CREATE TABLE `phpboost_poll_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
-- INSERT INTO `phpboost_poll_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Catégorie de test','categorie-de-test',1,0,'',0,'Elements basiques de démonstration','default');
DROP TABLE IF EXISTS `phpboost_poll_voters`;
CREATE TABLE `phpboost_poll_voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL DEFAULT 0,
  `voter_user_id` int(11) DEFAULT 0,
  `voter_ip` varchar(50) NOT NULL DEFAULT '',
  `vote_timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
-- INSERT INTO `phpboost_poll_voters` (`id`, `poll_id`, `voter_user_id`, `voter_ip`, `vote_timestamp`) VALUES (1,1,-1,'127.0.0.1',1775419345);
DROP TABLE IF EXISTS `phpboost_search_index`;
CREATE TABLE `phpboost_search_index` (
  `id_search` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `module` varchar(64) NOT NULL DEFAULT '0',
  `search` varchar(50) NOT NULL DEFAULT '',
  `options` varchar(50) NOT NULL DEFAULT '',
  `last_search_use` int(11) NOT NULL DEFAULT 0,
  `times_used` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_search`),
  UNIQUE KEY `id_user` (`id_user`,`module`,`search`,`options`),
  KEY `last_search_use` (`last_search_use`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_search_results`;
CREATE TABLE `phpboost_search_results` (
  `id_search` int(11) NOT NULL AUTO_INCREMENT,
  `id_content` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `relevance` decimal(10,3) NOT NULL DEFAULT 0.000,
  `link` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_search`,`id_content`),
  KEY `relevance` (`relevance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_sessions`;
CREATE TABLE `phpboost_sessions` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_id` varchar(64) NOT NULL DEFAULT '',
  `token` varchar(64) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(64) DEFAULT '',
  `location_script` varchar(200) NOT NULL DEFAULT '',
  `location_title` varchar(255) NOT NULL DEFAULT '',
  `cached_data` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `location_id` varchar(64) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `user_id` (`user_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
-- INSERT INTO `phpboost_sessions` (`user_id`, `session_id`, `token`, `timestamp`, `ip`, `location_script`, `location_title`, `cached_data`, `data`, `location_id`) VALUES (-1,'57e3075b871c8136e646c61790a2ced0a022e18f8cfff941f3a3e85151f50834','d914e9af1e933ff3',1775419366,'192.168.1.20','/phpboost/kernel/framework/ajax/user_xmlhttprequest.php','Erreur','a:16:{s:7:"user_id";i:-1;s:12:"display_name";s:7:"visitor";s:5:"level";i:-1;s:5:"email";N;s:10:"show_email";b:0;s:6:"locale";s:6:"french";s:5:"theme";s:4:"base";s:8:"timezone";s:12:"Europe/Paris";s:6:"editor";s:6:"BBCode";s:9:"unread_pm";i:0;s:17:"registration_date";i:0;s:20:"last_connection_date";i:1775419350;s:11:"user_groups";s:0:"";s:18:"warning_percentage";i:0;s:12:"delay_banned";i:0;s:14:"delay_readonly";i:0;}','a:0:{}','');
-- INSERT INTO `phpboost_sessions` (`user_id`, `session_id`, `token`, `timestamp`, `ip`, `location_script`, `location_title`, `cached_data`, `data`, `location_id`) VALUES (1,'281fcabb255fdb8bc8a1157456dda557acd8a13bb830c39a6c55c8a5654b0c1e','17fe1c1bdf31b3ea',1775419704,'192.168.1.20','/phpboost/database/admin_database.php?action=backup','Gestion des tables','a:28:{s:9:"m_user_id";s:1:"1";s:12:"display_name";s:10:"internetbf";s:5:"level";s:1:"2";s:5:"email";s:20:"internetbf@gmail.com";s:10:"show_email";s:1:"0";s:6:"locale";s:6:"french";s:5:"theme";s:4:"base";s:8:"timezone";s:12:"Europe/Paris";s:6:"editor";s:6:"BBCode";s:9:"unread_pm";s:1:"0";s:10:"posted_msg";s:1:"0";s:17:"registration_date";s:10:"1775419366";s:20:"last_connection_date";s:1:"0";s:11:"user_groups";s:0:"";s:18:"warning_percentage";s:1:"0";s:12:"delay_banned";s:1:"0";s:14:"delay_readonly";s:1:"0";s:7:"user_id";s:1:"1";s:15:"last_view_forum";N;s:10:"user_skype";N;s:9:"user_sign";N;s:19:"register_newsletter";N;s:8:"user_sex";N;s:14:"user_biography";N;s:13:"user_pmtomail";N;s:9:"user_born";N;s:11:"user_avatar";N;s:12:"user_website";N;}','a:0:{}','');
DROP TABLE IF EXISTS `phpboost_shoutbox`;
CREATE TABLE `phpboost_shoutbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(150) DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_shoutbox` (`id`, `login`, `user_id`, `content`, `timestamp`) VALUES (1,'PHPBoost',-1,'L''équipe de PHPBoost vous souhaite la bienvenue !',1775419344);
DROP TABLE IF EXISTS `phpboost_smileys`;
CREATE TABLE `phpboost_smileys` (
  `idsmiley` int(11) NOT NULL AUTO_INCREMENT,
  `code_smiley` varchar(50) DEFAULT '',
  `url_smiley` varchar(50) DEFAULT '',
  PRIMARY KEY (`idsmiley`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (1,':o','wow.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (2,':whistle','whistle.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (3,':)','smile.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (4,':lol','laugh.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (5,':p','tongue.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (6,':(','sad.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (7,';)','wink.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (8,':what','what.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (9,':D','grin.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (10,'^^','happy.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (11,':|','straight.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (12,':gne','gne.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (13,':top','top.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (14,':party','party.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (15,':devil','devil.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (16,':@','angry.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (17,':''(','cry.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (18,':crazy','crazy.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (19,':cool','cool.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (20,':night','night.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (21,':vomit','vomit.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (22,':unhappy','unhappy.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (23,':love','love.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (24,':hum','confused.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (25,':drool','drooling.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (26,':cold','cold.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (27,':hot','hot.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (28,':hi','hello.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (29,':bal','balloon.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (30,':bomb','bomb.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (31,':brokenheart','brokenheart.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (32,':cake','cake.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (33,':dead','dead.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (34,':drink','drink.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (35,':flower','flower.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (36,':ghost','ghost.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (37,':gift','gift.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (38,':girly','girly.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (39,':heart','heart.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (40,':hug','hug.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (41,':idea','idea.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (42,':kiss','kiss.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (43,':mail','mail.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (44,':x','mute.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (46,':nerd','nerd.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (47,':sick','sick.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (48,':boring','boring.png');
INSERT INTO `phpboost_smileys` (`idsmiley`, `code_smiley`, `url_smiley`) VALUES (49,':zombie','zombie.png');
DROP TABLE IF EXISTS `phpboost_stats`;
CREATE TABLE `phpboost_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stats_year` int(11) NOT NULL DEFAULT 0,
  `stats_month` int(1) NOT NULL DEFAULT 0,
  `stats_day` int(1) NOT NULL DEFAULT 0,
  `nbr` int(11) NOT NULL DEFAULT 0,
  `pages` int(11) NOT NULL DEFAULT 0,
  `pages_detail` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stats_day` (`stats_day`,`stats_month`,`stats_year`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_stats` (`id`, `stats_year`, `stats_month`, `stats_day`, `nbr`, `pages`, `pages_detail`) VALUES (1,2026,4,4,1,0,'a:0:{}');
DROP TABLE IF EXISTS `phpboost_stats_referer`;
CREATE TABLE `phpboost_stats_referer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT '',
  `relative_url` varchar(255) DEFAULT '',
  `total_visit` int(11) NOT NULL DEFAULT 0,
  `today_visit` int(11) NOT NULL DEFAULT 0,
  `yesterday_visit` int(11) NOT NULL DEFAULT 0,
  `nbr_day` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `url` (`url`,`relative_url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
DROP TABLE IF EXISTS `phpboost_upload`;
CREATE TABLE `phpboost_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcat` int(11) NOT NULL DEFAULT 0,
  `name` varchar(150) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `size` double NOT NULL,
  `type` varchar(10) DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_upload_cat`;
CREATE TABLE `phpboost_upload_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(150) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_visit_counter`;
CREATE TABLE `phpboost_visit_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `time` date NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
-- INSERT INTO `phpboost_visit_counter` (`id`, `ip`, `time`, `total`) VALUES (1,1,'2026-04-05',1);
-- INSERT INTO `phpboost_visit_counter` (`id`, `ip`, `time`, `total`) VALUES (3,'192.168.1.20','2026-04-05',0);
DROP TABLE IF EXISTS `phpboost_web`;
CREATE TABLE `phpboost_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `rewrited_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `publishing_start_date` int(11) NOT NULL DEFAULT 0,
  `publishing_end_date` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `author_user_id` int(11) NOT NULL DEFAULT 0,
  `views_number` int(11) NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `partner` tinyint(1) NOT NULL DEFAULT 0,
  `partner_thumbnail` varchar(255) DEFAULT '',
  `privileged_partner` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `summary` (`summary`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_web` (`id`, `id_category`, `title`, `rewrited_title`, `website_url`, `content`, `summary`, `published`, `publishing_start_date`, `publishing_end_date`, `creation_date`, `update_date`, `author_user_id`, `views_number`, `thumbnail`, `partner`, `partner_thumbnail`, `privileged_partner`) VALUES (1,1,'PHPBoost','phpboost','https://www.phpboost.com','\n	PHPBoost est un CMS (Content Managing System ou système de gestion de contenu) français. Ce logiciel permet à n''importe qui de créer son site de façon très simple, tout est assisté. Conçu pour satisfaire les débutants, il devrait aussi ravir les utilisateurs expérimentés qui souhaiteraient pousser son fonctionnement ou encore développer leurs propres modules.<br />\n	PHPBoost est un logiciel libre distribué sous la licence GPL.<br />\n	<br />\n	Comme son nom l''indique, PHPBoost utilise le PHP comme langage de programmation principal, mais, comme toute application Web, il utilise du XHTML et des CSS pour la mise en forme des pages, du JavaScript pour ajouter une touche dynamique sur les pages, ainsi que du SQL pour effectuer des opérations dans la base de données. Il s''installe sur un serveur Web et se paramètre à distance.<br />\n	<br />\n	Comme pour une grande majorité de logiciels libres, la communauté de PHPBoost lui permet d''avoir à la fois une fiabilité importante car beaucoup d''utilisateurs ont testé chaque version et les ont ainsi approuvées. Il bénéficie aussi par ailleurs d''une évolution rapide car nous essayons d''être le plus possible à l''écoute des commentaires et des propositions de chacun. Même si tout le monde ne participe pas à son développement, beaucoup de gens nous ont aidés, rien qu''en nous donnant des idées, nous suggérant des modifications, des fonctionnalités supplémentaires.<br />\n	<br />\n	Si vous ne deviez retenir que quelques points essentiels sur le projet, ce seraient ceux-ci :<br />\n	<br />\n	<ul class="formatter-ul">\n		<li class="formatter-li"> Projet Open Source sous licence GNU/GPL</li>\n		<li class="formatter-li"> Code HTML5 et CSS4</li>\n		<li class="formatter-li"> Multilangue</li>\n		<li class="formatter-li"> Facilement personnalisable grâce aux thèmes</li>\n		<li class="formatter-li"> Gestion fine des droits et des groupes multiples pour chaque utilisateur</li>\n		<li class="formatter-li"> Url rewriting</li>\n		<li class="formatter-li"> Aide au développement de nouveaux modules grâce au framework de PHPBoost</li>\n	</ul>\n','',1,0,0,1775419344,1775419344,1,0,'',1,'/web/templates/images/phpboost_banner.png',0);
DROP TABLE IF EXISTS `phpboost_web_cats`;
CREATE TABLE `phpboost_web_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rewrited_name` varchar(250) DEFAULT '',
  `c_order` int(11) unsigned NOT NULL DEFAULT 0,
  `special_authorizations` tinyint(1) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `phpboost_web_cats` (`id`, `name`, `rewrited_name`, `c_order`, `special_authorizations`, `auth`, `id_parent`, `description`, `thumbnail`) VALUES (1,'Catégorie de test','categorie-de-test',1,0,'',0,'Liens de test','default');
DROP TABLE IF EXISTS `phpboost_wiki_articles`;
CREATE TABLE `phpboost_wiki_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contents` int(11) NOT NULL DEFAULT 0,
  `title` varchar(250) DEFAULT '',
  `encoded_title` varchar(250) DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT 0,
  `id_cat` int(11) NOT NULL DEFAULT 0,
  `is_cat` tinyint(1) NOT NULL DEFAULT 0,
  `defined_status` varchar(6) NOT NULL DEFAULT '0',
  `undefined_status` text DEFAULT NULL,
  `redirect` int(11) NOT NULL DEFAULT 0,
  `auth` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_wiki_cats`;
CREATE TABLE `phpboost_wiki_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `article_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_wiki_contents`;
CREATE TABLE `phpboost_wiki_contents` (
  `id_contents` int(11) NOT NULL AUTO_INCREMENT,
  `id_article` int(11) NOT NULL DEFAULT 0,
  `menu` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `activ` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `user_ip` varchar(50) DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `change_reason` tinytext DEFAULT NULL,
  PRIMARY KEY (`id_contents`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `phpboost_wiki_favorites`;
CREATE TABLE `phpboost_wiki_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `id_article` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
