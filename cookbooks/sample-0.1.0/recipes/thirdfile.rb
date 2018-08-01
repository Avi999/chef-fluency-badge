bash 'extract_module' do
   code <<-EOH
    rmdir /home/ec2-user/file1
    EOH
  only_if { ::Dir.exists?("/home/ec2-user/file1") }
  end

