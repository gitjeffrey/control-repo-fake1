class role::tomcat {

  include ::profile::base
  include ::profile::tomcat
  include ::profile::java

  Class['::profile::base']
  -> Class['::profile::java']

  Class['::profile::java']
  -> Class['::profile::tomcat']

}
