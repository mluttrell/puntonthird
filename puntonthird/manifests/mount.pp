define puntonthird::mount ($mountname) {

  include puntonthird::parentdir

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