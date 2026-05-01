# Assembly Code

Classic algorithms implemented in two assembly languages used in Computer Engineering coursework: **MIPS** (academic standard, simulated in MARS/SPIM) and **Nios II** (Altera/Intel FPGA soft-core).

## Repository structure

```
.
├── mips/    # MIPS assembly — simulated in MARS / SPIM
└── nios2/   # Nios II assembly — runs on Altera FPGA boards
```

## Algorithms

| Algorithm | MIPS | Nios II | Description |
| --- | --- | --- | --- |
| Bubble sort | [`mips/bubble_sort.asm`](mips/bubble_sort.asm) | [`nios2/bubble_sort.s`](nios2/bubble_sort.s) | In-place sorting of an integer vector |
| Factorial | [`mips/factorial.asm`](mips/factorial.asm) | [`nios2/factorial.s`](nios2/factorial.s) | Recursive `n!` |
| Fibonacci | [`mips/fibonacci.asm`](mips/fibonacci.asm) | [`nios2/fibonacci.s`](nios2/fibonacci.s) | Recursive Fibonacci sequence |
| Power | [`mips/power.asm`](mips/power.asm) | [`nios2/power.s`](nios2/power.s) | Exponentiation `a^n` |
| Primes | [`mips/primes.asm`](mips/primes.asm) | [`nios2/primes.s`](nios2/primes.s) | Prime-number generator |

## Running the MIPS programs

The MIPS sources are compatible with **MARS** and **SPIM**.

### MARS (MIPS Assembler and Runtime Simulator)

1. Download MARS from the [MARS project page](http://courses.missouristate.edu/KenVollmar/MARS/).
2. Open the `.asm` file from `mips/`.
3. Press **F3** to assemble, then **F5** to run.
4. Edit the input value (e.g. `li $a0, 7` for Fibonacci) and reassemble before running again.

## Running the Nios II programs

The Nios II sources target an Altera/Intel FPGA board with a Nios II soft-core CPU and a UART mapped at address `0x860`. They were tested on Altera DE-series boards using the **Monitor Program** from the Altera University Program.

1. Open the Altera/Intel FPGA Monitor Program.
2. Create a new project targeting the Nios II processor on your board.
3. Add a `.s` file from `nios2/` as the source.
4. Compile, load and run; interact via the UART terminal pane.

## Authors

- **João Paulo**
- **Allen Hichard** ([@AllenHichard](https://github.com/AllenHichard))

Originally developed in 2017 as part of the Computer Engineering coursework at the State University of Feira de Santana (UEFS).

## License

Released under the [MIT License](LICENSE).
