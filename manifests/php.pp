# Class: php
#
# This module manages php
#
# Parameters: none
#
# Actions:
#
# Requires: see metadata.json
#
# Sample Usage:
#
class php {
  # list of packages
  $packages = [
    'php5',
    'php5-cli',
    'php5-mysql',
    'php-pear',
    'php5-dev',
    'php5-gd',
    'php5-mcrypt',
    'php5-xsl',
    'php5-intl',
    'libapache2-mod-php5',
    'mcrypt']

  package { $packages:
    ensure  => present,
    require => [Exec['apt-get update']]
  }

  # enable php in apache
  exec { 'a2enmod php5':
    command => '/usr/sbin/a2enmod php5',
    require => [Package['apache2'], Package['libapache2-mod-php5'],
                Package['mcrypt']],
    notify  => Service['apache2']
  }

  # enable php5 mods
  exec { 'php5enmod mcrypt':
    command => 'php5enmod mcrypt',
    notify  => Service['apache2'],
    require => Package['php5-mcrypt']
  }
}