#!/usr/bin/python

"""
Script para limpeza de arquivos temporarios.
Autor: Breno Arosa      Data:12/2013
"""

import os

tmpList = ["*.pyc","*.o"]


for dirname, dirnames, filenames in os.walk('.'):
# print path to all subdirectories.
  for subdirname in dirnames:
    print ( "Limpando: " + os.path.join(dirname, subdirname)) 
    for tmp in tmpList:
      os.system('rm -fv '+ os.path.join(dirname, subdirname)+'/'+ tmp)
			
