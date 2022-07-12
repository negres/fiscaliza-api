class Demand < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  before_create :geocode

  belongs_to :user

  validates :title, :description, :status, presence: true
  validates :title, length: { maximum: 120 }, if: :title_changed? || new_record?
  validates :description, length: { maximum: 255 }

  enum status: { pending: 0, in_progress: 1, finished: 2 }

  mount_uploader :image, ImageUploader

  def geocode
    geocode_data = [latitude, longitude]
    location = Geocoder.search(geocode_data).first

    return if location.blank?

    self.city = location.city
    self.state = location.state
    self.country = location.country
    self.latitude = latitude || location.coordinates[0]
    self.longitude = longitude || location.coordinates[1]
  end
end
