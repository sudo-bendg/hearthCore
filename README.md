# hearthCore

The core services required for my hearth homelab api ecosystem. I have tried (and semi-failed) multiple times to reinvent the wheel and create an api gateway with dynamic routing in the past, under different iterations of the name "hearth gateway". I realise now, this was daft. This functionality is quite simply provided by using a reverse proxy like Nginx - as developers have been doing for over 20 years now.

As such, my plan is to ake my life easier and use Nginx. I will spin this up, along with some other useful services like a database and an Ollama model in a Docker Compose file.