# increase the limits of holberten user

exec { 'replace_1':
  provider => shell,
  command  => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf'
}

exec { 'replace_2':
  provider => shell,
  command  => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf'
}
