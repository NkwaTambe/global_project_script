#!/bin/bash

echo "Enter the name of your project: "
read project_name

echo "i will create a directory called $project_name to make you work easier "
mkdir -p $project_name

echo "Enter your project type, be it python or bash"
read project_type

if [[ "$project_type" == "python" ]]; then
       echo "how do you want to name your python file ? :"
       read python_file
       touch "$project_name/$python_file.py"
       echo "creating your python virtual_environtment "
       echo "*******************************************"
       python -m venv  "$project_name/python_venv"
       echo "cat into your README.md file to see guide lines on how to run you python script "
cat << EOF > "$project_name/README.md"
GENERAL SETUP GUIDE FOR PROJECT.
echo ""
----Ensure all your python files are in thesame folder
----Ensure to activate your already created virtual environtment using the command : ( source "$project_name/python_venv"/bin/activate )
----Ensure to create a requirements.txt that contains all your libraries installed in them
----Ton install libraries, use the ( pip install <name of libraries> ) command
----Make your script globally accessible and test from various locations in the system
echo ""
MAKING YOUR SCRIPTS TO BE GLOBALLY ACCESSIBLE
echo ""
1-- Ensure directory to your script is in the PATH environtment
2-- To do that, you will have to edit your ~/bashrc.
3-- nano ~/.bashrc to open and  edit
4-- Add the following to the ~/bashrc
-----export PATH= <path to the directory were your script is found>
----- after edditing, save file and run the command------
----- source ~/.bashrc
EOF

elif [[ "$project_type" == "bash" ]]; then
       echo "how do you want to name you bash file? :"
       read bash_file
       touch "$project_name/$bash_file.sh"
       echo "For more infor on exceuting the bash script, cd into the README.md file to follow instructions"

cat << EOF > "$project_name/README.md"
GUID TO RUNNING YOUR BASH PROJECT.
echo ""
MY $project_name PROJECT :
echo""
----To run the Bash script with execution permission: bash $project_name/file.sh
----To run the Bash script without execution permission: chmod "$project_name/$bash_file.sh" followed by ./"$project_name/$bash_file.sh"
echo ""
GENERAL SETUP GUIDE FOR PROJECT.
echo ""
----Make your script Globally Accessible and test from various locations in the system
echo ""
1-- Ensure directory to your script is in the PATH environtment
2-- To do that, you will have to edit your ~/bashrc.
3-- nano ~/.bashrc to open and  edit
4-- Add the following to the ~/bashrc
-----export PATH= <path to the directory were your script is found>
----- after edditing, save file and run the command------
----- source ~/.bashrc

EOF

else
       echo " Invalid operation "

fi



