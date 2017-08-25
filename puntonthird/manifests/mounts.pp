class puntonthird::mounts ($mountname) {

  file { ['/puntonthird/',
          "/puntonthird/${mountname}"]:
    ensure 	=> 'directory',
    mode   	=> '0755'
  }

  mount { 'data mount':
    name 	=> "/puntonthird/${mountname}",
    ensure 	=> 'mounted',
    device 	=> "LABEL=po3-${mountname}",
    fstype	=> 'ext4',
    options => 'defaults',
    require => File["/puntonthird/${mountname}"]
  }
}