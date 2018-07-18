require 'sinatra'
require 'json'
require 'dotenv'
require 'logger'
require 'date'

configure :development do
	Dotenv.load('dev.env')
end

configure :production do
	Dotenv.load('prd.env')
end

set :views, 'public/'

set :bind, ENV["BIND"]
set :port, ENV["PORT"]
enable :sessions

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

get '/mail' do
	erb :mail
end

get '/slick' do
	erb :slick
end

log = Logger.new('log/log.txt')

log.level = Logger::WARN

get '/log' do
	log.error "This will not be ignored"
end

get '/json' do

	begin

		messages = {
			:plataform => "webview",
			:menu => 1,
			:type => 2,
			:title => asdasd,
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

		puts resultado
		
	rescue Exception => e
		
		log = Logger.new('log/logJSON.txt')

		log.level = Logger::DEBUG

		log.error "Caí na Exception JSON"

	end

end