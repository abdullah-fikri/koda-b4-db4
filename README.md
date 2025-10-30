# ERD Authication Flow

```mermaid
erDiagram

users {
    int id
    varchar(50) email
    varchar(50) password
}

profile {
    int id
    varchar(100) name
    varchar(100) phone
}

users_forgot {
    int users_id
    int users_forgot
    varchar(50) users_email
}

login {
    int users_id
    varchar(50) email
    varchar(50) password
}

forgot {
    int id
    varchar(50) email
    varchar(50) new_password
}

profile ||--|| users : kredensial
users ||--|| login : sign_in
users ||--o{ users_forgot : forgot
forgot ||--o{ users_forgot : reset
```
