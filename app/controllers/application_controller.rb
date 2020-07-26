class ApplicationController < ActionController::Base
  def index
    # via sidekiq worker
    MyWorker.perform_async
    
    # via wisper sidekiq
    command = MyCommand.new
    command.subscribe MyListener, async: true
    command.call
    
    head :ok
  end
end
