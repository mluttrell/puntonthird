class puntonthird::parentdir {
  file { '/puntonthird/':
    ensure => 'directory',
    mode => '0755'
  }
}