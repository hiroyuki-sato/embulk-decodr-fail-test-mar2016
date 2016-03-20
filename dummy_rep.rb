#!/usr/bin/env ruby

path = File.expand_path("../dummy.txt",__FILE__)
dummy = File.read(path)

1.upto(400_000){ puts dummy }
