PRAGMA foreign_keys = 1;
DROP TABLE IF EXISTS credentials;

CREATE TABLE credentials(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    USER_NAME VARCHAR(30),
    SALT_and_HASH_PASSWORD CHAR BINARY(60),
    FOREIGN KEY(ID) REFERENCES USERS(uID)
);

INSERT INTO credentials(
    USER_NAME,
    SALT_and_HASH_PASSWORD   
)
values('nick11', '$2b$10$oChQSVfb19F1m.fu9Kj61uEU2HDYfdFQokQJNrypsZPKvHZ4mehBy');
       
    

INSERT INTO credentials(
    USER_NAME,
    SALT_and_HASH_PASSWORD   
)
values('white00','$2b$10$QZ6Or1lW75IShMaDaVBD8.kpyYXS/g71dftwbjhiO92W6vWP/q.Ni');
        
    

INSERT INTO credentials(
    USER_NAME,
    SALT_and_HASH_PASSWORD   
)
values('kira_flo', '$2b$10$NM2alAzbRojWE1kujuahuenCo2wi9vUrcOB3JVGsnb4KdE8IyCiC6');
   

INSERT INTO credentials(
    USER_NAME,
    SALT_and_HASH_PASSWORD   
)
values('cali_flo', '$2b$10$RuZQhUXH74gZ2dKVx4eqiu7mGq/aTL9nc.fbtZmZRP/ODavbKcQFu');
        
    

INSERT INTO credentials(
    USER_NAME,
    SALT_and_HASH_PASSWORD   
)
values('eli_easy', '$2b$10$wgvq09c1skG0R4ADogK0Z.IMTSCcKWyRTTbb/eIb5a35e7tP4Rj3S');
    
        


INSERT INTO credentials(
    USER_NAME,
    SALT_and_HASH_PASSWORD   
)
values('Sophia10', '$2b$10$qWFBgtZjT2NLB42R2NkBk.XUrw7rP3y6MLWmNJhFD8YthFdRAtWSW');