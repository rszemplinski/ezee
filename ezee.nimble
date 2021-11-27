# Package

version       = "0.1.0"
author        = "Ryan Szemplinski"
description   = "A new awesome nimble package"
license       = "ISC"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["ezee"]


# Dependencies

requires "nim >= 1.6.0"
requires "argparse >= 2.0.1"