module SeeksHelper
  def create_notification from_id, to_id, question_id
    n = Notification.create
    n.from_id = from_id
    n.to_id = to_id
    n.question_id = question_id
    n.not_type = 2
    n.read = 0
    n.save!
  end
end
