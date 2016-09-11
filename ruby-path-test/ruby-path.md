Write a function that provides change directory (cd) function for an abstract file system.

Notes:

Root path is '/'.
Path separator is '/'.
Parent directory is addressable as '..'.
Directory names consist only of English alphabet letters (A-Z and a-z).
For example:

path = Path.new('/a/b/c/d')
puts path.cd('../x').current_path
should display '/a/b/c/x'.

Note: The evaluation environment uses '\' as the path separator.
