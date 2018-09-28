import datetime
import sys
exp_date_string = str(sys.stdin.readline())
exp_date_string = exp_date_string.strip()
#this is format of string date: 2018 Mar 18"
expiry_date = datetime.datetime.strptime(exp_date_string, "%Y %b %d")
today_date = datetime.datetime.today()
diff_date = today_date - expiry_date
print(diff_date.days)
