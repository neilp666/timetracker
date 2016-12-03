class Post < ApplicationRecord
  validates_presence_of :date, :description
end
