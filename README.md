# Haxe Aseprite API
> Aseprite API written in Haxe for creating Aseprite scripts with the Haxe programming language.

> Created by KinoCreatesGames

### Software: [Aseprite](https://www.aseprite.org/)

### Documentation: [Aseprite Documentation](https://github.com/aseprite/api)

## Dependencies
> To work with Haxe Lua code please follow the instructions [here](https://haxe.org/manual/target-lua.html) in the "Getting started with Haxe/Lua" section.

## Features

* Access to all API functions
* Intellisense/Autocomplete for writing Lua Aseprite API code.
* Type safe
* Compile's to Lua 
* Leverage Haxe language when writing Lua code.

## Example Code

```js
//Creates an altert within the application.
App.alert({
		title: "Haxe Warning",
		text: "This is a warning from Haxe",
});
```

```js
// Starting the sprite sheet exporter.
App.command.ExportSpriteSheet();
```

Note: When compiling, always compile in vanilla mode. `-D lua-vanilla`

for any changes to the API, please raise a pull request.

