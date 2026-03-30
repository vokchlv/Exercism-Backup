class Attendee

  @pass_id = nil

  def initialize(height)
    @height = height
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
    pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

puts Attendee.new(106).issue_pass!(42)