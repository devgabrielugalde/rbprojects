FROM ruby:2.3

# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./

# Instala as Gems
RUN bundle install

# Copia nosso código para dentro do container
COPY . . 

# Roda nosso servidor
CMD ruby app.rb
EXPOSE 1001