class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    #bring to page for new figure
    erb :"figures/new"
  end

  post '/figures' do
    figure = Figure.create(params[:figure])
    # if params[:other1] == "1"
    title = Title.create(name: params[:title][:name])
    figure.titles << title
    # if params[:other2] == "1"
    landmark = Landmark.create(name: params[:landmark][:name])
    figure.landmarks << landmark
    redirect to "figures/#{figure.id}"
  end

  get '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    erb :'/figures/show'
  end

  get '/figures/:id/edit' do
    #bring to page to edit a given figure
    @figure = Figure.find_by(id: params[:id])
    erb :'/figures/edit'
  end

  patch '/figures/:id' do
    #PATCH? updates given figure with new info
    # binding.pry
    figure = Figure.find_by(id: params[:id])
    figure.landmark << Landmark.create(params[:landmark][:name])
    figure.title << Title.create(params[:title][:name])
    figure.update(params[:figure])
    redirect to "/figures/#{figure.id}"
  end

end
