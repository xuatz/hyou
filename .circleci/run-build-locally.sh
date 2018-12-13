# this is to test Circle CI config locally without the need to commit to git
# change commit hash, project name and branch name accordingly

###############
#    SETUP    #
###############
# export CIRCLE_TOKEN=501232676b76dbb3be2bee9bf808ab5b19ab67b2

################
#    FORMAT    #
################

# curl --user ${CIRCLE_TOKEN}: \
#     --request POST \
#     --form revision=<commit hash>\
#     --form config=@config.yml \
#     --form notify=false \
#         https://circleci.com/api/v1.1/project/bitbucket/<user name>/<project name>/tree/<branch name>

curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=6765c9e \
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/bitbucket/mmtx/mmtx-pre/tree/master
