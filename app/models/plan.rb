class Plan < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  has_many :journal_entries, through: :patients
end
