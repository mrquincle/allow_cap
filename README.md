# Set capabilities

Run:

```
make
```

Or just inspect the Makefile and run the few commands yourself:

```
gcc -o allow_net_raw allow_net_raw.c -lcap-ng
sudo setcap 'cap_net_raw+p' ./allow_net_raw
```

Then you can use it in the following way for e.g. a Bluetooth LE scanner (which needs raw socket access to be able to scan for Bluetooth LE advertisements):

```
./allow_net_raw bluetooth-le-scanner
```

In this manner you do not have to give those permissions to this binary itself. That is very convenient if it is a tool that you are developing yourself and you would need to give capabilities every time after you have compiled the thing.

# Copyright

Code is from https://github.com/ContainerSolutions/capabilities-blog by Adrian Mouat. Check with him.


