

bash 'resize disk' do
  cwd ::File.dirname("#{node['resizestorage']['ran_file']}")
  code <<-EOH
    resize2fs #{node['resizestorage']['disk']}
    date > #{node['resizestorage']['ran_file']}
    EOH
  not_if { ::File.exists?("#{node['resizestorage']['ran_file']}") }
end