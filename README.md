# HipcallDeepgram

Unofficial Deepgram API Wrapper written in Elixir.

## Examples

    iex> audio_url = "https://static.deepgram.com/examples/Bueller-Life-moves-pretty-fast.wav"
    iex> option = [model: "base", language: "tr"]
    iex> HipcallDeepgram.listen(audio_url, option)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hipcall_deepgram` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:hipcall_deepgram, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/hipcall_deepgram>.

## Hipcall

All Hipcall libraries:

- [HipcallDisposableEmail](https://github.com/hipcall/hipcall_disposable_email) - Simple library checking the email's domain is disposable or not.
- [HipcallDeepgram](https://github.com/hipcall/hipcall_deepgram) - Unofficial Deepgram API Wrapper written in Elixir.