# syntax=docker/dockerfile:1

FROM doccano/doccano:nightly

# Set credentials for Doccano admin user, email and password as well as PostrgesSQL DB URL.
# Uncomment the code below if you want to set credentials from Dockefile instead of Heroku Config Vars

# ENV ADMIN_USERNAME=ADMIN_EMAIL \
#     ADMIN_EMAIL=user@example.com \
#     ADMIN_USER=admin \
#     ADMIN_PASSWORD=supersecret\
#     DATABASE_URL=postgres://babsksvexil:259ab24671sdfer6c48ac56b1f02874c30ba6ecb96b381740ced6b@ec2-3-21f9-135-162.compute-1.amazonaws.com:5432/dfv14eb7osk8p8
