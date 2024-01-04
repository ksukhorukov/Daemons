class Daemon 
  DELAY = 1
  CURRENT_DIRECTORY = Dir.pwd
  LOGS_FILE_PATH = "#{CURRENT_DIRECTORY}/logs.txt"

  attr_reader :current_log_message

  def initialize 
    perform
  end 

  private 

  def perform 
    while true do 
      procedure 
    end
  end 

  def procedure 
    write_to_log
    delay
  end 

  def write_to_log
    write_log_message
    invalidate_log_message
  end 

  def current_log_message
    @current_log_message ||= log_message
  end 

  def invalidate_log_message 
    @current_log_message = nil
  end 

  def print_current_message
    puts current_log_message
  end 

  def delay
    sleep DELAY
  end 

  def write_log_message
    `echo #{current_log_message} >> #{LOGS_FILE_PATH}` 
  end 

  def log_message
    "#{Time.new} Daemon is working..."
  end 
end 