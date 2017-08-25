node default {
  puntonthird::mount { 'logs':
    mountname => 'logs',
  }

  puntonthird::mount { 'mongodata':
    mountnamme => 'mongodata',
  }
}