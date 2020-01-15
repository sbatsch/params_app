class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    @my_message = params["my_message"]
    @other = params["other"]
    render 'query_params_view.json.jb'
  end
end
