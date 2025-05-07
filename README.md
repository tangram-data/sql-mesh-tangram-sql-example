## Set up Tangram OS locally

Please follow this guide to start Tangram OS locally: https://docs.tangram-os.ai/tutorial-get-started/quick-start

After the CLI shell get started, execute the local start command with ClickHouse enabled.

```bash
local start --with-clickhouse
```

## Set up Tangram SQL adapter for SQL Mesh

Since Tangram SQL engine adapter is not yet officially part of SQLMesh code base, we need to build the SQLMesh with TangramSQL adapter locally for running this example pipeline:

```bash

cd ~

mkdir sqlmesh_tangram_sql

cd sqlmesh_tangram_sql

git clone https://github.com/TobikoData/sqlmesh.git

cd sqlmesh

git remote add tangram https://github.com/tangram-data/sqlmesh.git

git pull --rebase tangram main

python3 -m venv .env
source .env/bin/activate

pip3 install build

# build the SQLMesh project with
python3 -m build
cd ..
```

## Checkout this project and install the required python dependencies

```bash
git clone git@github.com:tangram-data/sql-mesh-tangram-sql-example.git

cd sql-mesh-tangram-sql-example

pip3 install psycopg2

pip3 install clickhouse-connect

# install the created sqlmesh distribution from the above sql mesh build,

pip3 install ~/sqlmesh_tangram_sql/sqlmesh/dist/sqlmesh-0.178.3.dev13.tar.gz # your local build generated distribution tar.gz might have a different name

```

## Update SQLMesh `config.yaml` to configure the local Tangram OS access token.

To show the current access token, you can use Tangram OS CLI and execute the following command

```bash
pat show
```

In `config.yaml` replace `#<Tangram OS local instance access token>` to the token from above command

## Run the example pipeline

After setting up the connection token, you can now run `sqlmesh plan`

```bash
sqlmesh plan
```
