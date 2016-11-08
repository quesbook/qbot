module.exports = (robot) ->

  robot.hear /QB-([0-9]+)/ig, (res) ->
    matches = res.match
    if matches.length > 1
      res.send "You just mentioned JIRA issues:"
      matches.forEach (m) ->
        res.send " - https://quesbook.atlassian.net/browse/#{m}"
    else
      res.send "You just mentioned JIRA issue https://quesbook.atlassian.net/browse/#{matches[0]}"


