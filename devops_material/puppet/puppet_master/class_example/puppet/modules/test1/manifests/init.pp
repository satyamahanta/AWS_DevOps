class test1 {
file{'/tmp/test1':
	ensure => present,
	content => "Hello Puppet agent",
}
}

