# hash_mining
Building distributed "mining" of BASE 64 SHA3 hash values

## Background
This all came about out of an effort to see what could be done with obsolete iOS devices.

Interestingly enough, the *most obsolete* device I was trying to use (an iPod Touch Gen 1) has thwarted my attempts at even loading the Google crypto libraries.

## What it does
This implements a sequential search of hash values whose base 64 encoding starts with a certain pattern (yes, that pattern is currently "FART").

Every device is given a "block" of one million numbers to append to an initial string for its search.
Since this is ultimately a random search of hashes, a worker dropping out doesn't really lose anything but its further contributions to the mining effort.

## How to run
`bundle install`

run `bin/hash_mining` and point to `http://youraddress:4567/` on as many devices as you want to help "mine"
