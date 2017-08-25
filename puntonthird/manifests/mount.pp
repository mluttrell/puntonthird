define puntonthird::mount ($mountname) {

  file { "parent dir for ${name}":
    path => '/puntonthird/',
    ensure => 'directory',
    mode => '0755'
  }

  file { "/puntonthird/${mountname}":
    ensure 	=> 'directory',
    mode   	=> '0755'
  }

  mount { $title:
    name 	=> "/puntonthird/${mountname}",
    ensure 	=> 'mounted',
    device 	=> "LABEL=po3-${mountname}",
    fstype	=> 'ext4',
    options => 'defaults',
    require => File["/puntonthird/${mountname}"]
  }
}