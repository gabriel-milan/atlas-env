# ATLAS Environment Generator

STOP CRYING!

Not everything should be hard on the Ringer group.

On this repo you'll find a shell script (developed for Debian based machines/containers) that sets everything up for you!

Usage is very simple:

```
generate_envs.sh - Script for virtualenv generation for ATLAS/Ringer users
 
./generate_envs.sh [options]
 
options:
-h, --help                show this message
--raw                     generates a raw virtual environment
--pip                     installs pip packages on requirements.txt
--saphyra                 installs the Saphyra framework
--root                    installs ROOT framework
--prometheus              install the Prometheus framework
```

And then all you have to do is

```
source atlas_env/bin/activate
```

And you're done!