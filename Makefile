COMP = docker compose
UP = up -d
DOWN = down -v
NUKE = down --rmi all -v --remove-orphans

DIR := $(word 2,$(MAKECMDGOALS))

up:
	@cd $(DIR) && $(COMP) $(UP)

down:
	@cd $(DIR) && $(COMP) $(DOWN)

nuke:
	@cd $(DIR) && $(COMP) $(NUKE)

%:
	@:
