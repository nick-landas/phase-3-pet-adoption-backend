# frozen_string_literal: true

# router for pets table using sinatra
class PetsController < ApplicationController
  get '/pets' do
    Pet.all.to_json(id: :id)
  end

  get '/pets/:id' do
    Pet.find(params[:id]).to_json
  end

  post '/pets' do
    Pet.create(params).to_json
  end

  patch '/pets/:id' do
    pet = pet.find(params[:id])
    pet.update(params)
    pet.to_json
  end

  delete '/pets/:id' do
    Pet.find(params[:id]).destroy
  end
end
