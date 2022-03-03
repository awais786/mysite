Django32 throws error on running migrations. It happens with long table names. mysql8 is generating internal checks if model has PositiveIntegerField.

`error django.db.utils.OperationalError: (1059, "Identifier name 'polls_whiteboxstudentsexaminationdatatransferauditiontesting_chk_1' is too long")`

These check has random names with 64 characters limit. But due to long model names few checks breaks the limit and mysql8 throws error. Mysql [Documentation](https://dev.mysql.com/doc/refman/8.0/en/identifier-length.html)

`For constraint definitions that include no constraint name, the server internally generates a name derived 
from the associated table name. For example, internally generated foreign key and CHECK constraint names consist 
of the table name plus _ibfk_ or _chk_ and a number. If the table name is close to the length limit for constraint names, 
the additional characters required for the constraint name may cause that name to exceed the limit, resulting 
in an error.`


# Two workflows added one is running django32 and 2nd django22. Only django32 throws error.

# step 1
docker-compose up

# step 2
docker exec -it mysite_web_1  bash
python manage.py migrate



