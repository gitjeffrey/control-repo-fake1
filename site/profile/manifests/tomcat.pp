class profile::tomcat {

  file {'testfile1':
    path    =>  '/tmp/testfile1.txt'
    ensure  =>  present
    mode    =>  '777'
  }

}
