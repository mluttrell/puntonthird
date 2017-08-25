node default {
  puntonthird::mount { 'logs':
    mountname => 'logs',
  }

  puntonthird::mount { 'mongodata':
    mountname => 'mongodata',
  }
}