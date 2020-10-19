class Checklist < ApplicationRecord
  belongs_to :job_lead
  serialize :task_list
end
