node default {
  puntonthird::mount { 'logs':
    mountname => 'logs',
  }

  puntonthird::mount { 'mongo':
    mountname => 'mongo',
  }
}