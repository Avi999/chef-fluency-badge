directory node['task']['dir'] do
	action :create
end
template '/home/ec2-user/server.xml' do
	source 'second.erb'
	owner 'ec2-user'
	group 'ec2-user'
	mode '0755'
	variables(
		:portnumber => node['task']['portnumber'],
		:protocolname => "org.apache.coyote.http11.Http11Protocol",
		:maximumthreads => node['task']['maximumthreads'],
		:ssl => "true",
		:scheme => "https",
		:secure => "true",
		:clientauth => "false",
		:protocol => "TLS",
	)
end
