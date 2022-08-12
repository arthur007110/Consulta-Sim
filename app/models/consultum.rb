class Consultum < ApplicationRecord
  has_one :paciente
  has_one :medico
end
