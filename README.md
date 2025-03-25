# Yield Farming Pool Smart Contract

## Description

The Yield Farming Pool is a simple Move-based smart contract built on the Aptos blockchain. It allows users to stake their AptosCoins (APT) in a yield farming pool and earn rewards over time. The contract supports two key functionalities:
	1.	Staking Tokens: Users can deposit a specified amount of tokens into the yield farming pool.
	2.	Claiming Rewards: Users can claim rewards based on their staked amount, with a simple reward rate calculation applied for accumulated rewards.

This contract demonstrates how to manage user stakes, track deposited tokens, and implement a reward mechanism in a decentralized financial (DeFi) ecosystem.

⸻

## Vision

The vision of this project is to create a foundational smart contract that can later evolve into a fully functional yield farming protocol on the Aptos blockchain. The long-term goal is to build a decentralized platform where users can lock tokens, earn dynamic rewards, and participate in DeFi opportunities with transparency and security.

⸻

## Future Scope

This simple yield farming pool can be expanded with the following enhancements in the future:
	•	Dynamic Reward Rate: Implement dynamic reward rates based on token supply and demand.
	•	Liquidity Pools: Support for multiple types of tokens and liquidity pools.
	•	Withdrawal Functionality: Allow users to withdraw their staked tokens after a fixed lock-in period.
	•	Governance Mechanism: Introduce a decentralized governance system where token holders can vote on protocol updates.
	•	Advanced Reward Logic: Include compounding rewards, NFTs, or additional incentive mechanisms.
	•	Security Audits: Conduct professional security audits to ensure the contract is robust and free from vulnerabilities.

⸻

## Contract Details

This contract is implemented in Move, the native smart contract language of the Aptos blockchain. Below is a breakdown of the key functionalities:
	1.	Structs:
	•	Stake: A struct representing a user’s stake in the pool. It stores the amount_staked and accumulated rewards.
	2.	Functions:
	•	deposit_tokens:
Description: Allows users to deposit AptosCoins (APT) into the yield farming pool. It increases the user’s staked amount or creates a new stake if one does not already exist.
Signature:

public fun deposit_tokens(user: &signer, amount: u64) acquires Stake  


	•	claim_rewards:
Description: Allows users to claim rewards based on their staked amount. The rewards are calculated using a fixed reward rate of 10%.
Signature:

public fun claim_rewards(user: &signer) acquires Stake  


	3.	Token Handling:
	•	The contract uses Aptos’s native AptosCoin (APT) for staking and reward mechanisms.
	4.	Acquires Annotation:
	•	The acquires Stake annotation ensures that the contract properly accesses and modifies the Stake resource associated with a user.

⸻

By building upon this initial contract, developers and users can explore yield farming on Aptos and contribute to the growing DeFi ecosystem.
