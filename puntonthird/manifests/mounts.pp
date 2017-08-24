class puntonthird::mounts ($name) {

  file { ['/puntonthird/',
          '/puntonthird/$name']:
    ensure 	=> 'directory',
    mode   	=> '0755'
  }

  mount { 'data mount':
    name 	=> '/puntonthird/$name',
    ensure 	=> 'mounted',
    device 	=> 'LABEL=po3-$name',
    fstype	=> 'ext4',
    options => 'defaults',
    require => File['/puntonthird/$name']
  }
}