module.exports = (robot) ->

  robot.hear /QB-([0-9]+)/ig, (res) ->
    matches = res.match
    if matches.length > 1
      msg = ["You just mentioned JIRA issues:"]
      matches.forEach (m) ->
        msg.push " - https://quesbook.atlassian.net/browse/#{m}"
      res.send msg.join('\n')
    else
      res.send "You just mentioned JIRA issue https://quesbook.atlassian.net/browse/#{matches[0]}"
