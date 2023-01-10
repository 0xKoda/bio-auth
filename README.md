# Behavioral Biometric Auth - Abstract Accounts

## Details

2022 was a landmark year for cybercriminals, with total funds lost to cybercrime topping in at an approximate [$8.4 Trillion](https://www.statista.com/chart/28878/expected-cost-of-cybercrime-until-2027/). This number is expected to increase to $23.84 Trillion by [2027](https://www.statista.com/chart/28878/expected-cost-of-cybercrime-until-2027/) showing no signs of slowing.

It has become clear as the internet evolves that typical methods of authentication in the modern age (SMS Multi-factor Auth, [password managers](https://blog.lastpass.com/2022/12/notice-of-recent-security-incident/), authentication applications etc.) are simply not good enough. While institutions need adequate assurance and security, so to do users of web3 ecosystems and retail DeFi investors alike.

Behavioral biometrics is a developing technology that allows users to secure and authenticate accounts based on patterns of their behaviors. In so doing, account actions can be scrutinized for evidence of theft or unusual behavior.

Unlike traditional authentication methods, which only validate when interaction is initiated, a behavioral biometric authentication method would authenticate continuously in real time.

A recent effort for improving Ethereum account security is the adoption of [Account Abstraction](https://notes.ethereum.org/@vbuterin/account_abstraction_roadmap). Coupled with behavioral biometric authentication, leveraging a continuous method of authentication would harmoniously increase account security by several orders of magnitude.

# Use

This is a POC illustrating the potential use of behavioral biometric authentication to secure abstracted Ethereum accounts in continuous form.

For now, accounts are initiated using an array of bytes32 signatures. These signatures are to be produced off chain, but for the purposes of this POC they remain generic. Storage of the signatures are currently in a mapping, but would be best suited leveraging a privacy model like a Merle tree.

Abstract accounts send through an authentication request to the main contract via the `authenticate` function, which then authenticates the interaction and returns a boolean result, allowing the abstract account to either proceed or cancel it's proposed execution.

## Development

**Setup**
```bash
forge install
```

**Building**
```bash
forge build
```

**Testing**
```bash
forge test
```




## License

[AGPL-3.0-only](https://github.com/0xKoda/bio-auth/blob/master/LICENSE)
