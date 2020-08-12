require_dependency "hello_world_constraint"

HelloWorld::Engine.routes.draw do
  get "/" => "hello_world#index", constraints: HelloWorldConstraint.new
  get "/actions" => "actions#index", constraints: HelloWorldConstraint.new
  get "/actions/:id" => "actions#show", constraints: HelloWorldConstraint.new
end
