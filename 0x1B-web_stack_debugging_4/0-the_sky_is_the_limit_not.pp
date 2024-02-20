# change the ulimit of nignx

exec { 'replace':
  provider => shell,
  command  => 'sed -i "s/15/4096/" /etc/default/nginx'
}

exec { 'restart':
  provider => shell,
  command  => 'sudo service nginx restart'
}
