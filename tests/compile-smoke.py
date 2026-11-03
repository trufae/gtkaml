#!/usr/bin/env python3
"""Compile markup without a display and verify out-of-tree output and cleanup."""

import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile


compiler, *arguments, fixture = sys.argv[1:]
compiler = str(Path(compiler).resolve())
fixture = Path(fixture).resolve()
with tempfile.TemporaryDirectory(prefix="gtkaml-smoke-") as directory:
    root = Path(directory)
    source = root / "source" / "nested" / fixture.name
    source.parent.mkdir(parents=True)
    shutil.copyfile(fixture, source)
    output = root / "output"
    output.mkdir()
    environment = {**os.environ, "G_DEBUG": "fatal-criticals"}
    subprocess.run(
        [compiler, *arguments, "-C", "-d", str(output), str(source)],
        cwd=root,
        env=environment,
        check=True,
    )
    assert (output / (fixture.stem + ".c")).is_file(), "missing generated C source"
    object_file = output / (fixture.stem + ".vala.o")
    subprocess.run(
        [compiler, *arguments, "-c", "-d", str(output), str(source)],
        cwd=output,
        env=environment,
        check=True,
    )
    assert object_file.is_file(), "missing compiled object"
    assert not (output / (fixture.stem + ".vala")).exists(), "Vala temporary was not removed"
    assert list(source.parent.iterdir()) == [source], "generated files entered the source tree"
