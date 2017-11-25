# Class: webhook::service
class webhook::service {
  assert_private()

  service { 'webhook':
    ensure => running,
    enable => true,
  }
}
