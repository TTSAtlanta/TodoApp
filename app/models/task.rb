class Task < ApplicationRecord
	belongs_to :user

	def due_today
    self.tasks.select{ |t| t.due_date.to_date == DateTime.now.to_date }
  end
end
