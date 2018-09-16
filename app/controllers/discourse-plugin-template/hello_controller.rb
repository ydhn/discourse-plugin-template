module DiscoursePluginTemplate
  class HelloController < ApplicationController

    def index
      render_json_dump("Hello World")
    end

    def test
      @category = Category.find_by(id: params[:id].to_i)
      render json: @category
    end
  end
end