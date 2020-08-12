module HelloWorld
  class HelloWorldController < ApplicationController
    requires_plugin 'HelloWorld'

    before_action :ensure_logged_in

    def after_initialize
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - Called HelloWorldController after_initialize\n" }
    end
   
    def index
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - Called HelloWorldController Index\n" }
    end
  end
end
