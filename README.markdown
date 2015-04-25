# Darkmantle Puppet: LAMP #

This is the LAMP module in my series of WebDev Puppet Configurations

## Installation

### Puppet

`puppet module install darkmantle-lamp`

### Git Submodule

`git submodule add https://github.com/darkmantle/puppet-lamp.git modules/lamp`


## Usage
Create a manifest that has the following code:

```
Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

include lamp

exec {"apt-get update":
  command => "apt-get update"
}
```