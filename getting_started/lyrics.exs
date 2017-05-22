defmodule Sample.Lyrics do
    def lyrics(), do: lyrics(100..1)
    def lyrics(first..last) when first <= last,
        do: get_sentence(first)
    def lyrics(first..last),
        do: get_sentence(first) <> lyrics(first - 1..last)
end