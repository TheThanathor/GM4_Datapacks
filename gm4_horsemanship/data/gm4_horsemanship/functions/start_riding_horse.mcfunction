# process a player that just mounted a horse with gm4_horse tag (or equivalent)
# @s = player riding the horse
# at @s
advancement revoke @s only gm4_horsemanship:start_riding_horse
say mounted

execute on vehicle run function gm4_horsemanship:riding/initialize
