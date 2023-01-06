# frozen_string_literal: true

# router for owners table
class OwnersController < ApplicationController
  get '/owners' do
    Owner.all.map(&:information).to_json
  end

  get '/owners/:id' do
    Owner.find(params[:id]).to_json
  end

  post '/owners' do
    Owner.create(params).to_json(include: :pets)
  end

  patch '/owners/:id' do
    owner = Owner.find(params[:id])
    owner.update(params)
    owner.to_json
  end

  delete '/owners/:id' do
    Owner.find(params[:id]).destroy
  end
end
