class List < ActiveRecord::Base
  validates_length_of :name, :minimum => 10
  has_many :items, dependent: :destroy
end
