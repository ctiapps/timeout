require "../src/timeout"

puts "starting"
Timeout.timeout(2.0) do
  sleep 1
  puts "1"
  sleep 1
  puts "2"
end

puts "finished"
