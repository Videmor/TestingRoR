class Web < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 15}
  validates :url, presence: true, uniqueness: { case_sensitive: false }
  validates :description, length: { minimum: 10 }

end
