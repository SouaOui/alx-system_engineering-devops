# Client configuration file (w/ Puppet)
# ssh configuration .pp
file { '~/.ssh/config':
    ensure                 => 'present'
    passwordauthentication => 'no',
    identity               => '~/.ssh/school',
    type                   => 'ssh-rsa',
}
