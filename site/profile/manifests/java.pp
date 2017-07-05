class profile::java {

  file {'testfile-java.txt':
    ensure =>  present,
    path   =>  '/tmp/testfile-java.txt',
    mode   =>  '0777'
  }

  class { 'java': }

}
