require_dependency "discourse_plugin_template_constraint"

constraints = DiscoursePluginTemplateConstraint.new
DiscoursePluginTemplate::Engine.routes.draw do
  get "/hello" => "hello#index", constraints: constraints
  get "/test" => "hello#test", constraints: constraints, defaults: { format: :json }
end