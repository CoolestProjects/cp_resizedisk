name             'cp_resizedisk'
maintainer       'Noel King'
maintainer_email 'noelking@gmail.com'
license          'Apache 2.0'
description      'Resizes AWS disks'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe 'cp_resizedisk::default', 'Resizes disk storage'
