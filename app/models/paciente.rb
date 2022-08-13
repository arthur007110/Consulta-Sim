class Paciente < ApplicationRecord
  has_many :consultums
  has_one :endereco, :dependent => :destroy

  accepts_nested_attributes_for :endereco, update_only: true, allow_destroy: true
end
