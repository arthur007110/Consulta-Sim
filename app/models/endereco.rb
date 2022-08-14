class Endereco < ApplicationRecord
  belongs_to :paciente

  validates :cep, presence: true, length: { is: 8 }, numericality: { only_integer: true }
  validates :cidade, presence: true, length: { minimum: 3, maximum: 30 }, format: { with: /[a-zA-Z]+/, message: "only allows letters" }
  validates :bairro, presence: true, length: { minimum: 3, maximum: 35 }, format: { with: /[a-zA-Z]+/, message: "only allows letters" }
  validates :logradouro, presence: true, length: { minimum: 3, maximum: 60 }, format: { with: /[a-zA-Z]+/, message: "only allows letters" }
  validates :complemento, presence: true, length: { minimum: 5, maximum: 35 }, format: { without: /!|@|#|\$|%|&/, message: "(! @ # $ % &) characters are not allowed" }
end
