# chef-jtds [![Build Status](https://secure.travis-ci.org/bflad/chef-jtds.png?branch=master)](http://travis-ci.org/bflad/chef-jtds)

## Description

Recipes/LWRPs for installing jTDS.

## Requirements

### Platforms

* CentOS 6
* RedHat 6

## Attributes

* `node['jtds']['install_paths']` - Array of jTDS
  installation paths, defaults to []
* `node['jtds']['version']` - Version of jTDS to
* `node['jtds']['url']` - URL for jTDS, defaults to
  "http://sourceforge.net/projects/jtds/files/jtds/`#{node['jtds']['version']}`/jtds-`#{node['jtds']['version']}`-dist.zip/download"
* `node['jtds']['checksum']` - SHA256 checksum for jTDS zip

## Recipes

* `recipe[jtds]` install jTDS from attribute

## Usage

### jTDS installation via attribute

* Add installation paths to `node['jtds']['install_paths']`
  array
* Include `recipe[jtds]` in your node's run list

### jTDS installation via LWRP

* Add `depends "jtds"` to cookbook metadata
* Add to cookbook recipe:

```ruby
jtds_jar "/path/to/install/location"
```

## Testing and Development

Here's how you can quickly get testing or developing against the cookbook thanks to [Vagrant](http://vagrantup.com/) and [Berkshelf](http://berkshelf.com/).

    vagrant plugin install vagrant-berkshelf
    vagrant plugin install vagrant-cachier
    vagrant plugin install vagrant-omnibus
    git clone git://github.com/bflad/chef-jtds.git
    cd chef-jtds
    vagrant up BOX # BOX being centos5, centos6, debian7, fedora18, fedora19, fedora20, freebsd9, ubuntu1204, ubuntu1210, ubuntu1304, or ubuntu1310

You can then SSH into the running VM using the `vagrant ssh BOX` command.

The VM can easily be stopped and deleted with the `vagrant destroy` command. Please see the official [Vagrant documentation](http://docs.vagrantup.com/v2/cli/index.html) for a more in depth explanation of available commands.

## Contributing

Please use standard Github issues/pull requests.

## License and Author
      
Author:: Brian Flad (<bflad417@gmail.com>)

Copyright:: 2013

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
