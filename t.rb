
require 'telegram/bot'

TOKEN = '4000000000000000000000000000000000000000000'

ANS=[" now we can work whis computer","im supermen"]


 Telegram::Bot::Client.run(TOKEN) do |bot|
 	bot.listen do |message|
 	case message.text
 	
 		when '/start'
 		bot.api.send_message(
 			chat_id:message.chat.id,
 			text: "say me something, #{message.from.first_name}") 
	    when '/google'
	 	bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:"opening google")
	 		system("firefox http://www.google.com")#system("firefox somesite.com/")
	    when '/'
	 	bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:"opening Firefox")
	 		system("firefox http://")
	    when '/s'
	 	bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:"opening Sublime text")
	 		system("subl")
 		when '/v_up'
 		bot.api.send_message(
 			chat_id:message.chat.id,
 			text:"set wolume up")
 			system("amixer -D pulse sset Master 5%+")
	 	when '/v_down'
	 	bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:"set wolume up")
	 		system("amixer -D pulse sset Master 5%-")
	 	when '/v_zero'
	 	bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:"set wolume up")
	 		system("amixer -D pulse sset Master 0%")
	    
	    when '/film'
	 	bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:"open film ")
	 		system("xdg-open /home/levente/Завантаження/LoGan.2O17.D.HDTVRip.14OOMB_KOSHARA.avi")
	    when '/dosomething'
	 	bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:"do you know my pass")
	 		system("gnome-screensaver-command -l")
	   	 		
		else bot.api.send_message(
	 		chat_id:message.chat.id,
	 		text:":ok #{message.text}")
	 		system(message.text)
	 		#message.text=""
 end
end
end
