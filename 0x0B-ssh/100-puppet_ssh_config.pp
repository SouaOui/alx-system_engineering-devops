# Client configuration file (w/ Puppet)
# ssh configuration .pp
file { 'give the Identity file':
    ensure                 => 'present'
    passwordauthentication => 'no',
    line                   => 'IdentityFile ~/.ssh/school',
    path                   => '/etc/ssh/ssh_config.'
}
file { 'no password authentification':
    ensure                 => 'present'
    passwordauthentication => 'no',
    line                   => 'PasswordAuthentication no',
    path                   => '/etc/ssh/ssh_config.'
}
