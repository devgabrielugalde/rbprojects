require 'json'

begin

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

	puts resultado
	
rescue Exception => e
	
	log = Logger.new('log/log.txt')

	log.level = Logger::WARN

	log.error "error on json CLASS"

end