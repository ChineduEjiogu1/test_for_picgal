PRAGMA foreign_keys = 1;
DROP TABLE IF EXISTS pics;

CREATE TABLE pics(
    uID INTEGER PRIMARY KEY,
    SIZE VARBINARY,
    Dimensions VARCHAR(40),
    DATE_TAKEN DATETIME,
    TIME_TAKEN TIME,
    FILE_PATH VARCHAR(60),
    FILE_NAME VARCHAR(40)
);

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        1, 104.4, '1080 x 1080', ' 04/02/2020', '4:39PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics', 'nick11_1'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        2, 154.6, '1072 x 1072', ' 04/02/2020', '4:40PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics', 'nick11_2'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        3, 122.5, '1080 x 810', ' 04/02/2020', '4:41PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics', 'nick11_3'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        4, 138.1, '1080 x 1080', ' 04/02/2020', '4:43PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics', 'nick11_4'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        5, 163.1, '720 x 757', ' 04/02/2020', '4:44PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics', 'nick11_5'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        6, 48.3, '478 x 474', ' 04/02/2020', '4:45PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics', 'nick11_6'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        7, 78.3, '1080 x 1080', ' 04/02/2020', '4:49PM', 'C:\Users\erice\CompSci\test_p\nick_11_pics', 'nick11_7'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        8, 129.9, '932 x 1165', ' 04/02/2020', '6:40PM', 'C:\Users\erice\CompSci\test_p\white00_pics', 'white00_1'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        9, 294.5, '1080 x 1336', ' 04/02/2020', '6:41PM', 'C:\Users\erice\CompSci\test_p\white00_pics', 'white00_2'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        10, 166.3, '1080 x 836', ' 04/02/2020', '6:43PM', 'C:\Users\erice\CompSci\test_p\white00_pics', 'white00_3'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        11, 134.9, '708 x 874', ' 04/02/2020', '6:48PM', 'C:\Users\erice\CompSci\test_p\white00_pics', 'white00_4'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        12, 184.9, '1072 x 1341', ' 04/02/2020', '6:52PM', 'C:\Users\erice\CompSci\test_p\white00_pics', 'white00_5'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        13, 170.9, '720 x 892', ' 04/02/2020', '6:54PM', 'C:\Users\erice\CompSci\test_p\white00_pics', 'white00_6'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        14, 169.3, '957 x 1190', ' 04/02/2020', '6:59PM', 'C:\Users\erice\CompSci\test_p\white00_pics', 'white00_7'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        15, 181.8, '1080 x 1350', ' 04/02/2020', '5:16PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_1'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        16, 285.6, '1080 x 1350', ' 04/02/2020', '5:18PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_2'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        17, 186.4, '1080 x 1349', ' 04/02/2020', '5:19PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_3'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        18, 470, '1080 x 1350', ' 04/02/2020', '5:26PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_4'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        19, 407.2, '1080 x 1348', ' 04/02/2020', '5:29PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_5'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        20, 261.7, '1080 x 1349', ' 04/02/2020', '5:32PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_6'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        21, 344.1, '1080 x 1350', ' 04/02/2020', '5:34PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_7'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        22, 329.7, '1080 x 1350', ' 04/02/2020', '5:36PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_8'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        23, 199.7, '1080 x 1349', ' 04/02/2020', '5:46PM', 'C:\Users\erice\CompSci\test_p\kira_flo_pics', 'kira_flo_9'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        24, 104, '1080 x 1080', ' 04/02/2020', '8:50PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics', 'cali_flo_1'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        25, 88.5, '1080 x 1080', ' 04/02/2020', '8:51PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics', 'cali_flo_2'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        26, 146.5, '1080 x 1350', ' 04/02/2020', '8:53PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics', 'cali_flo_3'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        27, 123.1, '1080 x 1350', ' 04/02/2020', '8:54PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics', 'cali_flo_4'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        28, 169.2, '1080 x 1056', ' 04/02/2020', '8:56PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics', 'cali_flo_5'
    );


INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        29, 118.3, '1080 x 1322', ' 04/02/2020', '8:58PM', 'C:\Users\erice\CompSci\test_p\cali_flo_pics', 'cali_flo_6'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        30, 127.1, '1080 x 1080', ' 04/02/2020', '4:59PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics', 'eli_easy_1'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        31, 91.3, '1080 x 1080', ' 04/02/2020', '5:02PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics', 'eli_easy_2'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        32, 91.3, '1080 x 1085', ' 04/02/2020', '5:05PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics', 'eli_easy_3'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        33, 161.4, '1080 x 1080', ' 04/02/2020', '5:07PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics', 'eli_easy_4'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        34, 141.3, '1080 x 1080', ' 04/02/2020', '5:09PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics', 'eli_easy_5'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        35, 120.9, '1080 x 1080', ' 04/02/2020', '5:10PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics', 'eli_easy_6'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        36, 235.3, '1080 x 1080', ' 04/02/2020', '5:11PM', 'C:\Users\erice\CompSci\test_p\eli_easy_pics', 'eli_easy_7'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        37, 148.8, '1080 x 1059', ' 04/02/2020', '3:36PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics', 'Sophia10_1'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        38, 149.6, '1080 x 1250', ' 04/02/2020', '3:40PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics', 'Sophia10_2'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        39, 154.3, '1080 x 1350', ' 04/02/2020', '3:43PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics', 'Sophia10_3'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        40, 59, '1080 x 1083', ' 04/02/2020', '3:45PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics', 'Sophia10_4'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        41, 50.7, '720 x 720', ' 04/02/2020', '3:47PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics', 'Sophia10_5'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        42, 98.6, '1080 x 1080', ' 04/02/2020', '3:49PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics', 'Sophia10_6'
    );

INSERT INTO pics(
    uID,
    SIZE,
    Dimensions,
    DATE_TAKEN,
    TIME_TAKEN,
    FILE_PATH,
    FILE_NAME
)

    VALUES(
        43, 598.8, '1080 x 1080', ' 04/02/2020', '3:54PM', 'C:\Users\erice\CompSci\test_p\Sophia10_pics', 'Sophia10_7'
    );