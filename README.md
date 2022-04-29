# csv2tables

## Requierd stuff:

* Git
* VSCode (or another editor)
* haskell stack. Installation instructions can be found here: https://docs.haskellstack.org/en/stable/README/

## Clone the software locally:
```.bash
git clone https://github.com/hanjoosten/csv2tables.git
cd csv2tables
```

## Execute
* Copy your version of basinfo.csv onto the existing one in the root directory. This is the input for the program. 
* Run `stack run` to build the executable and generate the required goodies. This might take some time the first time, it will end with somehting like:

~~~
Configuring csv2tables-0.1.0.0...
csv2tables> build (lib + exe)
Preprocessing library for csv2tables-0.1.0.0..
Building library for csv2tables-0.1.0.0..
Preprocessing executable 'csv2tables' for csv2tables-0.1.0.0..
Building executable 'csv2tables' for csv2tables-0.1.0.0..
csv2tables> copy/register
Installing library in D:\git\csv2tables\.stack-work\install\66bfb689\lib\x86_64-windows-ghc-8.6.5\csv2tables-0.1.0.0-34aHz08mSCvFMi25pEpZjk
Installing executable mkFileList in D:\git\csv2tables\.stack-work\install\66bfb689\bin
Installing executable csv2tables in D:\git\csv2tables\.stack-work\install\66bfb689\bin
Registering library for csv2tables-0.1.0.0..
Number of tables: 96
~~~

All generated stuff will be available in the directory `migratieScripts`. Normally the generated files will be unchanged. Only when the structure of the tables and/or attributes in the Bas tables have changed, this will effect the generated files. In normal circumstances, that should not happen. 

Check to see if there are changes of the structure. If there are no changes, you're fine. Else, panic!