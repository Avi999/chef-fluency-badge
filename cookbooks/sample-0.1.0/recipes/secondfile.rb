template '/home/ec2-user/sample.txt' do
  source 'test.erb'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  variables(
   :dbname => node['sample']['dbname'],
   :port => node['sample']['portnumber'],
   :url => node['sample']['url']
  )
end
