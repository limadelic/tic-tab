global.p = (x) -> console.log JSON.stringify x

module.exports =

  header: (data) ->
    return unless data
    data = _.pairs data
    half = data.length / 2 + 1
    data = _.zip data[0...half], data[half..]
    _.map data, _.compact