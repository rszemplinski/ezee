# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import os
import argparse

var p = newParser:
  flag("-a", "--apple")
  flag("-b", help = "Show a banana")
  option("-o", "--output", help = "Output to this file")
  arg("name")
  arg("others", nargs = -1)

when isMainModule:
  try:
    var opts = p.parse(commandLineParams())
  except ShortCircuit as e:
    if e.flag == "argparse_help":
      echo p.help
      quit(1)
  except UsageError:
    stderr.writeLine getCurrentExceptionMsg()
    quit(1)
