class LogLineParser
  def initialize(line)
    @line = line
    @line_array = @line.split(":")
  end

  def message
    line_array = @line_array[1].to_s.split("\\")
    line_array[0].to_s.strip!
  end

  def log_level
    @line_array[0].to_s.gsub('[', '').gsub(']', '').downcase
  end

  def reformat
    message + " (#{log_level})"
  end
end
