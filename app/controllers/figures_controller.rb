class FiguresController < ApplicationController

  get '/landmarks' do
    #display all the landmarks
  end

  get 'landmarks/:id' do
    # render a page with given landmark info
  end

  get '/landmarks/new' do
    #bring to page for new landmark
  end

  post '/landmarks' do
    #creating new landmark
  end

  get '/landmarks/:id/edit' do
    #bring to page to edit a given landmark
  end

  post '/landmarks/:id' do
    #PATCH? updates given landmark with new info
  end

end
