# Client configuration file (w/ Puppet)
# ssh configuration .pp
file_line { 'give the Identity file':
    ensure                 => 'present'
    line                   => '  IdentityFile ~/.ssh/school',
    path                   => '/etc/ssh/ssh_config',
}
file_line { 'no password authentification':
    ensure                 => 'present'
    line                   => '  PasswordAuthentication no',
    path                   => '/etc/ssh/ssh_config',
}
