module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    Faker::Placeholdit.image("#{height}x#{width}")
  end
end
