# manifests/init.pp
class puntonthird ($mountname) {
  class { 'puntonthird::mounts':
    mountname => $mountname,
  }
}
