PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS friends;
CREATE TABLE friends (
    uID integer NOT NULL,
    friendID integer NOT NULL,
    PRIMARY KEY(uID, friendID),
    FOREIGN KEY(uID) REFERENCES users_info(uID),
    FOREIGN KEY(friendID) REFERENCES users_info(uID)
);

  -- INSERT INTO friends(uID,friendID) values (1,2);

  -- select users_info.uID, USERS, FULL_NAME from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = 1;