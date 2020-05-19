# Minecraft-ping


Minecraft status ping protocol for server 1.7


---


This uses the minecraft **Server List Ping(SLP)** protocol

## Ping works in this order

   client sends
   >
     \x00 <protocol version as varint (\x00 for none)> <server address string> <port as uint> <state of response (1 for status, 2 for login)>
     \x00
   server sends
   >
     \x00 <length as varint> <json data as string>
   
   all data has to be packed to send and unpacked to be read
   
   sometimes notchian(mojang java) servers can be weird and will time out themselves and then send data(around 30 seconds)

official resources are [great](https://wiki.vg/Server_List_Ping#Handshake)
