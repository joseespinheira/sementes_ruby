
     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 


Welcome to your Rails project on Cloud9 IDE!

To get started, just do the following:

1. Run the project with the "Run Project" button in the menu bar on top of the IDE.
2. Preview your new app by clicking on the URL that appears in the Run panel below (https://HOSTNAME/).

Happy coding!
The Cloud9 IDE team


## Support & Documentation

Visit http://docs.c9.io for support, or to learn more about using Cloud9 IDE. 
To watch some training videos, visit http://www.youtube.com/user/c9ide

Instruções e esplicações:

cria o controlador do usuario:
- rails generate controller Users new

Definindo os atributos do usuario na tabela de cadastro:
- rails generate model User nome:string email:string

Migrando(criando) as definições para o banco de dados:
- rake db:migrate

Colocando a senha na tabela do usuario:
- rails generate migration add_password_digest_to_users password_digest:string

depois o rake db:migrate
Foi feito isso por conta do segurança de uma senha criptografada.

Fazendo indexação do email para quando for pesquisar no banco de dados o e-mail do usuario seja mais rapido:
- rails generate migration add_index_to_users_email

depois o rake db:migrate
Agora foi feito alterações no controlador do usuario.

Criado a view do cadastro.
Criado a rota do usuario.

Criando variavel sessão que ja o controle do usuario:
- rails generate controller Sessions new

Criado a rota da sessão.

Criado tela de login: 
    app/views/sessions/new.html.erb
    
Criado o helper:
    app/helpers/sessions_helper.rb

Incluindo o helper no controlador:
    app/controllers/application_controller.rb

E é definido no helper a acao de login e logout.

daí em diante é só layout.
tuturial pego em:
- https://www.devmedia.com.br/ruby-on-rails-implementando-autenticacao-de-usuario/32124
 







