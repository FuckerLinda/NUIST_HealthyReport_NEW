#将'~'替换为'NUIST_HealthyReport_NEW'所在绝对路径
#chmod +x a.sh
#在计划任务中添加a.sh
aa=""
read aa <<< $(cat ~/NUIST_HealthyReport_NEW/date.txt)
read bb <<< $(echo `date '+%Y%m%d'`)
if ((aa!=bb))
then
echo 3
python ~/NUIST_HealthyReport_NEW/report.py
echo $bb>~/NUIST_HealthyReport_NEW/date.txt
fi
