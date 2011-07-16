
class openstack_ci_admins_users {
  include sudoers
  
  group { 'annegentle':
    ensure => 'present'
  }

  user { 'annegentle':
    ensure => 'present',
    comment => 'Anne Gentle',
    home => $operatingsystem ? {
      Darwin => '/Users/annegentle',
      solaris => '/export/home/annegentle',
      default => '/home/annegentle',
    },
    shell => '/bin/bash',
    gid => 'annegentle',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'annegentlehome':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle',
      solaris => '/export/home/annegentle',
      default => '/home/annegentle',
    },
    owner => 'annegentle',
    group => 'annegentle',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'annegentlesshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle/.ssh',
      solaris => '/export/home/annegentle/.ssh',
      default => '/home/annegentle/.ssh',
    },
    owner => 'annegentle',
    group => 'annegentle',
    mode => 700,
    ensure => 'directory',
    require => File['annegentlehome'],
  }

  file { 'annegentlekeys':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle/.ssh/authorized_keys',
      solaris => '/export/home/annegentle/.ssh/authorized_keys',
      default => '/home/annegentle/.ssh/authorized_keys',
    },
    owner => 'annegentle',
    group => 'annegentle',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA3A74P+vhfqTKUP3s6qtOYtJJnBtNyrR59M0Vh+/iZIqI4uWMrmAYhn8dRyagWKYHG7d7zb3kPa9ckJBjSFdJfhLqwgcjGRewh6G6rqTuuiQTw73AJSHu9zenlrUha27oMyklX/ApZpUMBECzH4FgqhfUuRI4wulAgvnM6jm/eA+zGpmlRQMuguY9P8+AOirhk/koQhVDlR10aTzUCg6NLNmzi+72jSxBqEt8IzlE/f3emGJ09hCNQyz+PxGJUesoZ3UQhhda8Fuosi9j/ANbknSh68b5UNKuldPl9TjmxFPBX36chIMFJW1Ln/gwdjY+GIaGfXI0BPRVugdLdIgbjw== stacker@gentle
    ensure => 'present',
    require => File['annegentlesshdir'],
  }

  file { 'annegentlebashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle/.bashrc',
      solaris => '/export/home/annegentle/.bashrc',
      default => '/home/annegentle/.bashrc',
    },
    owner => 'annegentle',
    group => 'annegentle',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'annegentlebash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle/.bash_logout',
      solaris => '/export/home/annegentle/.bash_logout',
      default => '/home/annegentle/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'annegentle',
    group => 'annegentle',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'annegentleprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle/.profile',
      solaris => '/export/home/annegentle/.profile',
      default => '/home/annegentle/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'annegentle',
    group => 'annegentle',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'annegentlebazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle/.bazaar',
      solaris => '/export/home/annegentle/.bazaar',
      default => '/home/annegentle/.bazaar',
    },
    owner => 'annegentle',
    group => 'annegentle',
    mode => 755,
    ensure => 'directory',
    require => File['annegentlehome'],
  }


  file { 'annegentlebazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/annegentle/.bazaar/authentication.conf',
      solaris => '/export/home/annegentle/.bazaar/authentication.conf',
      default => '/home/annegentle/.bazaar/authentication.conf',
    },
    owner => 'annegentle',
    group => 'annegentle',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = annegentle\n",
    ensure => 'present',
    require => File['annegentlebazaardir'],
  }


  group { 'dan-prince':
    ensure => 'present'
  }

  user { 'dan-prince':
    ensure => 'present',
    comment => 'Dan Prince',
    home => $operatingsystem ? {
      Darwin => '/Users/dan-prince',
      solaris => '/export/home/dan-prince',
      default => '/home/dan-prince',
    },
    shell => '/bin/bash',
    gid => 'dan-prince',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'dan-princehome':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince',
      solaris => '/export/home/dan-prince',
      default => '/home/dan-prince',
    },
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'dan-princesshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince/.ssh',
      solaris => '/export/home/dan-prince/.ssh',
      default => '/home/dan-prince/.ssh',
    },
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 700,
    ensure => 'directory',
    require => File['dan-princehome'],
  }

  file { 'dan-princekeys':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince/.ssh/authorized_keys',
      solaris => '/export/home/dan-prince/.ssh/authorized_keys',
      default => '/home/dan-prince/.ssh/authorized_keys',
    },
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA+yNMzUrQXa0EOfv+WJtfmLO1WdoOaD47G9qwllSUc4GPRkYzkTNdxcEPrR3XBR94ctOeWOHZ/w7ymhvwK5LLsoNBK+WgRz/mg8oHcii2GoL0fNojdwUMyFMIJxJT+iwjF/omyhyrW/aLAztAKRO7BdOkNlXMAAcMxKzQtFqdZm09ghoImu3BPYUTyDKHMp+t0P1d7mkHdd719oDfMf+5miHxQeJZJCWAsGwroN7k8a46rvezDHEygBsDAF2ZpS2iGMABos/vTp1oyHkCgCqc3rM0OoKqcKB5iQ9Qaqi5ung08BXP/PHfVynXzdGMjTh4w+6jiMw7Dx2GrQIJsDolKQ== dan.prince@dovetail
    ensure => 'present',
    require => File['dan-princesshdir'],
  }

  file { 'dan-princebashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince/.bashrc',
      solaris => '/export/home/dan-prince/.bashrc',
      default => '/home/dan-prince/.bashrc',
    },
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'dan-princebash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince/.bash_logout',
      solaris => '/export/home/dan-prince/.bash_logout',
      default => '/home/dan-prince/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'dan-princeprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince/.profile',
      solaris => '/export/home/dan-prince/.profile',
      default => '/home/dan-prince/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'dan-princebazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince/.bazaar',
      solaris => '/export/home/dan-prince/.bazaar',
      default => '/home/dan-prince/.bazaar',
    },
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 755,
    ensure => 'directory',
    require => File['dan-princehome'],
  }


  file { 'dan-princebazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/dan-prince/.bazaar/authentication.conf',
      solaris => '/export/home/dan-prince/.bazaar/authentication.conf',
      default => '/home/dan-prince/.bazaar/authentication.conf',
    },
    owner => 'dan-prince',
    group => 'dan-prince',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = dan-prince\n",
    ensure => 'present',
    require => File['dan-princebazaardir'],
  }


  group { 'eday':
    ensure => 'present'
  }

  user { 'eday':
    ensure => 'present',
    comment => 'Eric Day',
    home => $operatingsystem ? {
      Darwin => '/Users/eday',
      solaris => '/export/home/eday',
      default => '/home/eday',
    },
    shell => '/bin/bash',
    gid => 'eday',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'edayhome':
    name => $operatingsystem ? {
      Darwin => '/Users/eday',
      solaris => '/export/home/eday',
      default => '/home/eday',
    },
    owner => 'eday',
    group => 'eday',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'edaysshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/eday/.ssh',
      solaris => '/export/home/eday/.ssh',
      default => '/home/eday/.ssh',
    },
    owner => 'eday',
    group => 'eday',
    mode => 700,
    ensure => 'directory',
    require => File['edayhome'],
  }

  file { 'edaykeys':
    name => $operatingsystem ? {
      Darwin => '/Users/eday/.ssh/authorized_keys',
      solaris => '/export/home/eday/.ssh/authorized_keys',
      default => '/home/eday/.ssh/authorized_keys',
    },
    owner => 'eday',
    group => 'eday',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAqs8pBCqpAYnyqoyOO9Z5bF4CGHxIiAA10k78EDlwd6muoREEnTmGtxNiRO5HY6wzkpNaHm7JaD8VTRmrAPSQ9z9htWyTSk2e5jWsBblePdxU+tU73E6ZZrGC35eZSWIn1AuuJRZSvIZ55fwrYcqW/y1lELHLyB5DfMIGXxPBiTcqmhYonGEpeBD676AzZ+pwpPjdDonyuY9+gE21UaTQl2Z1Xxp1O05p169WQmYB9Pr8tcpL9GkFZ38uBFS+6fdIHisCs5vXEvW23GUL0izNJeJrtHcjAcjwYRi4l2FCoFi9PwmPvkwic4wcaiSS+T85dZB8myFn6i2CALrMtqCvmJEAaxPk+9cfFqd71mEyxXn1zTYdAezTURn4OnHhQGxvy4fvP8SRfUsV0We5+A8afpEqYedaZBnM4LIARaY6jKqK1FPVjAKyTSwdaUQwYjxg2Xp1VoY1PwwHYA27rubn4wLotfzsLWILJPuMgzkHhiyI+ozruE7CeKWVnlUq+Ogx4eK8It9WWU+KRo1kjDZEBIdPLj29mZj4JSF/hTzgZgs6CxUZa+A8cukJW/2brxpZBy/xLt0lWnHWYzWHwCBhsvlYS48loLi2OE1osWn7nDtibnt0lyiYuDP93AXkXxVbmxmmRnimy4VT2KNxCi0Qa0Pjisg92OfgIyTHeejsHck= eday@oddments.org",
    ensure => 'present',
    require => File['edaysshdir'],
  }

  file { 'edaybashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/eday/.bashrc',
      solaris => '/export/home/eday/.bashrc',
      default => '/home/eday/.bashrc',
    },
    owner => 'eday',
    group => 'eday',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'edaybash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/eday/.bash_logout',
      solaris => '/export/home/eday/.bash_logout',
      default => '/home/eday/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'eday',
    group => 'eday',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'edayprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/eday/.profile',
      solaris => '/export/home/eday/.profile',
      default => '/home/eday/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'eday',
    group => 'eday',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'edaybazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/eday/.bazaar',
      solaris => '/export/home/eday/.bazaar',
      default => '/home/eday/.bazaar',
    },
    owner => 'eday',
    group => 'eday',
    mode => 755,
    ensure => 'directory',
    require => File['edayhome'],
  }


  file { 'edaybazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/eday/.bazaar/authentication.conf',
      solaris => '/export/home/eday/.bazaar/authentication.conf',
      default => '/home/eday/.bazaar/authentication.conf',
    },
    owner => 'eday',
    group => 'eday',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = eday\n",
    ensure => 'present',
    require => File['edaybazaardir'],
  }


  group { 'corvus':
    ensure => 'present'
  }

  user { 'corvus':
    ensure => 'present',
    comment => 'James E. Blair',
    home => $operatingsystem ? {
      Darwin => '/Users/corvus',
      solaris => '/export/home/corvus',
      default => '/home/corvus',
    },
    shell => '/bin/bash',
    gid => 'corvus',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'corvushome':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus',
      solaris => '/export/home/corvus',
      default => '/home/corvus',
    },
    owner => 'corvus',
    group => 'corvus',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'corvussshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus/.ssh',
      solaris => '/export/home/corvus/.ssh',
      default => '/home/corvus/.ssh',
    },
    owner => 'corvus',
    group => 'corvus',
    mode => 700,
    ensure => 'directory',
    require => File['corvushome'],
  }

  file { 'corvuskeys':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus/.ssh/authorized_keys',
      solaris => '/export/home/corvus/.ssh/authorized_keys',
      default => '/home/corvus/.ssh/authorized_keys',
    },
    owner => 'corvus',
    group => 'corvus',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAvKYcWK1T7e3PKSFiqb03EYktnoxVASpPoq2rJw2JvhsP0JfS+lKrPzpUQv7L4JCuQMsPNtZ8LnwVEft39k58Kh8XMebSfaqPYAZS5zCNvQUQIhP9myOevBZf4CDeG+gmssqRFcWEwIllfDuIzKBQGVbomR+Y5QuW0HczIbkoOYI6iyf2jB6xg+bmzR2HViofNrSa62CYmHS6dO04Z95J27w6jGWpEOTBjEQvnb9sdBc4EzaBVmxCpa2EilB1u0th7/DvuH0yP4T+X8G8UjW1gZCTOVw06fqlBCST4KjdWw1F/AuOCT7048klbf4H+mCTaEcPzzu3Fkv8ckMWtS/Z9Q== jeblair@operational-necessity
    ensure => 'present',
    require => File['corvussshdir'],
  }

  file { 'corvusbashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus/.bashrc',
      solaris => '/export/home/corvus/.bashrc',
      default => '/home/corvus/.bashrc',
    },
    owner => 'corvus',
    group => 'corvus',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'corvusbash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus/.bash_logout',
      solaris => '/export/home/corvus/.bash_logout',
      default => '/home/corvus/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'corvus',
    group => 'corvus',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'corvusprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus/.profile',
      solaris => '/export/home/corvus/.profile',
      default => '/home/corvus/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'corvus',
    group => 'corvus',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'corvusbazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus/.bazaar',
      solaris => '/export/home/corvus/.bazaar',
      default => '/home/corvus/.bazaar',
    },
    owner => 'corvus',
    group => 'corvus',
    mode => 755,
    ensure => 'directory',
    require => File['corvushome'],
  }


  file { 'corvusbazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/corvus/.bazaar/authentication.conf',
      solaris => '/export/home/corvus/.bazaar/authentication.conf',
      default => '/home/corvus/.bazaar/authentication.conf',
    },
    owner => 'corvus',
    group => 'corvus',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = corvus\n",
    ensure => 'present',
    require => File['corvusbazaardir'],
  }


  group { 'jaypipes':
    ensure => 'present'
  }

  user { 'jaypipes':
    ensure => 'present',
    comment => 'Jay Pipes',
    home => $operatingsystem ? {
      Darwin => '/Users/jaypipes',
      solaris => '/export/home/jaypipes',
      default => '/home/jaypipes',
    },
    shell => '/bin/bash',
    gid => 'jaypipes',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'jaypipeshome':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes',
      solaris => '/export/home/jaypipes',
      default => '/home/jaypipes',
    },
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'jaypipessshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes/.ssh',
      solaris => '/export/home/jaypipes/.ssh',
      default => '/home/jaypipes/.ssh',
    },
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 700,
    ensure => 'directory',
    require => File['jaypipeshome'],
  }

  file { 'jaypipeskeys':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes/.ssh/authorized_keys',
      solaris => '/export/home/jaypipes/.ssh/authorized_keys',
      default => '/home/jaypipes/.ssh/authorized_keys',
    },
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA5d2DekN5POb+e04tVtC/pok7r0Lg/+90sbvhgLTDKSGM7uPI83ulH4sZrMKVU5NTK4GBh9G+RNK6UaKodNiBGKiHZ4QdaMqbkP3TIXd3uDEBUefEAzSqpCGydbjpmtxFZWtA5hcKXTSpMRbbx/vek3lYIRsQaU0Ezc7V0cczSmJBGA6VH22TIW/5wkVvZQozK2jdkIAnJhdL7CN5kKyGs94CfXN9ofNr1ssVb/tPJqSotx7FDcrwT9VmEWTn/nCuoWf42sVu0RIHVMSpr5sxFa+G33omeRLOSCCD+zYZoMCEHZTFNCXZhPWGebWhgGHsu0+bN6heRmoJ8lw01gHxWQ== jpipes@serialcoder\nssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAt2tCgmlHEj5huGLJTPM2pV+aj6ZObneGq92m30LsKOn2SMrC9y4PpqjlRDweduBDKK2cPSnHt3HL1jM5npLh5IGHN2FxAWo3spgwpWPhdkT1VbdyiTZPw4++y/qZhWdNvEWBpNcf3Zn2Qi0x7F1+5fCri/vwVA9RBG35wozaP0mkxaJuAS/LLR7ZJIF99Fqfdk6+Fp5mobXt0ggEqs/78MhCuE2AYaNZ/VWCoanL4w6+UJwZV1Ftd9Ksx6f+8NpaOC9WlNSxJmp2EDJsLBy8mpJh1OsAjC3hu1VvQYmYhSo47ADSfAw9h7aaLUcL6hb7w2n4f+9Ej2+L6+NzEm0Izw== jpipes@serialcoder",
    ensure => 'present',
    require => File['jaypipessshdir'],
  }

  file { 'jaypipesbashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes/.bashrc',
      solaris => '/export/home/jaypipes/.bashrc',
      default => '/home/jaypipes/.bashrc',
    },
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'jaypipesbash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes/.bash_logout',
      solaris => '/export/home/jaypipes/.bash_logout',
      default => '/home/jaypipes/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'jaypipesprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes/.profile',
      solaris => '/export/home/jaypipes/.profile',
      default => '/home/jaypipes/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'jaypipesbazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes/.bazaar',
      solaris => '/export/home/jaypipes/.bazaar',
      default => '/home/jaypipes/.bazaar',
    },
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 755,
    ensure => 'directory',
    require => File['jaypipeshome'],
  }


  file { 'jaypipesbazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/jaypipes/.bazaar/authentication.conf',
      solaris => '/export/home/jaypipes/.bazaar/authentication.conf',
      default => '/home/jaypipes/.bazaar/authentication.conf',
    },
    owner => 'jaypipes',
    group => 'jaypipes',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = jaypipes\n",
    ensure => 'present',
    require => File['jaypipesbazaardir'],
  }


  group { 'heckj':
    ensure => 'present'
  }

  user { 'heckj':
    ensure => 'present',
    comment => 'Joseph Heck',
    home => $operatingsystem ? {
      Darwin => '/Users/heckj',
      solaris => '/export/home/heckj',
      default => '/home/heckj',
    },
    shell => '/bin/bash',
    gid => 'heckj',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'heckjhome':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj',
      solaris => '/export/home/heckj',
      default => '/home/heckj',
    },
    owner => 'heckj',
    group => 'heckj',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'heckjsshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj/.ssh',
      solaris => '/export/home/heckj/.ssh',
      default => '/home/heckj/.ssh',
    },
    owner => 'heckj',
    group => 'heckj',
    mode => 700,
    ensure => 'directory',
    require => File['heckjhome'],
  }

  file { 'heckjkeys':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj/.ssh/authorized_keys',
      solaris => '/export/home/heckj/.ssh/authorized_keys',
      default => '/home/heckj/.ssh/authorized_keys',
    },
    owner => 'heckj',
    group => 'heckj',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEA3GLOPOhg6NZX6AS5RaDaxNUPVyvSOPty3X2ZWfF1p9YzO9hF6r97g/Du3DawFO9wluCZxOJujsz8mMZT77ZeiTPYMhKZj2v9fC63PnZ++6d2k3h6SNK/oezc9t9nzor9hX7nr5N7xYOWmke6SOmET+Ju0EOv47ckjcVKZeA1S6c= joe@mu.org
    ensure => 'present',
    require => File['heckjsshdir'],
  }

  file { 'heckjbashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj/.bashrc',
      solaris => '/export/home/heckj/.bashrc',
      default => '/home/heckj/.bashrc',
    },
    owner => 'heckj',
    group => 'heckj',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'heckjbash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj/.bash_logout',
      solaris => '/export/home/heckj/.bash_logout',
      default => '/home/heckj/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'heckj',
    group => 'heckj',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'heckjprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj/.profile',
      solaris => '/export/home/heckj/.profile',
      default => '/home/heckj/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'heckj',
    group => 'heckj',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'heckjbazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj/.bazaar',
      solaris => '/export/home/heckj/.bazaar',
      default => '/home/heckj/.bazaar',
    },
    owner => 'heckj',
    group => 'heckj',
    mode => 755,
    ensure => 'directory',
    require => File['heckjhome'],
  }


  file { 'heckjbazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/heckj/.bazaar/authentication.conf',
      solaris => '/export/home/heckj/.bazaar/authentication.conf',
      default => '/home/heckj/.bazaar/authentication.conf',
    },
    owner => 'heckj',
    group => 'heckj',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = heckj\n",
    ensure => 'present',
    require => File['heckjbazaardir'],
  }


  group { 'mordred':
    ensure => 'present'
  }

  user { 'mordred':
    ensure => 'present',
    comment => 'Monty Taylor',
    home => $operatingsystem ? {
      Darwin => '/Users/mordred',
      solaris => '/export/home/mordred',
      default => '/home/mordred',
    },
    shell => '/bin/bash',
    gid => 'mordred',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'mordredhome':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred',
      solaris => '/export/home/mordred',
      default => '/home/mordred',
    },
    owner => 'mordred',
    group => 'mordred',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'mordredsshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred/.ssh',
      solaris => '/export/home/mordred/.ssh',
      default => '/home/mordred/.ssh',
    },
    owner => 'mordred',
    group => 'mordred',
    mode => 700,
    ensure => 'directory',
    require => File['mordredhome'],
  }

  file { 'mordredkeys':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred/.ssh/authorized_keys',
      solaris => '/export/home/mordred/.ssh/authorized_keys',
      default => '/home/mordred/.ssh/authorized_keys',
    },
    owner => 'mordred',
    group => 'mordred',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAr+HlnLCCMnAqP6bvAQmb6aMfNjwp425OuG9nlN6uXXEymP5G/WT/Ok2RWb+O1hsaRGsvwHrkCdhCvT0XrDIWRCK3vaQ/v0LogeRbX5HIdOrH6r5N++DV9SqVTFZ6+54CfOE/pyku6pkBdoM8WJ9EIQBQC82EE6mgtpS/UNdiymsoB+2I8yNwUROm/AROCjqN60PI/2j234qYYaUXoD/FM3ZE/cfUoTTi0NAbt5OM5pCHPfaWhWCYtQ4l2CnEXXhKU9TcoQVoTu54IBAmblgD2LeJnOsKQtVcd5rgGzl/OtkL1ZvWCq23LHMeOC2WANgWIyxp4x66m51uErbgnTwOkQ== monty@sanction\nssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAwgRJ+iQMzive6pq8f/F4N0CN0+SptI5l+yj10Rx3i80Zh4a3ERratuIsEmuyyeBU/l+dmR074Jic/42rYnQJBEKT5bvGLhiftcSUu630NZgAFnP5e4TbpHlYJzXDxOOctAHyd8TH5iQftWeNi5NIYAwfYpO6a4/GE1InMcyqW+icyDxyt3rwDN0qzLHcVFdCgWPsbEuJuqweH/qsen78LNWPro+ynk6dnsSKhe8dWkhYjPhAEjbsL13VezksHNbk2aa/yvppCCgdLdvniaQDKr+F0/X5Xp1teL8L7Rr9Ei+I3l6Ge4I3KY0s8TM+6TpAp4GGvdKakOBeoSAP5wYjrw== root@camelot
    ensure => 'present',
    require => File['mordredsshdir'],
  }

  file { 'mordredbashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred/.bashrc',
      solaris => '/export/home/mordred/.bashrc',
      default => '/home/mordred/.bashrc',
    },
    owner => 'mordred',
    group => 'mordred',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'mordredbash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred/.bash_logout',
      solaris => '/export/home/mordred/.bash_logout',
      default => '/home/mordred/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'mordred',
    group => 'mordred',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'mordredprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred/.profile',
      solaris => '/export/home/mordred/.profile',
      default => '/home/mordred/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'mordred',
    group => 'mordred',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'mordredbazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred/.bazaar',
      solaris => '/export/home/mordred/.bazaar',
      default => '/home/mordred/.bazaar',
    },
    owner => 'mordred',
    group => 'mordred',
    mode => 755,
    ensure => 'directory',
    require => File['mordredhome'],
  }


  file { 'mordredbazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/mordred/.bazaar/authentication.conf',
      solaris => '/export/home/mordred/.bazaar/authentication.conf',
      default => '/home/mordred/.bazaar/authentication.conf',
    },
    owner => 'mordred',
    group => 'mordred',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = mordred\n",
    ensure => 'present',
    require => File['mordredbazaardir'],
  }


  group { 'santosh-jodh-8':
    ensure => 'present'
  }

  user { 'santosh-jodh-8':
    ensure => 'present',
    comment => 'Santosh Jodh',
    home => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8',
      solaris => '/export/home/santosh-jodh-8',
      default => '/home/santosh-jodh-8',
    },
    shell => '/bin/bash',
    gid => 'santosh-jodh-8',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'santosh-jodh-8home':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8',
      solaris => '/export/home/santosh-jodh-8',
      default => '/home/santosh-jodh-8',
    },
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'santosh-jodh-8sshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8/.ssh',
      solaris => '/export/home/santosh-jodh-8/.ssh',
      default => '/home/santosh-jodh-8/.ssh',
    },
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 700,
    ensure => 'directory',
    require => File['santosh-jodh-8home'],
  }

  file { 'santosh-jodh-8keys':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8/.ssh/authorized_keys',
      solaris => '/export/home/santosh-jodh-8/.ssh/authorized_keys',
      default => '/home/santosh-jodh-8/.ssh/authorized_keys',
    },
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 640,
    content => "",
    ensure => 'present',
    require => File['santosh-jodh-8sshdir'],
  }

  file { 'santosh-jodh-8bashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8/.bashrc',
      solaris => '/export/home/santosh-jodh-8/.bashrc',
      default => '/home/santosh-jodh-8/.bashrc',
    },
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'santosh-jodh-8bash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8/.bash_logout',
      solaris => '/export/home/santosh-jodh-8/.bash_logout',
      default => '/home/santosh-jodh-8/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'santosh-jodh-8profile':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8/.profile',
      solaris => '/export/home/santosh-jodh-8/.profile',
      default => '/home/santosh-jodh-8/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'santosh-jodh-8bazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8/.bazaar',
      solaris => '/export/home/santosh-jodh-8/.bazaar',
      default => '/home/santosh-jodh-8/.bazaar',
    },
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 755,
    ensure => 'directory',
    require => File['santosh-jodh-8home'],
  }


  file { 'santosh-jodh-8bazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/santosh-jodh-8/.bazaar/authentication.conf',
      solaris => '/export/home/santosh-jodh-8/.bazaar/authentication.conf',
      default => '/home/santosh-jodh-8/.bazaar/authentication.conf',
    },
    owner => 'santosh-jodh-8',
    group => 'santosh-jodh-8',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = santosh-jodh-8\n",
    ensure => 'present',
    require => File['santosh-jodh-8bazaardir'],
  }


  group { 'soren':
    ensure => 'present'
  }

  user { 'soren':
    ensure => 'present',
    comment => 'Soren Hansen',
    home => $operatingsystem ? {
      Darwin => '/Users/soren',
      solaris => '/export/home/soren',
      default => '/home/soren',
    },
    shell => '/bin/bash',
    gid => 'soren',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'sorenhome':
    name => $operatingsystem ? {
      Darwin => '/Users/soren',
      solaris => '/export/home/soren',
      default => '/home/soren',
    },
    owner => 'soren',
    group => 'soren',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'sorensshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/soren/.ssh',
      solaris => '/export/home/soren/.ssh',
      default => '/home/soren/.ssh',
    },
    owner => 'soren',
    group => 'soren',
    mode => 700,
    ensure => 'directory',
    require => File['sorenhome'],
  }

  file { 'sorenkeys':
    name => $operatingsystem ? {
      Darwin => '/Users/soren/.ssh/authorized_keys',
      solaris => '/export/home/soren/.ssh/authorized_keys',
      default => '/home/soren/.ssh/authorized_keys',
    },
    owner => 'soren',
    group => 'soren',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA7bpJJzvwa4KKzxk9fyegkCUKKOA1gttDJdB+E2mllxcDkScYRYoFnwiq0kl1BwkNFRXj10pguhI/7O3escSvF3Di2Lw4haHR8my6yaz7jFlBbBw8+6j5RbIRnTORS5G4mH4LtAxToGomfJd9gxWpVMiqLa4V7Hg8K6CYRSSUOWzqs7Y/Hv13ASr8ZbaweB1ygVE8kbKuW2ILcqRrKYKaQDeh+aPqLsXDNhT2k2WLsTIqMTSKy70sHqyCjD2joRVBuTiqt1uaQqYCJWT8vuDvXsF0Lmi4tMjRF7GOuOKd0QsT5y8C8dLHWDfeBNQJv46dZE6UUHOfhucTM4w73zpXaw== soren@butch\nssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA8YfXbgi0uNZEpOxLvzPdGgo5dAAjqVUGf+kU1bvxcZf3y7a2veDXOOnez4VGl6OC1bgeENW/5O2hKi0wUG3XMWp8uLVSupI6A8o+cBCu7MYzChMdgullBEh7Bz4cbvoMmQiWOZPPsZLTTrl7E6SJJ5jTTn8IsSkCp21m2Sr4b5SWj+Nw43NVtGYFtBBG/OoixlxcNutiSn7YjOH6CAVOhKpTNddwqECKBfxCdS2kYrMzJw8/QhA9FwJHoFt3PevuC4I/9ARlyZCsbOY+ENc2NtFXNVnF5m6tE/eDZFTt652pNPlldWAaVBzKDZ4CUi4HS3WDxGcVqhtaNawIV6sR8w== soren@intel
    ensure => 'present',
    require => File['sorensshdir'],
  }

  file { 'sorenbashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/soren/.bashrc',
      solaris => '/export/home/soren/.bashrc',
      default => '/home/soren/.bashrc',
    },
    owner => 'soren',
    group => 'soren',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'sorenbash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/soren/.bash_logout',
      solaris => '/export/home/soren/.bash_logout',
      default => '/home/soren/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'soren',
    group => 'soren',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'sorenprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/soren/.profile',
      solaris => '/export/home/soren/.profile',
      default => '/home/soren/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'soren',
    group => 'soren',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'sorenbazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/soren/.bazaar',
      solaris => '/export/home/soren/.bazaar',
      default => '/home/soren/.bazaar',
    },
    owner => 'soren',
    group => 'soren',
    mode => 755,
    ensure => 'directory',
    require => File['sorenhome'],
  }


  file { 'sorenbazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/soren/.bazaar/authentication.conf',
      solaris => '/export/home/soren/.bazaar/authentication.conf',
      default => '/home/soren/.bazaar/authentication.conf',
    },
    owner => 'soren',
    group => 'soren',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = soren\n",
    ensure => 'present',
    require => File['sorenbazaardir'],
  }


  group { 'ttx':
    ensure => 'present'
  }

  user { 'ttx':
    ensure => 'present',
    comment => 'Thierry Carrez',
    home => $operatingsystem ? {
      Darwin => '/Users/ttx',
      solaris => '/export/home/ttx',
      default => '/home/ttx',
    },
    shell => '/bin/bash',
    gid => 'ttx',
    groups => ['wheel','sudo','admin'],
    membership => 'minimum',
  }

  file { 'ttxhome':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx',
      solaris => '/export/home/ttx',
      default => '/home/ttx',
    },
    owner => 'ttx',
    group => 'ttx',
    mode => 644,
    ensure => 'directory',
  }
    
  
  file { 'ttxsshdir':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx/.ssh',
      solaris => '/export/home/ttx/.ssh',
      default => '/home/ttx/.ssh',
    },
    owner => 'ttx',
    group => 'ttx',
    mode => 700,
    ensure => 'directory',
    require => File['ttxhome'],
  }

  file { 'ttxkeys':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx/.ssh/authorized_keys',
      solaris => '/export/home/ttx/.ssh/authorized_keys',
      default => '/home/ttx/.ssh/authorized_keys',
    },
    owner => 'ttx',
    group => 'ttx',
    mode => 640,
    content => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAz4Mu4IhAg3/AY4fCnAomOAJIkJS4YnTlTXiIikUIqS/R
    ensure => 'present',
    require => File['ttxsshdir'],
  }

  file { 'ttxbashrc':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx/.bashrc',
      solaris => '/export/home/ttx/.bashrc',
      default => '/home/ttx/.bashrc',
    },
    owner => 'ttx',
    group => 'ttx',
    mode => 640,
    source => "/etc/skel/.bashrc",
    replace => 'false',
    ensure => 'present',
  }

  file { 'ttxbash_logout':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx/.bash_logout',
      solaris => '/export/home/ttx/.bash_logout',
      default => '/home/ttx/.bash_logout',
    },
    source => "/etc/skel/.bash_logout",
    owner => 'ttx',
    group => 'ttx',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'ttxprofile':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx/.profile',
      solaris => '/export/home/ttx/.profile',
      default => '/home/ttx/.profile',
    },
    source => "/etc/skel/.profile",
    owner => 'ttx',
    group => 'ttx',
    mode => 640,
    replace => 'false',
    ensure => 'present',
  }

  file { 'ttxbazaardir':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx/.bazaar',
      solaris => '/export/home/ttx/.bazaar',
      default => '/home/ttx/.bazaar',
    },
    owner => 'ttx',
    group => 'ttx',
    mode => 755,
    ensure => 'directory',
    require => File['ttxhome'],
  }


  file { 'ttxbazaarauth':
    name => $operatingsystem ? {
      Darwin => '/Users/ttx/.bazaar/authentication.conf',
      solaris => '/export/home/ttx/.bazaar/authentication.conf',
      default => '/home/ttx/.bazaar/authentication.conf',
    },
    owner => 'ttx',
    group => 'ttx',
    mode => 640,
    content => "[Launchpad]\nhost = .launchpad.net\nscheme = ssh\nuser = ttx\n",
    ensure => 'present',
    require => File['ttxbazaardir'],
  }


}
  