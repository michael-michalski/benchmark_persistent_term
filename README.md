# BenchmarkPersistentTerm

https://erlang.org/doc/man/persistent_term.html

```
Operating System: Linux
CPU Information: Intel(R) Core(TM) i7-7820HQ CPU @ 2.90GHz
Number of Available Cores: 8
Available memory: 31.34 GB
Elixir 1.10.2
Erlang 22.3.2

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 21 s

Benchmarking :persistent_term.get...
Benchmarking Application.fetch_env!...
Benchmarking System.get_env...

Name                             ips        average  deviation         median         99th %
:persistent_term.get         25.58 M       39.09 ns  ±1083.89%          28 ns         105 ns
Application.fetch_env!        3.68 M      271.67 ns  ±5645.43%         204 ns         549 ns
System.get_env                2.08 M      481.78 ns  ±4130.15%         327 ns         708 ns

Comparison:
:persistent_term.get         25.58 M
Application.fetch_env!        3.68 M - 6.95x slower +232.58 ns
System.get_env                2.08 M - 12.33x slower +442.69 ns

```
