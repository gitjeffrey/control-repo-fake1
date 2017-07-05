class profile::tomcat {

  file {'testfile1':
    ensure =>  present,
    path   =>  '/tmp/testfile1.txt',
    mode   =>  '0777',
  }

}
