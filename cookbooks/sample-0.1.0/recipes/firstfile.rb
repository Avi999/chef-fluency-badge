group 'www-data' do
  action :create
end
user 'myname' do
  comment 'A random user'
  uid '1234'
  gid 'www-data'
  home '/home/myname'
  shell '/bin/bash'
  password 'avinash'
end
directory node['sample']['dir'] do
 action :create
end
puts "ipaddress = #{node['ipaddress']}"
puts "fqdn = #{ node['fqdn']}"
node.normal['sample']['port'] = '90'
