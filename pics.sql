PRAGMA foreign_keys = 1;
DROP TABLE IF EXISTS pics;

CREATE TABLE pics(
    uID INTEGER PRIMARY KEY,
    SIZE VARBINARY,
    USERS VARCHAR(60),
    Dimensions VARCHAR(40),
    DATE_TAKEN DATETIME,
    TIME_TAKEN TIME,
    FILE_PATH VARCHAR(60)
);

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        1, 104.4, 'nick11','1080 x 1080', ' 04/02/2020', '4:39PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics\nick11_1.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        2, 154.6, 'nick11', '1072 x 1072', ' 04/02/2020', '4:40PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics\nick11_2.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        3, 122.5, 'nick11', '1080 x 810', ' 04/02/2020', '4:41PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics\nick11_3.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        4, 138.1, 'nick11', '1080 x 1080', ' 04/02/2020', '4:43PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics\nick11_4.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        5, 163.1, 'nick11', '720 x 757', ' 04/02/2020', '4:44PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics\nick11_5.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        6, 48.3, 'nick11', '478 x 474', ' 04/02/2020', '4:45PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics\nick11_6.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        7, 78.3, 'nick11', '1080 x 1080', ' 04/02/2020', '4:49PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics\nick11_7.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        8, 129.9, 'white00', '932 x 1165', ' 04/02/2020', '6:40PM', 'C:\Users\erice\CompSci\test_p\white00_pics\white00_1.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        9, 294.5, 'white00', '1080 x 1336', ' 04/02/2020', '6:41PM', 'C:\Users\erice\CompSci\test_p\white00_pics\white00_2.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        10, 166.3, 'white00', '1080 x 836', ' 04/02/2020', '6:43PM', 'C:\Users\erice\CompSci\test_p\white00_pics\white00_3.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)
    VALUES(
        11, 134.9, 'white00', '708 x 874', ' 04/02/2020', '6:48PM', 'C:\Users\erice\CompSci\test_p\white00_pics\white00_4.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        12, 184.9, 'white00', '1072 x 1341', ' 04/02/2020', '6:52PM', 'C:\Users\erice\CompSci\test_p\white00_pics\white00_5.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        13, 170.9, 'white00', '720 x 892', ' 04/02/2020', '6:54PM', 'C:\Users\erice\CompSci\test_p\white00_pics\white00_6.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        14, 169.3, 'white00', '957 x 1190', ' 04/02/2020', '6:59PM', 'C:\Users\erice\CompSci\test_p\white00_pics\white00_7.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        15, 181.8, 'kira_flo', '1080 x 1350', ' 04/02/2020', '5:16PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_1.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        16, 285.6, 'kira_flo', '1080 x 1350', ' 04/02/2020', '5:18PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_2.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        17, 186.4, 'kira_flo', '1080 x 1349', ' 04/02/2020', '5:19PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_3.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        18, 470, 'kira_flo', '1080 x 1350', ' 04/02/2020', '5:26PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_4.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        19, 407.2, 'kira_flo', '1080 x 1348', ' 04/02/2020', '5:29PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_5.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        20, 261.7, 'kira_flo', '1080 x 1349', ' 04/02/2020', '5:32PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_6.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        21, 344.1, 'kira_flo', '1080 x 1350', ' 04/02/2020', '5:34PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_7.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        22, 329.7, 'kira_flo', '1080 x 1350', ' 04/02/2020', '5:36PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_8.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        23, 199.7, 'kira_flo', '1080 x 1349', ' 04/02/2020', '5:46PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics\kira_flo_9.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        24, 104, 'cali_flo', '1080 x 1080', ' 04/02/2020', '8:50PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics\cali_flo_1.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        25, 88.5, 'cali_flo', '1080 x 1080', ' 04/02/2020', '8:51PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics\cali_flo_2.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        26, 146.5, 'cali_flo', '1080 x 1350', ' 04/02/2020', '8:53PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics\cali_flo_3.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        27, 123.1, 'cali_flo', '1080 x 1350', ' 04/02/2020', '8:54PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics\cali_flo_4.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)
    VALUES(
        28, 169.2, 'cali_flo', '1080 x 1056', ' 04/02/2020', '8:56PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics\cali_flo_5.jpg'
    );


INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        29, 118.3, 'cali_flo', '1080 x 1322', ' 04/02/2020', '8:58PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics\cali_flo_6.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        30, 127.1, 'eli_easy', '1080 x 1080', ' 04/02/2020', '4:59PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics\eli_easy_1.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        31, 91.3, 'eli_easy', '1080 x 1080', ' 04/02/2020', '5:02PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics\eli_easy_2.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        32, 91.3, 'eli_easy', '1080 x 1085', ' 04/02/2020', '5:05PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics\eli_easy_3.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        33, 161.4, 'eli_easy', '1080 x 1080', ' 04/02/2020', '5:07PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics\eli_easy_4.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        34, 141.3, 'eli_easy', '1080 x 1080', ' 04/02/2020', '5:09PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics\eli_easy_5.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        35, 120.9, 'eli_easy', '1080 x 1080', ' 04/02/2020', '5:10PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics\eli_easy_6.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        36, 235.3, 'eli_easy', '1080 x 1080', ' 04/02/2020', '5:11PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics\eli_easy_7.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        37, 148.8, 'Sophia10', '1080 x 1059', ' 04/02/2020', '3:36PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics\Sophia10_1.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        38, 149.6, 'Sophia10', '1080 x 1250', ' 04/02/2020', '3:40PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics\Sophia10_2.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        39, 154.3, 'Sophia10', '1080 x 1350', ' 04/02/2020', '3:43PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics\Sophia10_3jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        40, 59, 'Sophia10', '1080 x 1083', ' 04/02/2020', '3:45PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics\Sophia10_4.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        41, 50.7, 'Sophia10', '720 x 720', ' 04/02/2020', '3:47PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics\Sophia10_5.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        42, 98.6, 'Sophia10', '1080 x 1080', ' 04/02/2020', '3:49PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics\Sophia10_6.jpg'
    );

INSERT INTO pics(
    uID,
    SIZE,
    USERS,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH
)

    VALUES(
        43, 598.8, 'Sophia10', '1080 x 1080', ' 04/02/2020', '3:54PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics\Sophia10_7.jpg'
    );