class MyCommand
  include Wisper::Publisher
  
  def call
    p 'start MyCommand.call'
    publish 'my_event'
    p 'end MyCommand.call'
  end
end