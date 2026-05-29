# Basic SQL Operations
Always, end the commands with `;`

## 1. Create a table
```
CREATE TABLE examples (
    phrase TEXT PRIMARY KEY,
    author TEXT
);
```

## 2. Insert rows
```
INSERT INTO examples (phrase, author) VALUES ('Hello world', 'Brian Kernighan');
INSERT INTO examples (phrase, author) VALUES ('To be or not to be', 'W. Shakespeare');
INSERT INTO examples (phrase, author) VALUES ('Ta panta rei', 'Herakleitos');
INSERT INTO examples (phrase, author) VALUES ('Veni, vidi, vici', 'Caesar');
```

## 3. Display information
```
SELECT * FROM examples;
SELECT phrase FROM examples WHERE author = 'Shakespeare';
SELECT COUNT(*) FROM examples;
SELECT * FROM examples ORDER BY author LIMIT 3;
```

## 4. Update row
```
UPDATE examples SET author = 'Shakespeare' WHERE author = 'W. Shakespeare';
```

## 5. Delete row
```
DELETE FROM examples WHERE phrase = 'Hello world';
```

## 6. Drop table
```
DROP TABLE examples;
```
