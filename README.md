# HipcallDeepgram

[![Hex.pm Version](https://img.shields.io/hexpm/v/hipcall_deepgram)](https://hex.pm/packages/hipcall_deepgram)
[![Hex.pm Download Total](https://img.shields.io/hexpm/dt/hipcall_deepgram)](https://hex.pm/packages/hipcall_deepgram)

Unofficial Deepgram API Wrapper written in Elixir.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hipcall_deepgram` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:hipcall_deepgram, "~> 0.4.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/hipcall_deepgram>.

## Configuration

You can configure HipcallDeepgram in your mix config.exs (default $project_root/config/config.exs). 
If you're using Phoenix add the configuration in your config/dev.exs|test.exs|prod.exs files. 
An example config is:

```elixir
import Config

config :hipcall_deepgram,
  api_key: "your-api-key",
  # optional, useful if you want to do local integration tests using Bypass or similar
  # (https://github.com/PSPDFKit-labs/bypass), do not use it for production code,
  # but only in your test config!
  api_url: "https://api.deepgram.com/v1/"
```

## Configuration override

Client library configuration can be overwritten in runtime by passing a %HipcallDeepgram.Config{} 
struct as last argument of the function you need to use. For instance if you need to use a different 
api_key you can simply do:

```elixir
config_override = %HipcallDeepgram.Config{api_key: "f3034ef489524e48207d7f4b61ab1f0899e852fd"}
# pass the overriden configuration as last argument of the function
HipcallDeepgram.listen(audio_url, option, config_override)
```

## Usage overview

### listen endpoint

```elixir
iex> audio_url = "https://static.deepgram.com/examples/Bueller-Life-moves-pretty-fast.wav"
iex> option = [model: "base", language: "tr", punctuate: true, diarize: true, paragraphs: true, smart_format: true]
iex> HipcallDeepgram.listen(audio_url, option)
```

## Hipcall

All [Hipcall](https://www.hipcall.com/en-gb/) libraries:

- [HipcallDisposableEmail](https://github.com/hipcall/hipcall_disposable_email) - Simple library checking the email's domain is disposable or not.
- [HipcallDeepgram](https://github.com/hipcall/hipcall_deepgram) - Unofficial Deepgram API Wrapper written in Elixir.
- [HipcallOpenai](https://github.com/hipcall/hipcall_openai) - Unofficial OpenAI API Wrapper written in Elixir.
- [HipcallWhichtech](https://github.com/hipcall/hipcall_whichtech) - Find out what the website is built with.