#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only
   
echo "# Participation au `date +"%d-%m-%Y %H:%M"`"
echo ""


echo "| Table des matières            | Description                                             |"
echo "|-------------------------------|---------------------------------------------------------|"
echo "| :a: [Présence](#a-présence)   | L'étudiant.e a fait son travail    :heavy_check_mark:   |"
echo "| :b: [Précision](#b-précision) | L'étudiant.e a réussi son travail  :tada:               |"

echo ""
echo "## Légende"
echo ""

echo "| Signe              | Signification                 |"
echo "|--------------------|-------------------------------|"
echo "| :heavy_check_mark: | Prêt à être corrigé           |"
echo "| :x:                | Projet inexistant             |"


echo ""
echo "## :a: Présence"
echo ""
echo "|:hash:| Boréal :id:                | SQL Schema    | SQL Data | Actions |"
echo "|------|----------------------------|---------------|----------|---------|"

i=0

URL="https://github.com/CollegeBoreal/INF1006-202-20A-01"

for id in "${ETUDIANTS[@]}"
do
   U_AVATAR="<image src='https://avatars0.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image>"
   F_SCHEMA=${id}/${id}-schema.sql
   if [ -f "$F_SCHEMA" ]; then
       OK_SCHEMA="[:heavy_check_mark:](../${F_SCHEMA})"
   else
       OK_SCHEMA="[:x:]"
   fi
   F_DATA=${id}/${id}-data.sql
   if [ -f "$F_DATA" ]; then
       OK_DATA="[:heavy_check_mark:](../${F_DATA})"
   else
       OK_DATA="[:x:]"
   fi
   OK="| ${i} | [${id}](../${id}) - ${U_AVATAR} | ${OK_SCHEMA} | ${OK_DATA} | [:construction: Actions](${URL}/actions?query=workflow/3.DDL-DCL-${id}) | "
   echo ${OK}
   let "i++"
done
