# frozen_string_literal: true

# name: hello-world
# about: hello-world-rails-plugin-gen is a plugin for debugging the Discourse rails plugin generator
# version: 0.1
# authors: Neo
# url: https://github.com/unixneo

register_asset 'stylesheets/common/hello-world.scss'
register_asset 'stylesheets/desktop/hello-world.scss', :desktop
register_asset 'stylesheets/mobile/hello-world.scss', :mobile

enabled_site_setting :hello_world_enabled

PLUGIN_NAME ||= 'HelloWorld'

load File.expand_path('lib/hello-world/engine.rb', __dir__)

after_initialize do

   File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - HelloWorld plugin.rb after_initalize\n" }
  # https://github.com/discourse/discourse/blob/master/lib/plugin/instance.rb
end
