class Medico < ApplicationRecord
  has_many :consultums

  validates :nome, presence: true, length: { in: 8..50 },format: { with: /[a-zA-Z]+/, message: "only allows letters" }, format: { with: /\s/ }
  validates :cpf, presence: true, length: { is: 11 }, uniqueness: true, format: { with: /[\d]+/, message: "only allow numbers" }
  validates :email, presence: true, length: { minimum: 4 }, format: { with: /[a-z0-9.]+@[a-z0-9]+\.[a-z]+(\.[a-z]+)?/ }
  validates :crm, presence: true, numericality: { only_integer: true }, length: { is: 6 }
  validates :especialidade, presence: true, length: { minimum: 4 }, format: { with: /[a-zA-Z]+/, message: "only allows letters" }
end
