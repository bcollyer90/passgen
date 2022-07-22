module main

import rand
import flag
import os

fn get_random_char() string {
        text := '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
        r := rand.choose<string>(text.split(''), 1) or { [text.split('')[0]] }
        return r[0]
}

fn main() {
        mut fp := flag.new_flag_parser(os.args)
        fp.skip_executable()
        n := fp.int('n', 0, 16, 'Length of password')
        mut p := ''
        for _ in 0 .. n {
                p += get_random_char()
        }
        println(p)
}