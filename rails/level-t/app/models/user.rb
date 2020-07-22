class User < ActiveRecord::Base
  has_many :links
  has_shortened_urls
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # attr_accessor :lat, :lon
  def has_address
    return true if lat != 0.0 and lon != 0.0 else false
  end
  # Ex:- scope :active, -> {where(:active => true)}
end