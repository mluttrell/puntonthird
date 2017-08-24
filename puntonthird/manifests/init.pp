# manifests/init.pp
class puntonthird ($name) {
  class { 'puntonthird::mounts':
    name => $name,
  }
}
