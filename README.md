# hello_delivery

Quick intro to using the delivery cli

## Install [delivery-cli](https://github.com/chef/delivery-cli)

* Download the `rustup.sh` file https://static.rust-lang.org/rustup.sh
* `rustup.sh --date=2015-03-23 --channel=nightly`
* `cargo test`
* `cargo build --release`
* Add the release directory to your path (delivery-cli/target/release)

## Create a cookbook

* `chef generate cookbook hello_delivery`

## Configure Delivery
from within the hello_delivery cookbook
* `delivery setup --user=none --server=none.io --ent=none --org=none`
* create a `.delivery/config.json` file

## Local Testing
* `delivery job verify syntax`
