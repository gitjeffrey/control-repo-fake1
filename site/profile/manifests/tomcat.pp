class profile::tomcat {

  tomcat::install { '/opt/tomcat8':
    source_url => 'https://www.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz'
  }
  tomcat::instance { 'default':
   catalina_home => '/opt/tomcat',
  }

    file {'testfile-tomcat':
      ensure =>  present,
      path   =>  '/tmp/testfile-tomcat.txt',
      mode   =>  '0777'
    }

}
