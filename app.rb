require 'sinatra'
require 'json'

set :views, 'public/'
enable :sessions

set :bind, '0.0.0.0'
set :port, 9001

get '/' do
	erb :index
end

get '/creditcard' do
	erb :creditcard
end

get '/carousel' do
	erb :carousel
end

get '/varenv' do
	erb :varenv
end

get '/json' do

	messages = {
		:plataform => "webview",
		:menu => 1,
		:type => 2,
		:title => "O que você achou do atendimento?",
		:replies => [
			{
				:display => "Ótimo",
				:next_intent => "bemol::sochamar 3"
			},
			{
				:display => "Regular",
				:next_intent => "bemol::sochamar 2"
			},
			{
				:display => "Ruim",
				:next_intent => "bemol::sochamar 1"
			}
		]
	}

	resultado = {
		:speech => 'action',
		:messages => messages
	}.to_json

	"<p>#{resultado}</p>"

end