class Movie < ApplicationRecord
  belongs_to :production_company

  validates :title, :year, :description, :average_vote, presence: truevalidates :title, uniqueness: true
  validates :year, :duration, numericality: {only_integer: true}
  validates :average_vote, numericality: true
end
