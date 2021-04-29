# This file will add a particular string to the start of the all file name with a particular 
# extension in the current working directoy. The renamed files are stored in renamedFiles folder.
# This is just one of the many ways, this can be done. 
# @Author: Nabajeet Barman, n.barman@ieee.org
fileExtension='.csv' 		# extension of the files to be renamed.
fileString='FilePrefix' 	# string to be added to the start of the file names 
mkdir renamedFiles		# output directoy name, change it to any folder name you want to store your renamed files.
for FILENAME in *${fileExtension}; do cp $FILENAME renamedFiles/${fileString}_$FILENAME; done

# Alternatively, if you want to overwrite the existing file(s), use the command below (make sure to comment the above command)
#for FILENAME in *${fileExtension}; do mv $FILENAME ${fileString}_$FILENAME; done

# For renaming all files in the folder irrespective of the extension, use the below command
#for FILENAME in *; do mv $FILENAME ${fileString}_$FILENAME; done
