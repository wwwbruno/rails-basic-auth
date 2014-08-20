# Basic Auth with Ruby on Rails

This is a very simple script to use the authentication

## Do you wanna try this yourself?

### Create your application:
    rails new basic-auth

### Generate your Admin model:
    rails g model Admin name login password_digest
    
### Migrate your database
    rake db:migrate
    
## Let's check if it works?

### Create your user
  Admin.create(name: 'Bruno Almeida', login: 'wwwbruno', password: '123456', password_confirmation: '123456')
  
### Try to authenticate with bad credentials
  Admin.authenticate('wwwbruno','12345')

### Try to authenticate with good credentials (now it's ok!)
  Admin.authenticate('wwwbruno','123456')
