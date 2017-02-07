class rubrik::sla_domain::set( $sla_domain = 'Undefined')
{
  if ::sladomain != $sla_domain{
    notify{"SLA Domain out of compliance (${sla_domain} vs ${::sladomain})": }
  }
  else{
    notify{"SLA Domain Already set properly (${sla_domain} vs ${::sladomain})": }
  }
}
