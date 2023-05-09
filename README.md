# lab-riscv-asm
Пятлин Артём
Вариант 5

Задание:
Найти сумму элементов строки с заданным номером. (N = 4, M = 4)

RISCV.S - программа на RISC-V ASM
Source.c - программа на Си
file_dump.dump - дамп-файл программы на Си

В терминале необходимо ввести:
(все пути необходимо поменять на соответсвующие пути для других пользователей)

export PATH=/home/dev/GUEST_SHARE/riscv-gcc-10.2.0-gbbc9263-210318T1412/bin:$PATH
riscv64-unknown-elf-gcc -march=rv32i -O3 -mabi=ilp32 /home/dev/GUEST_SHARE/Lab1/Source.c -o /home/dev/GUEST_SHARE/Lab1/file_elf.elf
riscv64-unknown-elf-objdump -D /home/dev/GUEST_SHARE/Lab1/file_elf.elf > /home/dev/GUEST_SHARE/Lab1/file_dump.dump
