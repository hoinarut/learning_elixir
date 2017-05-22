defmodule Sample.Enum do    
    import Kernel, except: [length: 1]

    def first([]), do: nil
    def first([head | tail]), do: head

    def map([],_), do: []
    def map([head | tail], f),
        do: [f.(head) | map(tail, f)]

    def length([]), do: 0
    def length([_ | tail]),
        do: 1 + length(tail)

    def other_map([head | tail], f),
        do: other_map(tail, f, [f.(head)])
    def other_map([], _, result),
        do: result
    def other_map([head | tail], f, result),
        do: other_map(tail, f, [f.(head) | result])

    def other_length([_ | tail]),
        do: other_length(tail, 1)
    def other_length([],len),
        do: len
    def other_length([_ | tail], len),
        do: other_length(tail, len + 1)
end