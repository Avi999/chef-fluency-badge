
cookbook_file '/home/ec2-user/cookbookfile' do
  source 'tomcat.conf'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :create
end
