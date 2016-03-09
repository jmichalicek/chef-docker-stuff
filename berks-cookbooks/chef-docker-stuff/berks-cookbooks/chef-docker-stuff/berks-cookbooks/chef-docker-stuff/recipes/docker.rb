# installs docker
# https://github.com/chef-cookbooks/docker
docker_service 'default' do
  action [:create, :start]
end

docker_image 'debian' do
  action :pull
end

docker_container 'docker_1' do
  repo 'debian'
  port '1234:1234'
end

docker_container 'django_app' do
  repo 'debian'
  port '8000:8000'
  command 'bash'
end
