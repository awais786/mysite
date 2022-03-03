# mysite for local
# step 1
docker-compose up

# step 2
docker exec -it mysite_web_1  bash
python manage.py migrate




