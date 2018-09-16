module DiscoursePluginTemplate
  class HelloController < ApplicationController

    def index
      render_json_dump("Hello World")
    end

    def test
      render json: { test: "hello" }
    end
  end
end