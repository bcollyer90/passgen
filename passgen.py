#!/usr/bin/python3.10

import string
import random
import click


def no(x: int, y: int) -> int:
    return int(random.randint(x, y))


@click.command()
@click.option("-n", default=16, help="Length of password")
def gen(n: int) -> None:
    p = ""
    for _ in range(n):
        match no(0, 2):
            case 0:
                x = no(0, 9)
            case 1:
                x = no(10, 36)
            case 2:
                x = no(37, 61)
        p += string.printable[x]
    click.echo(str(p))


if __name__ == '__main__':
    gen()
