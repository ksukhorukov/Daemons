# Daemons

I will create daemons from time to time...

# Run

Go to the directory of the daemon and type the following command:

```
./run
```

# How To Daemonize

How to daemonize process? Just add '&' (ampersand) sign to the end of the command:

```
user@air base_daemon $ ./run > /dev/null &
[1] 1805
```

Thats it! Now daemon is working... silently... writing all info to the 'logs.txt' by default

# How To Get Back The Daemon From The Shadows To The Face Of Light

Just use 'fg' command

```
fg
user@air base_daemon $ fg
[1]  + running    ./run > /dev/null
```

# How To Kill The Daemon

There are several ways.

The first one - use kill command:

```
kill -9 1805
```

Or press [b]Ctrl + C[/b] command when you fetched the daemon to the foreground

# Currently Available Daemons 

## Base Daemon

[Each second writes the timestamp to the log file](https://github.com/ksukhorukov/Daemons/tree/master/base_daemon)

# [EOF]









