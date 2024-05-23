cd docker-compose || exit 1

# Delete folders containing storage data in order to start with a fresh env
rm -r -f ./services/blockscout-db-data/
rm -r -f ./services/logs/
rm -r -f ./services/redis-data/
rm -r -f ./services/stats-db-data/

# Start Anvil node + Bundler + Paymaster + Blockscout explorer
docker-compose -f anvil-network.yml up
