class Paperpost < ApplicationRecord
   has_many :authors , dependent: :destroy
  #accepts_nested_attributes_for :authors, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :authors, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

end
