class OwnersController < ApplicationController

    get '/owners' do
        owners = Owner.all.to_json
    end

    get '/owners/:id' do
        owner = Owner.find(params[:id]).to_json
    end

    post '/owners' do
        owner = Owner.create(params).to_json
    end

    patch '/owners/:id' do
        owner = Owner.find(params[:id])
        owner.update(params)
        owner.to_json
    end

    delete '/owners/:id' do
        owner = Owner.find(params[:id]).destroy
    end


end