class MyWorker
  include Sidekiq::Worker

  def perform
    p '>>> worker run <<<'
  end
end