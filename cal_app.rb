require "sinatra"
require_relative "calcpart.rb" 

get '/' do
	msg = params[:msg] || ""	
	erb :logon, locals: {msg: msg}
end

post '/logon' do
users = { joe:"1233", squatch:"arg1", stumpknocker:"sooie", admin:"admin"}	
	usrname = params[:usrname]
	p_word = params[:p_word]

users.each_pair do |nam, p_w|	
	if usrname == nam.to_s && p_word == p_w
			msg = "Logging On"
		redirect '/name?msg=' + msg	
 
	elsif usrname == nam.to_s
			msg = "Wrong Password"
			redirect '/?msg=' + msg
	
	elsif p_word == p_w
			msg = "Wrong Username"
			redirect '/?msg=' + msg
	end	
  end
  		msg = "Wrong Username and Password"
  		redirect '/?msg=' + msg  		
end

get '/newroute' do 
	"You are here ,,,And this is Nowhere"
	
end


get '/name' do
	msg = params[:msg]
	erb :nam3s, locals:{msg:msg}
end

post '/name' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	redirect '/thework?f_name=' + f_name + '&l_name=' + l_name
end

get '/thework' do
	msg = params[:msg] || ""
	f_name = params[:f_name]
	l_name = params[:l_name]
	erb :caclpage, locals:{f_name:f_name, l_name:l_name, msg: msg}
end


post '/thework' do
	func = params[:func]
	f_name = params[:f_name]
	l_name = params[:l_name]
	n1 = params[:n1]
	n2 = params[:n2]
	answer = calcy(func,n1.to_i,n2.to_i)
	answer = answer.to_s
	redirect '/results?f_name='+f_name+'&l_name='+'&func='+func+'&n1='+n1+'&n2='+n2+'&answer='+answer
end

get '/results' do
	func = params[:func]
	f_name = params[:f_name]
	l_name = params[:l_name]
	n1 = params[:n1]
	n2 = params[:n2]
	answer = params[:answer]
		if func == "add"
			func = "+"
		end	
	erb :results, locals:{f_name:f_name, l_name:l_name, func:func, n1:n1, n2:n2, answer:answer}	
end

post '/back' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	redirect '/thework?f_name='+f_name+'&l_name='+l_name
end
