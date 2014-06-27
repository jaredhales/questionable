module Questionable
  class Answer < ActiveRecord::Base
    belongs_to :user
    belongs_to :assignment
    belongs_to :option
    has_one :question, through: :assignment

    def date_answer
      return nil if message.nil?

      self.message.to_date
    rescue ArgumentError
      nil
    end
  end
end
