#将'~'替换为'NUIST_HealthyReport_NEW'所在绝对路径
#chmod +x a.sh
#在计划任务中添加a.sh
#原理：执行计划任务时，会检查当日是否已打卡。若有，则无事发生；若无，则运行report.py。因此，计划任务的时间间隔可为* * * * *。
#若无法运行，请检查该脚本内使用的python解释器是否正确。

aa=""
read aa <<< $(cat ~/NUIST_HealthyReport_NEW/date.txt)
read bb <<< $(echo `date '+%Y%m%d'`)
if ((aa!=bb))
then
python ~/NUIST_HealthyReport_NEW/report.py && echo $bb>~/NUIST_HealthyReport_NEW/date.txt
fi
