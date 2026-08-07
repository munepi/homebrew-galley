# Galley Homebrew Tap

This repository contains the official cask for [Galley](https://github.com/munepi/Galley),
a lightweight macOS PDF previewer with SyncTeX support.

> [!NOTE]
> Under construction — this tap goes live with Galley v0.4. Hang tight!
>
> The cask here is ready except for the release checksum, which gets filled in
> the moment v0.4 ships. That release also brings the `galleypdf` command:
> a compiled front end, bundled inside the app, that opens PDFs, drives SyncTeX
> forward search, and reloads the viewer straight from your shell or editor.
>
> Until then, grab the signed and notarized `.dmg` or `.pkg` from
> [Releases](https://github.com/munepi/Galley/releases). Watch or star
> [munepi/Galley](https://github.com/munepi/Galley) to hear about it first.

## Install

~~~bash
brew install --cask munepi/galley/galley
~~~

That installs `GalleyPDF.app` into `/Applications` and links the bundled
command line front end onto your `PATH`:

~~~bash
galleypdf --help
galleypdf paper.pdf
galleypdf reload
galleypdf displayline -g 120 paper.pdf paper.tex
~~~

`galleypdf` lives inside the app bundle at
`GalleyPDF.app/Contents/MacOS/bin/galleypdf`, so it behaves the same whether
you installed Galley through Homebrew, the `.pkg` installer, or a source build.

## Upgrade and uninstall

~~~bash
brew upgrade --cask galley
brew uninstall --cask galley
brew uninstall --zap --cask galley   # also removes preferences and caches
~~~

Galley updates itself through Sparkle as well, so the cask is declared with
`auto_updates true`. Both paths land on the same build.

## Requirements

* macOS 11.0 (Big Sur) or later
* Galley 0.4 or later (earlier releases shipped a `.pkg` payload and no `galleypdf` command)

## Maintenance

After publishing a new Galley release, refresh the cask with:

~~~bash
bin/bump-cask 0.5
~~~

The script downloads the release disk image, recomputes its SHA-256, and
rewrites `Casks/galley.rb`.

## License

This program is licensed under the terms of BSD 3-Clause. See `LICENSE`.

--------------------

Munehiro Yamamoto
https://github.com/munepi
