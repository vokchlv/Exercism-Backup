class LogLineParser

  attr_reader :log_level, :message
  
  def initialize(line)
    line_parts = line.split(":")
    @log_level = line_parts[0].to_s.gsub('[', '').gsub(']', '').downcase
    @message = line_parts[1].to_s.split("\\")[0].to_s.strip
  end

  def message
    @message
  end

  def log_level
    @log_level
  end

  def reformat
    message << ' (' << log_level << ')'
  end
end
