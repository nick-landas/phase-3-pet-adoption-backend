# frozen_string_literal: true

# pet, owned by an owner, associated in table via activerecord for sinatra
class Pet < ActiveRecord::Base
    has_many :adoptions
    has_one :owner, through: :adoptions
end
