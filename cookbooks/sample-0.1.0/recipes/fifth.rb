puts " *******platfor is: #{node[:platform]}"
package 'httpd' do
	action :install
end 
=begin
bash 'install' do
   code <<-EOH
    systemctl enable httpd.service
    systemctl restart httpd.service
    EOH
  #only_if { ::Dir.exists?("/home/ec2-user/file1") }
  end
service "tomcat" do
  action :start
end
service "httpd.service" do
 action [:enable, :restart]
=end
service 'example_service' do
  case node['platform']
  when 'centos','redhat','fedora','amazon'
    service_name 'httpd.service'
  else
    service_name 'apache2'
  end
  supports :restart => true
  action [ :enable, :start ]
end
