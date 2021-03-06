# == class: exim::params
#
# This module sets all default parameters
#
class exim::params {
  case $::osfamily {
    'debian': {
      $exim_light_package = 'exim4'
      $exim_heavy_package = 'exim4-daemon-heavy'
      $exim_service = 'exim4'
      $config_path = '/etc/exim4/exim4.conf'
    }
    'redhat': {
      $exim_light_package = 'exim'
      $exim_heavy_package = 'exim'
      $exim_service = 'exim'
      $config_path = '/etc/exim/exim.conf'
    }
    default: {
      fail("The ${module_name} module is not supported on ${::osfamily} based systems")
    }
  }

  $acl_not_smtp                       = undef
  $acl_smtp_auth                      = undef
  $acl_smtp_data                      = undef
  $acl_smtp_mail                      = undef
  $acl_smtp_mime                      = undef
  $acl_smtp_rcpt                      = 'acl_check_rcpt'
  $allow_mx_to_ip                     = false
  $auto_thaw                          = undef
  $av_scanner                         = undef
  $callout_domain_positive_expire     = undef
  $check_spool_space                  = undef
  $daemon_smtp_ports                  = undef
  $defaults                           = true
  $delay_warning                      = undef
  $deliver_queue_load_max             = undef
  $errors_reply_to                    = undef
  $extract_addresses_remove_arguments = undef
  $freeze_tell                        = undef
  $gnutls_compat_mode                 = undef
  $heavy                              = false
  $helo_allow_chars                   = undef
  $host_lookup                        = '*'
  $hosts_treat_as_local               = undef
  $ignore_bounce_errors_after         = '2d'
  $includes                           = []
  $ldap_default_servers               = undef
  $local_from_check                   = true
  $local_interfaces                   = undef
  $log_file_path                      = undef
  $log_lost_incoming_connection       = true
  $log_retry_defer                    = true
  $log_sender_on_delivery             = true
  $log_skip_delivery                  = true
  $log_smtp_confirmation              = true
  $log_smtp_connection                = true
  $log_smtp_protocol_error            = true
  $log_smtp_syntax_error              = true
  $log_tls_peerdn                     = true
  $macros                             = {}
  $manage_service                     = false
  $message_logs                       = undef
  $message_size_limit                 = undef
  $never_users                        = [ 'root' ]
  $qualify_domain                     = undef
  $queue_only                         = false
  $queue_only_load                    = undef
  $queue_run_max                      = undef
  $remote_max_parallel                = undef
  $rfc1413_hosts                      = '*'
  $rfc1413_query_timeout              = '5s'
  $smtp_accept_max_nonmail            = undef
  $smtp_accept_max_per_connection     = undef
  $smtp_accept_max_per_host           = undef
  $smtp_accept_max                    = undef
  $smtp_accept_queue_per_connection   = undef
  $smtp_accept_queue                  = undef
  $smtp_accept_reserve                = undef
  $smtp_banner                        = undef
  $smtp_reserve_hosts                 = undef
  $spamd_address                      = undef
  $split_spool_directory              = false
  $syslog_timestamp                   = true
  $system_filter                      = undef
  $timeout_frozen_after               = '7d'
  $tls_advertise_hosts                = '*'
  $tls_certificate                    = undef
  $tls_privatekey                     = undef
  $trusted_users                      = undef
}
