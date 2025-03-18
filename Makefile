# Description: Makefile for nixos

CLASS=rogue

.PHONY=nixos-rebuild-rogue
nixos-rebuild-rogue:
	@make nixos-rebuild CLASS=rogue

.PHONY=nixos-rebuild-berserker
nixos-rebuild-berserker: 
	@make nixos-rebuild CLASS=berserker

.PHONY=nixos-rebuild
nixos-rebuild:
	sudo nixos-rebuild switch --upgrade --flake ~/nixos/#${CLASS} --impure

.PHONY=collect-garbage
collect-garbage:
	sudo nix-collect-garbage -d
