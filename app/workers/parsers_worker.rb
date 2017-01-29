require 'sidekiq'
require 'sidekiq-cron'

class ParsersWorker
  include Sidekiq::Worker

  def perform(*args)
    system "rake parser"
  end

end