local markdown_guide = [[
# Capture the Flag Guide

### Basics
* Click the opposite team's flag to take it. Click your team's flag before the enemy takes in order to to capture.
* Each team has a team chest; put useful items in there and **never** take more than you need!

### Modes
* CTF cycles through three modes: Classes, Nade Fight, and Classic. 

* In Classes, right click your team's flag to change classes. It's helpful to read the description of the items your class is given.
* In Nade Fight, right click your grenade to switch between three types of nade.
* In Classic, eat apples to heal and find ores to craft better swords.

### Tips & Tricks
* Press sneak while jumping to jump up two blocks.
* Start your messages with /t to talk to your team.
* Sprint by pressing the fast key (E).
* Use /r to check your rank.
* Use /m to add a team marker at pointed location.
* Use /s to check the current and previous match summary.
* Use /top50 to see the leaderboard.
* Use /team to check all team members.
* Use /donate <player> <score> to donate score to a player.
* Use /lb to see a list of bountied players.
* Use /msg <player> to send a PM to a player.

]]


sfinv.register_page("ctf_guide:guide", {
    title = "Guide",
    get = function(self, player, context)
        local formspec_guide = md2f.md2f(0.3, 0, 8, 10, markdown_guide)
        return sfinv.make_formspec(player, context, formspec_guide, false)
    end
})
