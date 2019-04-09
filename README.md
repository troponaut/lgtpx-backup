# LogTex X Pro Backup utility

[![GitHub release](https://img.shields.io/github/release/0ceanic/lgtpx-backup.svg)](https://github.com/0ceanic/lgtpx-backup/releases) ![GitHub](https://img.shields.io/github/license/0ceanic/lgtpx-backup.svg)

A simple command line utility to backup the LogTen Pro X database.

## Installation

Easiest way to update is via [Homebrew](https://brew.sh/). After you install Homebrew, run the following command:

```sh
$ brew tap 0ceanic/oceanic
```

You can now install the utility using:.
```sh
$ brew install lgtpx-backup
```

## Requirements
LogTen Pro X **must** be installed.

**NOTE:** LogTen Pro 6 or older is not supported (yet!).


## Usage

The LogTen Pro X database is stored at:
`~/Library/Containers/com.coradine.LogTenProX/Data/Documents/`

To save a copy of the database to the user's Desktop type:

```sh
$ lgtpx-backup
```

Alternatively, if you want the backup to be saved in a different location run:

```sh
$ lgtpx-backup /path/to/destination
```


## License

Code is under the [The MIT License](LICENSE).
Documentation is under the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/).
