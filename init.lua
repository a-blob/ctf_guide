local markdown_guide = [[
# Minetest Capture the Flag Guide
### Basics
Click the opposite team's flag to take it. Click your team's flag before the enemy takes in order to to capture.

### Modes
CTF cycles through three modes: Classes, Nade Fight, and Classic. 

1. In Classes, right click your team's flag to change classes. Reading each class' weapon description is helpful.
2. In Nade Fight, right click your grenade to switch between three types of nade.
3. In Classic, eat apples to heal and find ores to craft better swords.

### Tips & Tricks
1. Start your messages with /t to talk to your team.
2. Eat apples to quickly restore your health.
3. Sprint by pressing the fast key (E).
4. Use /r to check your rank.
6. Use /m to add a team marker at pointed location.
7. Use /s to check the current and previous match summary.
8. Use /top50 to see the leaderboard.
9. Use /team to check all team members.
10. Press sneak while jumping to jump up two blocks.
11. Use /donate <player> <score> to donate score to a player.
12. Use /lb to see a list of bountied players.
13. Use /msg <player> to send a PM to a player.
]]


sfinv.register_page("ctf_guide:guide", {
    title = "Guide",
    get = function(self, player, context)
        local formspec_guide = md2f.md2f(0.3, 0, 8, 10, markdown_guide)
        return sfinv.make_formspec(player, context, formspec_guide, false)
    end
})
