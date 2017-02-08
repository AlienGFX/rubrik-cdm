class rubrik::sla_domain::set (
  $rubriksla,
  ) inherits rubrik
{
  if $::sladomain != $rubriksla{
    notify{"Rubrik SLA Domain out of compliance ${::sladomain}, reapplying ${rubrik::rubrikpass}": }
    $script = '/opt/puppetlabs/puppet/cache/lib/facter/ruby-bits/rubrikSetSla.rb'
    $ruby = '/opt/puppetlabs/puppet/bin/ruby'
    $cmd =  "${ruby} ${script} ${::hostname} ${rubriksla}"
    notify{"Running ${cmd}":}
#    exec { 'update-sla':
#      command => "${ruby} ${script} ${::hostname} ${rubriksla}",
#    }
  }
  else{
    notify{"Rubrik SLA Domain Already set properly ${rubrik::rubrikuser}": }
  }
}
