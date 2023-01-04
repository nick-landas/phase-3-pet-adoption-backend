# frozen_string_literal: true

# owner of a pet, associated via activerecord for sinatra
class Owner < ActiveRecord::Base
    has_many :adoptions
    has_many :pets, through: :adoptions
end