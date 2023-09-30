# filecoordination-dump
A simple tool dumping active NSFilePresenters / NSFileCoordinators. Just build and run "filecoordination-dump" as root.

## Catalina
This tool is not needed on macOS 10.15+ up to macOS 14. To get a dump of all file coordinators, you can now use:

```
fileproviderctl coordinate -e
```

On macOS 14 this command will fail without an error. It's still unclear why, but in this case you can use `filecoordination-dump` on macOS 14.
