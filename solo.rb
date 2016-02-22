Encoding.default_external = "UTF-8"

root = File.absolute_path(File.dirname(__FILE__))

file_cache_path root
cookbook_path [root + '/cookbooks',  root + '/berks-cookbooks']
#role_path root + '/roles'
