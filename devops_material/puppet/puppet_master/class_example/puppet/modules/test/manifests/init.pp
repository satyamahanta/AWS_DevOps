class test {

file {'/tmp/test1':
	ensure => present,
	content => 'Hello puppet'
}

}

