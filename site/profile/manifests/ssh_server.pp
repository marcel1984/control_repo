class profile::ssh_server {
  package { 'openssh-server':
    ensure => 'present',
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDg3OV8ydKnhPq3fTtxaPWfeCagE6IFWMvksT/dWe+HaIVsNk2X5EMzP6gfa3C4nbFB++wnsIMMdFTtekzDW9p6hoB2qFVJXImkf6YjxJGHanx/EBJkdYzE1vjiqaIJSkeR6sJywXLmajy5cSCGCYVGhA7m1EumgbRq4TuWDcikS+gpQ8RKx22YNFBN516bW63AawfNg1EI8dZTXubvrI49GF+6wFPO3dFfWW70splaqZc1qVVYH5q14HzSno40W9WcLpQxRKzZ8ugIqwi+1RGHegruL0TunX2T/n/A1escO8ROWkQduIZa/XHWyxgL45Ypt89IVE6x/4TlnujqB/8H',
  }
}
