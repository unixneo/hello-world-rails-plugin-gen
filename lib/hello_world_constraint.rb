class HelloWorldConstraint
  def after_initialize
    File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class HelloWorldConstraint after_initalize\n" }
  end

  def matches?(request)
    File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class HelloWorldConstraint matches?(request)\n" }
    SiteSetting.hello_world_enabled
  end
end
