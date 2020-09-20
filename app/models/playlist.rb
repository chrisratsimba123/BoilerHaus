class Playlist < ApplicationRecord
  has_and_belongs_to_many :artists
  has_many :songs
end
