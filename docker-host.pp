file { '/puntonthird/':
    ensure 	=> 'directory',
    mode   	=> '0755'
}
  
file { ['/puntonthird/mongodata', '/puntonthird/logs']:
    ensure 	=> 'directory',
    mode   	=> '0755',
	require => File['/puntonthird/']
}

mount { 'puntonthird log mount':
	name 	=> '/puntonthird/logs',
	ensure 	=> 'mounted',
	device 	=> '/dev/sdc1',
	fstype	=> 'ext4',
	options => 'defaults',
	require => File['/puntonthird/logs']
}

mount { 'mongo data mount':
	name 	=> '/puntonthird/mongodata',
	ensure 	=> 'mounted',
	device 	=> '/dev/sdd1',
	fstype	=> 'ext4',
	options => 'defaults',
	require => File['/puntonthird/logs']
}