// Generated by CoffeeScript 2.0.2
(function() {
  var DiscordEvents;

  DiscordEvents = class DiscordEvents {
    constructor(discord) {
      var generalChannel;
      generalChannel = discord.channels.find('name', 'generalChannel');
      discord.on("guildMemberAdd", function(member) {
        var msg;
        msg = `**${member.user.username}**  has joined the server! 👋`;
        return generalChannel.send(msg).then(console.log(msg)).catch(console.error);
      });
    }

  };

  module.exports = DiscordEvents;

}).call(this);

//# sourceMappingURL=discord-events.js.map
