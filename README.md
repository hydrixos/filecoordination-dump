# filecoordination-dump
A simple tool dumping active NSFilePresenters / NSFileCoordinators. Just build and run "filecoordination-dump" as root.

## Catalina
This tool is no longer needed on macOS 10.15+. To get a dump of all file coordinators, you can now use:

```
fileproviderctl coordinate -e
```
