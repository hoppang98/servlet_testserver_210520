CREATE TABLE `favorite` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(64) NOT NULL,
    `url` varchar(256) NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `favorite`
(`name`, `url`, `createdAt`, `updatedAt`)
VALUES
('마론달', 'http://marondal.com', now(), now()),
('구글', 'https://google.com', now(), now()),
('네이버', 'https://naver.com', now(), now()),
('다음', 'https://daum.net', now(), now());