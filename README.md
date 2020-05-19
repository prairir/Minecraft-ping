# Minecraft-ping

minecraft ping protocol of server 1.7
this uses the minecraft Server List Ping(SLP) protocol


   ping function for server 1.7 works like this
   client sends
     \x00 <protocol version as varint (\x00)> <server address string> <port as uint> <state of response (1 for status, 2 for login)>
     \x00
   server sends
     \x00 <length as varint> <json data as string>
   all data has to be packed to send and unpacked to be read
   sometimes notchian(mojang java) servers can be weird and will time out themselves and then send data(around 30 seconds)
