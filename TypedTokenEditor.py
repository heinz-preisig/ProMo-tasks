#!/usr/bin/python3
# encoding: utf-8

"""
===============================================================================
 APP for editing the typed token lists and conversions
===============================================================================


"""

__project__ = "ProcessModeller  Suite"
__author__ = "PREISIG, Heinz A"
__copyright__ = "Copyright 2015, PREISIG, Heinz A"
__since__ = "2009. 04. 17"
__license__ = "GPL planned -- until further notice for Bio4Fuel & MarketPlace internal use only"
__version__ = "6.00"
__email__ = "heinz.preisig@chemeng.ntnu.no"
__status__ = "beta"

# __docformat__ = "restructuredtext en"

import os
import sys

from PyQt4 import QtGui

from OntologyBuilder.TypedTokenEditor.editor_typed_token_impl import Ui_TokenEditor

root = os.path.abspath(os.path.join(".."))
sys.path.extend([root, os.path.join(root, 'packages'), os.path.join(root,'tasks')])
# cwd = os.getcwd()
# sys.path.append(cwd)

if __name__ == '__main__':
  a = QtGui.QApplication(sys.argv)
  # a.setWindowIcon(QtGui.QIcon("./Common/icons/oe.png"))
  w = Ui_TokenEditor()
  w.show()
  r = a.exec_()
  sys.exit(r)
