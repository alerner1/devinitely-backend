class JobLead < ApplicationRecord
  belongs_to :user
  has_one :checklist
  has_one :contact
  has_many :notes
end
