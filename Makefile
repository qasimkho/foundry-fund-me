# foundry basic - section 2 - chapter 21

-include .env

# ";"(semi colon) is if we want to do the command on the same line
build:; forge build

# if we dont want to do the command in the same line, we can just 'enter' then 'tab'
# to run this comamnd , simply type `make deploy-sepolia`
deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL)
	--private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv


