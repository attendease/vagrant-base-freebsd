%w[
shells/bash
databases/postgresql96-server
databases/postgresql96-client
databases/postgresql96-contrib
databases/redis
devel/awscli
devel/git
devel/icu
devel/rbenv
devel/ruby-build
editors/vim-console
graphics/ImageMagick7-nox11
security/openssl
sysutils/rubygem-bundler
sysutils/tmux
www/nginx
].each do |p|
  package p do
    action :install
  end
end

execute 'clean pkg cache' do
  command 'pkg clean --all --yes'
end

directory '/var/db/freebsd-update/files' do
  action :delete
  recursive true
end

directory '/usr/lib/debug' do
  action :delete
  recursive true
end
