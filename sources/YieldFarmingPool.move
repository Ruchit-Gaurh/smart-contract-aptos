module MyModule::YieldFarmingPool {

    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;
    use aptos_framework::signer;

    /// Struct representing a user's stake in the yield farming pool.
    struct Stake has store, key {
        amount_staked: u64,  // Tokens staked by the user
        rewards: u64,        // Accumulated rewards for the user
    }

    /// Function to deposit tokens into the yield farming pool.
    public fun deposit_tokens(user: &signer, amount: u64) acquires Stake {
        let address = signer::address_of(user);

        // Withdraw tokens from the user to simulate staking.
        let tokens = coin::withdraw<AptosCoin>(user, amount);

        if (!exists<Stake>(address)) {
            let stake = Stake { amount_staked: amount, rewards: 0 };
            move_to(user, stake);
        } else {
            let stake = borrow_global_mut<Stake>(address);
            stake.amount_staked = stake.amount_staked + amount;
        };

        // Redeem or use the withdrawn tokens by depositing them back into the users account.
        coin::deposit<AptosCoin>(address, tokens);  // Prevents resource leak.
    }

    /// Function to claim rewards based on staked amount (fixed reward rate for simplicity).
    public fun claim_rewards(user: &signer) acquires Stake {
        let stake = borrow_global_mut<Stake>(signer::address_of(user));
        let reward_rate: u64 = 10;  // Example reward rate (for simplicity)
        
        stake.rewards = stake.rewards + (stake.amount_staked * reward_rate / 100);  
        // Rewards accumulated based on staked amount (10% example)
    }
}