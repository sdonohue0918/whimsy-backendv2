class Subscriber < ApplicationRecord
    belongs_to :user, required: false

end