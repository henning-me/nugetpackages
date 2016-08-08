@ECHO PACKING...
del *.nupkg
cd ncrunch-vs2015
cpack
move *.nupkg ..
cd ..
cd ncrunch-gridnodeserver
cpack
move *.nupkg ..
cd ..
cd ncrunch-vs2012
cpack
move *.nupkg ..
cd ..
cd ncrunch-vs2013
cpack
move *.nupkg ..
cd ..
@ECHO Now sending?
@ECHO choco push *.nupkg