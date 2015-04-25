class mysql {
  
  # root password
  $rootPass = "password"

  # install mysql
  package { "mysql-server":
    ensure => latest,
    require => Exec["apt-get update"]
  }
  
  #start service
  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }

  # set root password
  exec { "set-mysql-password":
    unless => "mysqladmin -uroot -p$rootPass status",
    command => "mysqladmin -uroot password $rootPass",
    require => Service["mysql"],
  }
}