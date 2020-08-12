module HelloWorld
  class ActionsController < ApplicationController
    requires_plugin 'HelloWorld'

    before_action :ensure_logged_in

    def after_initialize
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - Called ActionsController after_initialize\n" }
    end
    
    def index
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class ActionsController index\n" }
      render_json_dump({ actions: [] })
    end

    def show
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class ActionsController show\n" }
      render_json_dump({ action: { id: params[:id] } })
    end
  end
end
