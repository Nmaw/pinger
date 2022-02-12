# Pinger/Checker

## To raspi
scp * pi@192.168.88.27:/home/pi/app

## Build
docker build -t pinger .

## Run
### Docker
docker run -d -p 9091:9091 pinger

### Shell
python -u main.py