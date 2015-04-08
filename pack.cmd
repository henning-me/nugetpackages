@ECHO PACKING...
del *.nupkg
cd ncrunch-vs2015
cpack
mv *.nupkg ..
cd ..
cd ncrunch2.gridnodeserver
cpack
mv *.nupkg ..
cd ..
cd ncrunch2.vs2012
cpack
mv *.nupkg ..
cd ..
cd ncrunch2.vs2013
cpack
mv *.nupkg ..
cd ..
@ECHO Now sending?
@ECHO choco push *.nupkg