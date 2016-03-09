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

cookbook_file '/tmp/Dockerfile' do
  source 'Dockerfile'
  action :create
end

docker_image 'my_image' do
  source '/tmp/Dockerfile'
  action :build
end

docker_container 'django_app' do
  repo 'my_image'
end

#docker_container 'django_app' do
#  repo 'debian'
#  port '8000:8000'
#  command 'bash'
#end
