# Class: viom::install
# ===========================
#
# This class will install Veritas Infoscale Operations Manager product on RHEL Machine
#
# === Authors
#
# Antony J Dinesh <antonyjebamalai.dine@veritas.com>
#
# === Copyright
#
# Copyright 2017 Antony J Dinesh, unless otherwise noted.
#
class viom::install(
    $operation = $operation,
) {

    if $operation == "install" {
    	case $::operatingsystem {
	    'RedHat': {
	        exec { 'install viom':
   		    unless => "/usr/bin/yum list VRTSsfmcs | /usr/bin/grep -i \"^Installed Packages\"",
   		    command => "/usr/bin/yum -y install VRTSsfmcs",
	        }
	    }
	    default: {
	        fail("VIOM CS is not supported on ${::operatingsystem}")
	    }
    	}
    } elsif $operation == "uninstall" {
	case $::operatingsystem {
            'RedHat': {
                exec { 'uninstall viom':
                    onlyif => "/usr/bin/yum list VRTSsfmcs | /usr/bin/grep -i \"^Installed Packages\"",
                    command => "/usr/bin/yum -y remove VRTSsfmcs",
                }
            }
            default: {
                fail("VIOM CS is not supported on ${::operatingsystem}")
            }
        }
    }
}
