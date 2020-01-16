class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    @my_message = params["my_message"]
    @other = params["other"]
    render 'query_params_view.json.jb'
  end

  def segment_params_action
    @message = params[:wildcard]
    render 'segment_params_view.json.jb'
  end 

  
  def guess_query
    @guess = params[:wildcard].to_i
    hidden_number = 42

    if @guess > hidden_number
       @message = "Woah, too high, Go lower!"
    elsif @guess < hidden_number
      @message = "Come up a bit, guess higher next time."
    else
      @message = "and that number was just right."
    end 
      render 'guess_query.json.jb'
  end 

  def form_params_action
    @message = params[:message]
    render 'form_params_view.json.jb'
  end 
end
