<h1 align="center">Welcome to Docker Sample PHP Website 👋</h1>
<p>
  <img src="https://img.shields.io/badge/version-2.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/ttRmz/Docker_PHP_Website#readme">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" target="_blank" />
  </a>
  <a href="https://github.com/ttRmz/Docker_PHP_Website/graphs/commit-activity">
    <img alt="Maintenance" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" target="_blank" />
  </a>
</p>

## Intro

>This project runs a **PHP v7.1** app with an **Nginx v1.12** web server unsing docker.

## What do you need ?

- [Docker](https://www.docker.com/)

## 📦 Install

```sh
git clone https://github.com/ttRmz/Docker_PHP_Website.git
```

## 🐳 Run the project

```sh
# You can execute the launch.sh script for a quick startup

sh ./launch.sh
```

```sh
# or run docker containers only

docker-compose up -d
```

## ✅ Run tests with [PHPUnit](https://phpunit.readthedocs.io/en/8.2/writing-tests-for-phpunit.html)

```sh
# once docker containers are deployed

docker-compose exec -T php phpunit functions.test.php
```

## Author

👤 **Tristan Ramirez &lt;tristan.rami@gmail.com&gt;**

- Github: [@ttRmz](https://github.com/ttRmz)
- LinkedIn: [Tristan Ramirez](https://www.linkedin.com/in/tristan-ramirez-06347a132/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome !<br />Feel free to check [issues page](https://github.com/ttRmz/Docker_PHP_Website/issues).

## Show your support

Give a ⭐️ if this project helped you !