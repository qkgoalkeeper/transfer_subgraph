const GravatarRegistry = artifacts.require('./GravatarRegistry.sol')

module.exports = async function(deployer) {
  const registry = await GravatarRegistry.deployed()

  console.log('Account address:', registry.address)

  let accounts = await web3.eth.getAccounts()
  await registry.createGravatar(accounts[0], accounts[3],100, {
    from: accounts[0],
  })
   await registry.createGravatar(accounts[1], accounts[3],200, {
    from: accounts[1],
  })
  await registry.createGravatar(accounts[2], accounts[3],300, {
    from: accounts[2],
  })
}
