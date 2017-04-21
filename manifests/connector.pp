class rubrik::connector ( $src ) inherits rubrik {
  case $kernel {
    linux: {
      package { 'package':
        provider => 'rpm',
        ensure => installed,
        source => "${connector::rpm}"
      }
    }  
  }
}
class { 'rubrik::connector':
  src => 'https://${rubrik::rubriknode}/connector/rubrik-agent.x86_64.rpm',
}
