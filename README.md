# HintPathOverwrite

HintPathOverwrite is a MSBuild script which dynamically changes the HinPath of references matching a specific pattern.

## Why
Well…have you ever worked with NuGet packages?

### Problem
By default, NuGet stores installed packages in a directory called *packages*. NuGet creates such a directory for each project.
If you have a project which uses NuGet packages and is referenced from multiple solutions, this will cause problems.

*Packages added to the project from solution1 will be stored under solution1\packages, packages added to the project from solution2 will be stored under solution2\packages.
This means you can’t build solution1 without restoring the packages of solution2 or vice versa.*

## How to use

Install the NuGet package:
**Install-Package HintPathOverwrite**

The default pattern is *(?i)^(.+\\)?_GlobalPackages\\*. You can overwrite this pattern with your own by specifying the **HintPathPackageDirPattern** property.

By default, the HintPath will be changed to *[CurrentDrive]\_git\_GlobalPackages\[PackageId]*.
You can overwrite the package directory by specifying the **PackagesDirectoryAbsolute** property.


