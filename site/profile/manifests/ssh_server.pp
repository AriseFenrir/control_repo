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
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCgES4ixGL7rrnfIUh4oL3wrw/ULe0pEvSQ501d0gldsfZLnV3U8mv1slIv/rN8G3incjlhSyjOHHBW9DEsX2yuwmZhbWWSTW1MleG4R2J0W0tlJtgalZT/51tbTdlzxBiFDAqVXqmvRI5ya7xPAVgzbBPGCvcszV6cSSsRrL/dEkka0R/+XjMZjMXeMeuyEoG6vODbOrY7Gns75d0T8Sebx5m+MQBRHAkdrz6F1L8FcH5xJqoQxchqNYOoV3CNUPbJoifYU0dJkRXV/YM+svCN7ulwXhk6M0UntfVsBiXRDnXUfFSaLr/SCRO+yq4BlUwk7Yv5upbxVm+voSIsEBeb',
  }  
}
