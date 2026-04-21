CREATE TABLE hacker_news (
    id INT,
    title VARCHAR(100),
    author VARCHAR(50),
    points INT,
    comments INT
);

INSERT INTO hacker_news VALUES
(1, 'AI beats humans', 'Alice', 150, 40),
(2, 'New startup launches', 'Bob', 80, 20),
(3, 'Python vs Java', 'Charlie', 200, 60),
(4, 'SpaceX update', 'Alice', 120, 30),
(5, 'Tech layoffs', 'David', 60, 15),
(6, 'Open source trends', 'Bob', 170, 50);

SELECT *
FROM hacker_news
WHERE points > 100;

SELECT *
FROM hacker_news
ORDER BY points DESC;

SELECT *
FROM hacker_news
WHERE points > 100
ORDER BY points DESC;

SELECT *
FROM hacker_news
ORDER BY points DESC;

SELECT *
FROM hacker_news
WHERE points > 100
ORDER BY points DESC;

SELECT author, SUM(points) AS total_points
FROM hacker_news
GROUP BY author;

SELECT author, SUM(points) AS total_points
FROM hacker_news
GROUP BY author
HAVING SUM(points) > 200;

SELECT *
FROM hacker_news
WHERE points > 100 AND comments > 30
ORDER BY points DESC;