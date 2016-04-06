module.exports = (robot) ->

  robot.hear /QB-([0-9]+)/i, (res) ->
    res.send "You just mentioned this Jira issue: https://quesbook.atlassian.net/browse/QB-#{res.match[1]}"
