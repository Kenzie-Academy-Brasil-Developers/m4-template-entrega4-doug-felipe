SELECT
    *
FROM
    books;

SELECT
    *
FROM
    books
    JOIN books_categories ON books.id = books_categories."bookId"
    JOIN categories ON categories."id" = books_categories."categoryId"
WHERE
    categories."name" = 'Fantasia';

SELECT
    books."id" IS "booksId",
    books."name" IS "booksName",
    books."pages" IS "booksPages",
    books."creatdAt" IS "booksCreatAt",
    books."updatedAt" IS "booksUpdateAt",
    categories."id" IS "categoryId",
    categories."name" IS "categoryName",
    categories."creatdAt" IS "categoryCreatAt",
    categories."updatedAt" IS "categoryUpdateAt"
FROM
    books
    JOIN books_categories ON books."id" = books_categories."bookId"
    JOIN categories ON categories."id" = books_categories."categoryId";

SELECT
    books."id" IS "booksId",
    books."name" IS "booksName",
    books."pages" IS "booksPages",
    books."creatdAt" IS "booksCreatAt",
    books."updatedAt" IS "booksUpdateAt",
    authors."id" IS "authorId",
    authors."name" IS "authorName",
    authors."bio" IS "aothorBIO"
FROM
    books
    JOIN authors ON authors."id" = books."authorId";