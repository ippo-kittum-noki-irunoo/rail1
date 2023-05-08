if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ippo-kittum-noki-irunoo/rail1.git /rail1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /rail1
fi
cd /rail1
pip3 install -U -r requirements.txt
echo "Starting Hichoz....🔥"
python3 bot.py
