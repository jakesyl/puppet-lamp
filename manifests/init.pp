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
  include lamp::apache
  include lamp::php
  include lamp::mysql
  include lamp::phpmyadmin
}