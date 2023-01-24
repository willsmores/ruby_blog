class Comment < ApplicationRecord
  # Reference to validation login inside of concern
  include Visible
  belongs_to :article
end
