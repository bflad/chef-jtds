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
