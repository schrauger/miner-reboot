# Miner Reboot

For use with the Sentry Switched CDU, a networked power distribution unit with individually controllable outlets.

This bash script connects to a networked PDU to run a reboot command on a subset group of outlets.

This is needed because the production PDU has an extremely limited ssh connection which can't accept remote commands. Thus, we use `sshpass` to open an interactive shell, and we use `expect` statements to manually send commands and check outputs.

To setup, create the `switch_host.txt` and `switch_password.txt` files.

# Running

`./miner-reboot name_of_outlet_group`

Run the script, and pass in the name of the switch or group of switches you want to reboot. Note: you must have these names already defined within the switch's configuration.
