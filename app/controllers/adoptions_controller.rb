class AdoptionsController < ApplicationController
  
    get '/adoptions' do
        adoptions = Adoption.all.to_json
    end

    get '/adoptions/:id' do
        adoption = Adoption.find(params[:id]).to_json
    end

    post '/adoptions' do
        adoption = Adoption.create(params).to_json
    end

    patch '/adoptions/:id' do
        adoption = Adoption.find(params[:id])
        adoption.update(params)
        adoption.to_json
    end

    delete '/adoptions/:id' do
        adoption = Adoption.find(params[:id]).destroy
    end
end
