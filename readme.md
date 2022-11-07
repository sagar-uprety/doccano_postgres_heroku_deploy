# Instructions to setup your Doccano app

## Installations Needed (Locally)
- Docker
- Heroku CLI

# Steps
1. Create an app on Heroku
2. Go to *Resources* tab and install *Heroku Postgres* as add-on. 
3. Now, we need to setup Doccano credentials as Config Vars (secured way). This can alternatively be passed on via Dockerfile if needed. Go to *Settings* tab and under Config Vars add these:
   ```
    ADMIN_EMAIL=admin@example.com //Doccano portal admin email
    ADMIN_USERNAME=admin //Doccano portal login password
    ADMIN_PASSWORD=password //Doccano portal login password
    DATABASE_URL=postgres://bmnzfxhkgvexil:259ab24671bf50c320348e3386c48ac56b1f02874c30ba6ecb96b381740ced6b@ec2-3-219-135-162.compute-1.amazonaws.com:5432/dfv14eb7osk8p8 //Heroku Postgres DB URL. Check instructions below
   ```
4. Note: The *DATABASE_URL* value is automatically added to config var during add-on installation. If you need to check the URL manually. Go to:
    
    ```Resources->Add-on->Heroku-Postgres->Settings->Database Credentials->URL```

5. From this direcotory, run `./deploy.sh heruko_app_name`. Note that heruko_app_name must match the app you created earlier.

6. That's it. This will deploy your Doccano app and connect it to the PostgresDB as required.