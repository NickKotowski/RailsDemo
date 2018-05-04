class Like < ApplicationRecord
  belongs_to :tweeet
  has_many :users, dependent: :destroy

end
