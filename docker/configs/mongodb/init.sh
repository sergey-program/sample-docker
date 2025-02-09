set -e

mongo <<EOF
use $MONGO_INITDB_DATABASE

db.createUser({
  user: '$MONGO_USER',
  pwd: '$MONGO_PASSWORD',
  roles: [{
    role: 'readWrite',
    db: '$MONGO_INITDB_DATABASE'
  }]
});

db.createCollection('$MONGO_INITDB_COLLECTION');
EOF