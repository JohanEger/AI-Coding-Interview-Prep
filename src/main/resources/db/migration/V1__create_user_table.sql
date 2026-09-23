CREATE TABLE user_account (
                              id             BIGINT AUTO_INCREMENT PRIMARY KEY,
                              username       VARCHAR(30)  NOT NULL,
                              password_hash  VARCHAR(255) NOT NULL,
                              created_at     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,

                              CONSTRAINT uq_user_account_username UNIQUE (username),
                              CONSTRAINT chk_user_account_username_length CHECK (CHAR_LENGTH(username) >= 3),
                              CONSTRAINT chk_user_account_username_trimmed CHECK (username = TRIM(username))
);