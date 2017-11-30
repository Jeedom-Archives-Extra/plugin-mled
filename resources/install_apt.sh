PROGRESS_FILE=/tmp/dependancy_mled_in_progress
if [ ! -z $1 ]; then
	PROGRESS_FILE=$1
fi
touch ${PROGRESS_FILE}
echo 0 > ${PROGRESS_FILE}
echo "Launch install of mled"
sudo apt-get update
echo 50 > ${PROGRESS_FILE}
sudo apt-get install -y mosquitto mosquitto-clients 
echo 100 > ${PROGRESS_FILE}
echo "Everything is successfully installed!"
rm ${PROGRESS_FILE}