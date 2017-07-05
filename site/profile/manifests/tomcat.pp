class profile::tomcat {

  file {'testfile-tomcat':
    ensure =>  present,
    path   =>  '/tmp/testfile-tomcat.txt',
    mode   =>  '0777'
  }

  tomcat::install { '/opt/tomcat8':
    source_url => 'https://www.apache.org/dist/tomcat/tomcat-8/v8.0.x/bin/apache-tomcat-8.0.x.tar.gz'
  }

}
