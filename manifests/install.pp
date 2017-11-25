# Class: webhook::install
class webhook::install {
  assert_private()

  package { 'webhook':
    ensure => installed,
  }
}
