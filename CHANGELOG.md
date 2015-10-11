
##  2.0.10
* separated out apache, java, and rundeck server install, so you can install your own flavors
* created grails variables so there more control over listening port

## 2.0.7
* Using attributes for databag items
* Bug fixes

## 2.0.6 
* updating to rundeck version 2.4.2-1 GA

## 2.0.5 
* added more options for LDAP configurations
* improved the install process for the package option
* configurable databag names
* add a users item to rundeck data bag to allow changing of default admin password.  This may be encrypted if needed.
* remove the tie of rundeck username and group
* chef-client v10 treats `platform?` as attribute instead of method in attributes file
* Add supplemental groups to jaas-activedirectory (https://github.com/rundeck/rundeck/issues/590).  This affects default['rundeck']['default_role']
* bump default rundeck version to 2.3.2-1
* configurable server url attributes added
* fixed home dir creation
* berkshelf and cookbook test updates
* fixed platform detection for attributes on rhel and chef 10

## 2.0.4
* updating to rundeck 2.1.2
* removing runit from rundeck::server recipe.  default init scripts work now!
* bug fix issue #6
* removing runit from chef-rundeck recipe.  use upstart
* Berkshelf support added

## 2.0.3
* added support to add custom project properties via the rundeck_project databag
* bug fixes with email settings in framework.properties
* update rundeck 2.0.3
* Added RHEL support (thanks scottymarshall)

## 2.0.2
* add smtp configuration to rundeck-config.properties
* update for chef-rundeck partial searches with chef 11

## 2.0.1
* add support for multiple chef-rundeck URL

## 2.0.0
* update rundeck 2.0.1
* update to chef-rundeck 1.0.2
* added a README.md file
* added a CONTRIBUTING file
* adding Travis-CI integration and foodcritic support

## 1.1.0
* update rundeck from 1.4 to 1.6

## 1.0.11
* Move chef-rundeck URL config into the project data bags for multiple chef-rundeck URLs

## 1.0.10
* Add support for windows via winrm

## 1.0.7
* Add support for sudo cookbook version 2.0+

## 1.0.6
* Add support for relational databases mysql and oracle
* Fixed path issues and updated to latest deb

## 1.0.5
* Address food critic warnings

## 1.0.4
*  Parameterized the rundeck.rb template

## 1.0.1
*  Updating chef-rundeck gem.

## 1.0:

* Initial releas
