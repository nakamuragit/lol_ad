class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :scrim_ad, optional: true
end
