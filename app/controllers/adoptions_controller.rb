class AdoptionsController < ApplicationController
    get '/adoptions' do

        adoptions = Adoption.all
        adoptions.to_json(include: :notes)
    end

    get '/adoptions/:id' do
        adoption = Adoption.find(params[:id])
        adoption.to_json
    end

    post '/adoptions' do
        adoption = Adoption.create(params)
        adoption.to_json
    end

    patch '/adoptions/:id' do
        adoption = Adoption.find(params[:id])
        adoption.update()
        adoption.to_json
    end

    delete '/adoptions/:id' do
        adoption = Adoption.find(params[:id])
        adoption.destroy
    end
end
