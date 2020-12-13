#!/bin/sh

# --------------------------------------
#
# Creates a directory called .correction
# along with a README.md file
# $1 is the target directory
# usage: .script/correction.sh 3.DDL-DCL
#
# --------------------------------------

source .scripts/students.sh --source-only

DIR=$1
   
for id in "${ETUDIANTS[@]}"
do
   F_FILE=${DIR}/${id}/.correction/README.md
   if [ -f "$F_FILE" ]; then
       echo "" > ${F_FILE}
   else
       mkdir -p ${DIR}/${id}/.correction
       echo "" > ${F_FILE}
   fi
done
