remote_file '/home/ec2-user/apache-tomcat-8.0.53.tar.gz' do
  source 'http://redrockdigimark.com/apachemirror/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :create
end
