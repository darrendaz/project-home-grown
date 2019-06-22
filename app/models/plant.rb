class Plant < ApplicationRecord
  belongs_to :garden
  belongs_to :comment
end
