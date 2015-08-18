class Muppet < ActiveRecord::Base
  validates :name, presence: true
  validates :image_url, presence: true

  def screeming_muppet_name
    return name.upcase
  end
end
