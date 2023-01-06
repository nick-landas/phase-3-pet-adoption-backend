# frozen_string_literal: true

# router for adoption_applications table
class AdoptionApplicationsController < ApplicationController
  get '/adoption-applications' do
    AdoptionApplication.all.map(&:information).to_json
  end

  get '/adoption-applications/:id' do
    AdoptionApplication.find(params[:id]).information.to_json
  end

  post '/adoption-applications' do
    AdoptionApplication.create(params).information.to_json
  end

  patch '/adoption-applications/:id' do
    adoption = AdoptionApplication.find(params[:id])
    adoption.update(params)
    adoption.information.to_json
  end

  patch '/adoption-applications/:id/approve' do
    adoption = AdoptionApplication.find(params[:id])
    adoption.approve
    adoption.adopt

    [adoption.pet, adoption.owner, adoption].to_json
  end

  delete '/adoption-applications/:id' do
    app = AdoptionApplication.find(params[:id])
    app_info = app.information
    app.destroy
    app_info.to_json
  end
end
