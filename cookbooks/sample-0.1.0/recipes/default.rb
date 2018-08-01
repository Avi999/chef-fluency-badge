
directory '/home/ec2-user/file1' do
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :delete
end
=begin
file '/home/ec2-user/firstproject/index.php' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'myname'
  group 'www-data'
end
=end
