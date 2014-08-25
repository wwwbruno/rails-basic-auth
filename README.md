# Basic Auth with Ruby on Rails

This is a very simple script to use the authentication

## Do you wanna try this yourself?
Follow the command below and track the commits to check the manual code changes

### Create your application:
    rails new basic-auth

### Generate your Admin model:
    rails g model Admin name login password_digest
    
### Migrate your database:
    rake db:migrate
    
## Let's check if it works?

## Open the rails console and run this commands:
    rails c

### Create your user:
    Admin.create(name: 'Bruno Almeida', login: 'wwwbruno', password: '123456', password_confirmation: '123456')
  
### Try to authenticate with bad credentials:
    Admin.authenticate('wwwbruno','12345')

### Try to authenticate with good credentials (now it's ok!):
    Admin.authenticate('wwwbruno','123456')
    
### To close the rails console:
    ctrl + d
