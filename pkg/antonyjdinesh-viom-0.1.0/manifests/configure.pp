# Class: viomi::configure
# ===========================
#
# This class will configure Veritas Infoscale Operations Manager product on RHEL Machine
#
# === Authors
#
# Antony J Dinesh <antonyjebamalai.dine@veritas.com>
#
# === Copyright
#
# Copyright 2017 Antony J Dinesh, unless otherwise noted.
#
class viom::configure(
    $enable_analytics = $enable_analytics,
    $db_location      = $db_location
) {
    exec { 'config viom':
	command => "/opt/VRTSsfmh/bin/perl /opt/VRTSsfmh/web/admin/cgi-bin/cs_config.pl 'cs-hostname=$fqdn&cs-ip=$ipaddress&useDefault=on&dbLocation=$db_location&cs-analytics=$enable_analytics'",
        require => Exec['install viom'] 
    }
}
