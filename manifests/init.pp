# Class: webhook
class webhook (
  Hash[String, Hash] $hooks = {},
) {
  contain ::webhook::install
  contain ::webhook::config
  contain ::webhook::service

  Class['::webhook::install']
  -> Class['::webhook::config']
  ~> Class['::webhook::service']

  create_resources('::webhook::hook', $hooks)
}
