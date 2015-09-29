class Book < ActiveRecord::Base
  has_many :comments
  has_many :agendas
  validates :title, presence: true,
                    length: { minimum: 3 }
end
