welcomer-for = (room) ->
  {
    'general': \chrisvfritz
    'devops': \davin
    'ruby': \atomaka
    'javascript': \leo
    'mobile': \leo
    'java': \lucidmachine
  }[room]

module.exports = (robot) !->

  robot.enter (message) !->

    room = message.envelope.user.room
    user = message.envelope.user.name
    welcomer = welcomer-for room

    if welcomer?
      robot.message-room '@' + welcomer, "#{user} just joined #{room} - just giving you a heads up so they can receive a warm welcome :-)"
