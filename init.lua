local markdown_guide = [[
# CTF Guide Title Goes Here

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
