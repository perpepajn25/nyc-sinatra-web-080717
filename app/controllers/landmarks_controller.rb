class LandmarksController < ApplicationController

  get '/landmarks' do
<<<<<<< HEAD
    #display all the landmarks
  end

  get '/landmarks/:id' do
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

=======
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  get '/landmarks/new' do
    erb :"landmarks/new"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by(id: params[:id])
    erb :"landmarks/show"
  end

  post '/landmarks' do
    landmark = Landmark.create(params[:landmark])
    redirect to "landmarks/#{landmark.id}"
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by(id: params[:id])
    erb :"landmarks/edit"
  end

  patch '/landmarks/:id' do
    landmark = Landmark.find_by(id: params[:id])
    landmark.name= params[:landmark][:name]
    landmark.year_completed= params[:landmark][:year_completed]
    landmark.save
    redirect to "landmarks/#{landmark.id}"
  end

  get '/landmarks/:id/delete' do
    Landmark.find_by(id: params[:id]).delete
    redirect to "landmarks"
  end

>>>>>>> 7fc35f868a6749e9ef3dbb70434459041b166983
end
