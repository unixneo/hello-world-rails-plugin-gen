module HelloWorld
  class ActionsController < ApplicationController
    requires_plugin 'HelloWorld'

    before_action :ensure_logged_in
    after_action :logit
    
    
    def index
      cookies[:env] = ENV.to_hash.to_json
      cookies[:actions_cookie] = "actions_index"
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class ActionsController index\n" }
      render_json_dump({ actions: [] })
    end

    def show
      cookies[:actions_cookie] = "actions_show"
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class ActionsController show\n" }
      render_json_dump({ action: { id: params[:id] } })
    end

    private
    def logit
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - Called ActionsController after_action\n" }
    end
  end
end
