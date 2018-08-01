execute 'slapadd' do
  command 'ps -ef | grep apache > /home/ec2-user/output.txt'
  action :nothing
end

template '/tmp/something.ldif' do
  source 'something.ldif'
  notifies :run, 'execute[slapadd]', :immediately
end
