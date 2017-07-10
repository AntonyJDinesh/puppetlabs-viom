# viom

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with viom](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with viom](#beginning-with-viom)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description
This is the VIOM module for puppet. Supports installation of Veritas Infoscale Operations Manager using YUM on RHEL.

### Setup Requirements **OPTIONAL**
Basic requirement is, The VRTSsfmcs & VRTSsfmh packages should present in yum repository on individual nodes

## Usage

node 'rhel7-n1' {
    class { 'viom':
       operation        => "uninstall",
       db_location      => "/var/opt/VRTSsfmcs/db",
       enable_analytics => "1",
    }
}

## Limitations

This is puppet module is oly for RHEL
