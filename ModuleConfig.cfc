component {

  this.title = "GIPHY GIF API";
  this.author = "Matthew J. Clemente";
  this.webURL = "https://github.com/mjclemente/giphy.cfc";
  this.description = "A wrapper for the GIPHY GIF API";

  function configure(){
    settings = {
      apiKey = '', // Required
      baseUrl = "https://api.giphy.com/v1", // Default value in init
      includeRaw = false // Default value in init
    };
  }

  function onLoad(){
    binder.map( "giphy@giphycfc" )
      .to( "#moduleMapping#.giphy" )
      .asSingleton()
      .initWith(
        apiKey = settings.apiKey,
        baseUrl = settings.baseUrl,
        includeRaw = settings.includeRaw
      );
  }

}