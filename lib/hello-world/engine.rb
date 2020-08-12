module HelloWorld
  class Engine < ::Rails::Engine
    engine_name "HelloWorld".freeze
    isolate_namespace HelloWorld

    config.after_initialize do
      Discourse::Application.routes.append do
        mount ::HelloWorld::Engine, at: "/hello-world"
      end
    end

    #unused for now
    private
    def logit
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class Engine < ::Rails::Engine after_initialize\n" }
    end
  end
end
