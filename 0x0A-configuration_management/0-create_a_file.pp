# this script create a file in tmp directory
file { '/tmp':
  ensure  => 'present',
  path    => 'school',
  content => 'I love Puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
}
# file { '/tmp/school':
#   content => 'I love Puppet',
#   mode    => '0744',
#   owner   => 'www-data',
#   group   => 'www-data',
# }
