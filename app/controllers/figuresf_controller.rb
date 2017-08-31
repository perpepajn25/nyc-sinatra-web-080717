class FiguresController < ApplicationController

  get '/figures' do
    #display all the figures
  end

  get 'figures/:id' do
    # render a page with given figure info
  end

  get '/figures/new' do
    #bring to page for new figure
  end

  post '/figures' do
    #creating new figure
  end

  get '/figures/:id/edit' do
    #bring to page to edit a given figure
  end

  post '/figures/:id' do
    #PATCH? updates given figure with new info
  end

end
