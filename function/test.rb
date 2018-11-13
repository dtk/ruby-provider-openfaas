require './handler.rb'

puts Handler.new.run({'request_type' => 'status'})
