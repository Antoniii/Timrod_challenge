# "И да будет [Nim](https://nim-lang.org/docs/manual.html) и пророк его [nimpy](https://github.com/yglukhov/nimpy) # (но пока только для v0.17)!"

***

## Результаты расчёта $\pi$:

All Time Pi:


Python 2.7.16:

8581 millisecond, 994 microseconds, and 212 nanoseconds

Python 3.6.8:

444 millisecond, 855 microseconds, and 187 nanoseconds

PyPy 7.3.0 (Python 3.6.9):

2111 millisecond, 65 microseconds, and 596 nanoseconds

Cython:

1870 millisecond, 156 microseconds, and 94 nanoseconds (Python2)

268 millisecond, 944 microseconds, and 210 nanoseconds (Python3)

1772 millisecond, 721 microseconds, and 635 nanoseconds (PyPy3)

Numba (Python3):

1426 millisecond, 765 microseconds, and 288 nanoseconds

[Chudnovsky2: Time 981.71 ms vs. Time 3.941 ms (Python3)]

Nim:

1 millisecond, 254 microseconds, and 613 nanoseconds

***

### Источники для вдохновения:
* [Учебное пособие по Nim (часть 1)](https://habr.com/ru/post/271197/)
* [Что такого особенного в Nim?](https://habr.com/ru/post/258119/)
* [Cython Book](http://www.jyguagua.com/wp-content/uploads/2017/03/OReilly.Cython-A-Guide-for-Python-Programmers.pdf)
* [Cython Tutorial](http://docs.cython.org/en/latest/src/tutorial/cython_tutorial.html)
* [Cython: более чем 30-кратное ускорение Python-кода](https://habr.com/ru/company/ruvds/blog/462487/)
* [Python (+numba) быстрее Си — серьёзно?!](https://habr.com/ru/post/484136/)
* [PyPy](https://www.pypy.org/download.html)


