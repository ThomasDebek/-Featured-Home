class Admin::Photo < ActiveRecord::Base
  dragonfly_accessor :image
end
