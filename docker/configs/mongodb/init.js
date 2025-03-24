db.log.insertOne({"message": "Database created."});

db.createUser({
    user: _getEnv("MONGO_USER"),
    pwd: _getEnv("MONGO_PASSWORD"),
    roles: [{
        role: "readWrite",
        db: _getEnv("MONGO_INITDB_DATABASE")
    }]
});

db.createCollection(_getEnv("MONGO_INITDB_COLLECTION"));