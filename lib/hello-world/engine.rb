module HelloWorld
  class Engine < ::Rails::Engine
    engine_name "HelloWorld".freeze
    isolate_namespace HelloWorld
    def after_initialize
      File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class Engine < ::Rails::Engine after_initialize\n" }
    end
    config.after_initialize do
      Discourse::Application.routes.append do
        mount ::HelloWorld::Engine, at: "/hello-world"
      end
    end
  end
end
