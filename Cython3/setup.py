# python3 setup.py build_ext --inplace
from distutils.core import setup
from Cython.Build import cythonize

setup(name='PI Count app',
      ext_modules=cythonize("pi.pyx"))