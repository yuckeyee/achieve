server '52.193.171.102', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/kayama/.ssh/id_rsa'