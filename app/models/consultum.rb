class Consultum < ApplicationRecord
  has_one :paciente
  has_one :medico

  validates :data, presence: true, in_future: true
  validates :horario, presence: true, length: { is: 5 }, format: { with: /[\d]{2}:[\d]{2}/, message: "must be in 00:00 format" }
end
