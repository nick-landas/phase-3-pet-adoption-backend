class PetsController < ApplicationController

    get '/pets' do
        pets = Pet.all.to_json
    end

    get '/pets/:id' do
        pet = pet.find(params[:id]).to_json
    end

    post '/pets' do
        pet = Pet.create(params).to_json
    end

    patch '/pets/:id' do
        pet = pet.find(params[:id])
        pet.update(params)
        pet.to_json
    end

    delete '/pets/:id' do
        pet = Pet.find(params[:id]).destroy
    end


end