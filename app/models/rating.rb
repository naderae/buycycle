class Rating < ApplicationRecord

belongs_to :user

validates_presence_of :value
end
