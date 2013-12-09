name              'jtds'
maintainer        'Brian Flad'
maintainer_email  'bflad417@gmail.com'
license           'Apache 2.0'
description       'Recipes/LWRPs for installing jTDS.'
version           '0.1.0'
recipe            'jtds', 'Installs jTDS via attribute.'

# %w{ ark }.each do |d|
#  depends d
# end

%w{ redhat }.each do |os|
  supports os
end
