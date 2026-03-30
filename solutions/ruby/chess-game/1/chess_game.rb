module Chess
  # TODO: define the 'RANKS' constant
  RANKS = Range.new(1, 8)
  # TODO: define the 'FILES' constant
  FILES = Range.new('A', 'H')

  def self.valid_square?(rank, file)
    (RANKS.include?(rank.to_i) && FILES.include?(file)) || (RANKS.include?(file.to_i) && FILES.include?(rank))
  end

  def self.nickname(first_name, last_name)
    (first_name[0..1] + last_name[-2..-1]).upcase
  end

  def self.move_message(first_name, last_name, square)
    if valid_square?(square[0], square[1])
      "#{nickname(first_name, last_name)} moved to #{square}"
    else
      "#{nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
