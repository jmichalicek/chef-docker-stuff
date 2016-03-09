# make this more configurable to work on other releases, etc.
# include_recipe 'apt'

apt_package("apt-transport-https") do
    action [:install]
end

apt_repository 'docker' do
  uri        'https://apt.dockerproject.org/repo'
  components ['main', ]
  distribution 'debian-jessie'
end

bash 'set_docker_apt_policy' do
  code <<-EOH
    apt-cache policy docker-engine
    EOH
end 
