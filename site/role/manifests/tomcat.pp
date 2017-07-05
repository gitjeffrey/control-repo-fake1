class role::tomcat {

  include ::profile::base
  include ::profile::tomcat

  Class['::profile::base']
  -> Class['::profile::tomcat']
}
