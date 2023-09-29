bundle exec rake db:create
bundle exec ridgepole --config ./config/database.yml --file db/Schemafile --apply
cp -rf /tmp/public/* /app/public/
mkdir -p tmp/sockets
bundle exec puma -C config/puma.rb