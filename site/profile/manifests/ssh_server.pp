class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDrHO48DEw1GbMC+Ic4a5tUZmCmZ5t2p4hcnWrh8ve3VBSoQwAIUDVP4YMiB4wLXaVa4dhyp4mXLJ6TB7988A5TZBCzL7zMvREqwLSqdablXz7x8mJA6m6NDT6/qpAtEFf1Ks5iVVR/d8y6iloOjk23oSBHqLj6l93zRzxl8J3U8GW9X4wrvPXxHdzP8+Vbyq+XMX1EyxmBh0zbdM7NQ8/bVjslKB3ectCMRUZwBhyN/QlAmCCl6JrkrJZSRS3+h9SrgY3uocZ5v5hWR+nSjyJ+xkbgwQbPA2pl7vTvhkO+f4FUBEapi67u+Q35wtd2e/4GtkIAmac5HjJu9pl9Qi0N',
  }
}
