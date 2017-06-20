# phase-3-challenge
Learners Guild tasks for phase-3 sorting interview

Project Members:

[Jonathan Pool](https://github.com/jrpool)

## Installation and Setup

0. These instructions presuppose that [npm][npm] and [PostgreSQL][postgresql] are installed, there is a PostgreSQL database cluster, that PostgreSQL is running, and that when you connect to the cluster you are a PostgreSQL superuser.

1. Make the parent directory of what will be the project’s directory your working directory.

2. Clone this repository into it, thereby creating the project directory, by executing the following (you may change “phase3a” to another directory name):

    `git clone git@github.com:jrpool/phase-3-challenge.git phase3a`

2. Make the project directory your working directory by executing:

    `cd phase3a`

3. Install required dependencies (see `package.json`) by executing:

    `npm i`

4. Create, configure, and initially populate the part-2 database by executing:

    `source ./part-2/dbinit.sh`

5. Perform linting on the files in the `src` and `test` directories by
executing one of the following, depending on the part:

    `npm run lint1`

    `npm run lint2`

    `npm run lint3`

3. Perform the provided tests (which exist only in part 2) by executing:

    `npm run test2`

## Usage and Examples

[chai]: https://chaijs.com/
[mocha]: https://mochajs.org/
[npm]: https://www.npmjs.com/
[postgresql]: https://www.postgresql.org
