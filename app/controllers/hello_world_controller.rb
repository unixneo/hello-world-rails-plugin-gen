module HelloWorld
  class HelloWorldController < ApplicationController
    requires_plugin 'HelloWorld'

    before_action :ensure_logged_in
    after_action :logit
   
    def index
      cookies[:hello_cookie] = "hello_index"
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - Called HelloWorldController Index\n" }
    end

    private
    def logit
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - Called HelloWorldController after_action\n" }
    end
  end
end
