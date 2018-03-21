class Portfolio < ApplicationRecord
  # implement custom scope
  def self.anglular
    where(subtitle: 'Anglular')
  end
  scope :ruby_on_rails, lambda { where(:subtitle => 'Ruby on Rails') }

  validates_presence_of :title, :body, :main_image, :thumb_image
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Faker::LoremPixel.image("600x400")
    self.thumb_image ||= Faker::LoremPixel.image("350x150")
  end
end
