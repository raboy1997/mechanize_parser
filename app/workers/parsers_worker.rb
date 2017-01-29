require 'sidekiq'
require 'sidekiq-cron'
# class sidekiq
class ParsersWorker
  include Sidekiq::Worker

  def perform(*_args)
    system 'rake parser'
  end
end
