class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':', 2)[1].strip
  end

  def log_level
    @line[/\[(\w+)\]/, 1].to_s.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
