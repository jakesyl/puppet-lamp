# Class: lamp
#
# This module manages lamp
#
# Parameters: none
#
# Actions:
#
# Requires: see metadata.json
#
# Sample Usage:
#
class lamp{
  include apache
  include php
  include mysql
  include phpmyadmin
}