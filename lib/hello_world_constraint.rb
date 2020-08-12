class HelloWorldConstraint
  
  def matches?(request)
    File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class HelloWorldConstraint matches?(request)\n" }
    SiteSetting.hello_world_enabled
  end

  #unused for now
  private 
  def logit
    File.open("./log/hello_world_log.txt", "a") { |f| f.write "#{Time.now} - class HelloWorldConstraint befor_action\n" }
  end

end
