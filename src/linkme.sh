#!/bin/bash
for path in *
do 
	if [ -d $path ];then
		pluginName=$path
	fi
done

if [  $pluginName ];then 
	cd $pluginName
	
	mkdir eclipse
	
	mv features eclipse/features
	mv plugins eclipse/plugins
	
	cd .. && cd ..
	
	if [ ! -e myplugins ];then
		mkdir myplugins
	fi
	
	cd myplugins
	
	if [ -d $pluginName ];then
		echo "[INFO] :"$pluginName" -  This plugin has install!"
	else
		cd ..
		mv linkme/$pluginName myplugins/$pluginName

		pluginPath=`pwd`/myplugins/$pluginName
	
		if [ ! -e links ];then
			mkdir links
		fi
		
		cd links
		
		touch $pluginName	
		echo "path="$pluginPath"/eclipse" > $pluginName
		echo "[SUCCESS] : "$pluginName" is installed!Complete! "	
	fi
else
	echo "[INFO ] : There is not plugin found to install!"
fi

read -n 1
