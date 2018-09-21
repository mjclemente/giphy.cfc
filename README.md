# giphycfc
A CFML wrapper for the [GIPHY API](https://developers.giphy.com/docs/).
Search GIFs, translate to GIF, and more GIF goodness with GIPHY's API

This is a very early stage API wrapper. *Feel free to use the issue tracker to report bugs or suggest improvements!*

### Acknowledgements

This project borrows heavily from the API frameworks built by [jcberquist](https://github.com/jcberquist), such as [xero-cfml](https://github.com/jcberquist/xero-cfml) and [aws-cfml](https://github.com/jcberquist/aws-cfml). Because it draws on those projects, it is also licensed under the terms of the MIT license.

## Table of Contents

- [Quick Start](#quick-start)
- [`giphycfc` Reference Manual](#reference-manual)
- [Questions](#questions)
- [Contributing](#contributing)

## Quick Start
Looking to quickly search for some gifs; here it is.

```cfc
giphy = new giphy.giphy( apiKey = 'xxx' );

turtlegifs = giphy.gifsSearchGet( q = 'turtle' ).data;

writeDump( var='#turtlegifs#' );
```

## Reference Manual

#### `gifsSearchGet( required string q, numeric limit = 0, numeric offset = 0, string rating, string lang, string fmt = 'json')`
Search all GIPHY GIFs for a word or phrase.

# Questions
For questions that aren't about bugs, feel free to hit me up on the [CFML Slack Channel](http://cfml-slack.herokuapp.com); I'm @mjclemente. You'll likely get a much faster response than creating an issue here.

# Contributing
:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

Before putting the work into creating a PR, I'd appreciate it if you opened an issue. That way we can discuss the best way to implement changes/features, before work is done.

Changes should be submitted as Pull Requests on the `develop` branch.
