class City < ApplicationRecord
    has_many :users, dependent: :destroy
end
