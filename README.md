# phase-3-challenge
Learners Guild tasks for phase-3 sorting interview

Project Members:

[Jonathan Pool](https://github.com/jrpool)

## Installation and Setup

0. These instructions presuppose that (1) [npm][npm] and [PostgreSQL][postgresql] are installed, (2) there is a PostgreSQL database cluster, (3) PostgreSQL is running, and (4) when you connect to the cluster you are a PostgreSQL superuser.

1. Make the parent directory of what will be the project’s directory your working directory.

2. Clone this repository into it, thereby creating the project directory, by executing the following (you may change “phase3a” to another directory name):

    `git clone git@github.com:jrpool/phase-3-challenge.git phase3a`

2. Make the project directory your working directory by executing:

    `cd phase3a`

3. Install required dependencies (see `package.json`) by executing:

    `npm i`

4. Perform linting on the files in the `src` and `test` directories by
executing one of the following, depending on the part:

    `npm run lint1`

    `npm run lint2`

    `npm run lint3`

5. Perform the provided tests (which exist only in part 2) by executing:

    `npm run test2`

6. Create, configure, and initially populate the part-2 database by executing:

    `source ./part-2/dbinit.sh`

7. Deploy the part-1 application by executing:

    `npm run start1`

8. While the previous process still runs, exercise the part-1 application by visiting http://127.0.0.1/8000 with a web browser.

9. Deploy the part-2 application by executing:

    `part-2/dbinit.sh`

10. Examine and exercise the part-2 application by executing:

    `psql -U grocer grocery_store`

11. Deploy and exercise the part-3 application by opening the file `part-3/grocer.html` with a web browser.

[chai]: https://chaijs.com/
[mocha]: https://mochajs.org/
[npm]: https://www.npmjs.com/
[postgresql]: https://www.postgresql.org
