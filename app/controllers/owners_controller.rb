# frozen_string_literal: true

# router for owners table
class OwnersController < ApplicationController
  get '/owners' do
    Owner.all.map(&:information).to_json
  end

  get '/owners/:id' do
    Owner.find(params[:id]).information.to_json
  end

  post '/owners' do
    Owner.create(params).information.to_json
  end

  patch '/owners/:id' do
    owner = Owner.find(params[:id])
    owner.update(params)
    owner.information.to_json
  end

  delete '/owners/:id' do
    owner = Owner.find(params[:id])
    owner_info = owner.information
    owner.destroy
    owner_info.to_json
  end
end
