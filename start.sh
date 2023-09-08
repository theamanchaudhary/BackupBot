if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/theamanchaudhary/BackupBot.git /BackupBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /BackupBot
fi
cd /BackupBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
