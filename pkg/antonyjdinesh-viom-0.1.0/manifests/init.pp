# Class: viom
# ===========================
#
# This class will install and configure Veritas Infoscale Operations Manager product on RHEL Machine 
#
# Authors
# -------
#
# Author Name <antonyjebamalai.dine@veritas.com>
#
# Copyright
# ---------
#
# Copyright 2017 Antony J Dinesh, unless otherwise noted.
#
class viom(
    $enable_analytics = $enable_analytics,
    $db_location      = $db_location,
    $operation        = $operation,
) {
    class { 'viom::install':
	operation => $operation,
    }
    if $operation == "install" {
    	class { 'viom::configure':
	    enable_analytics => $enable_analytics,
	    db_location      => $db_location,
    	}
    }
}
