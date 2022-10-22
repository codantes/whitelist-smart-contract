const { ethers, network } = require("hardhat");
const {verify} = require("../utils/verify")

async function main() {
  const WhitelistFactory = await ethers.getContractFactory("Whitelist");
  console.log("deploying contract...");
  const whitelist = await WhitelistFactory.deploy(10);
  console.log(`contract address: ${whitelist.address}`);

  // console.log(network.config);
  // if(network.config.chainId === 5){
  //   console.log('waiting for the blocks...')
  //   await whitelist.deployTransaction.wait(6);
  //   await verify(whitelist.address, [10]);
  // }
}

// Call the main function and catch if there is any error
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });