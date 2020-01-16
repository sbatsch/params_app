Rails.application.routes.draw do
 namespace :api do
   get 'query_params_url' => 'params_examples#query_params_action'
   get '/segment_params_url' => 'params_examples#segment_params_action' 
   get '/guess_query/:wildcard' => 'params_examples#guess_query'
   post '/body_params_url' => 'params_examples#form_params_action'
  end
end 
