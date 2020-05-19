require_relative 'mcping'

mcServer = Mcping("website.com")

puts "online: #{mcServer.online}"
if mcServer.online
  puts "#{mcServer.online}/#{mcServer.max}"
  puts "players online: #{mcServer.players}"
  puts "server description: #{mcServer.desc}"
  puts "server address: #{mcServer.server}"

  puts "writing favicon"
  mcServer.writeFavicon

  puts "server latency: #{mcServer.latency}"
end
