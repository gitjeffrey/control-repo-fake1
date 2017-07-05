class profile::tomcat {

  # create the tomcat base directory...
  file {'create-tomcat-dir':
    ensure =>  directory,
    path   =>  '/opt/tomcat',
    mode   =>  '0777'
  }

  tomcat::install { '/opt/tomcat':
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
