Q1 — Student Registry (Storage vs Memory)
Create a contract that:
Stores student name and age
Has a function to update both
Has a function that returns the name in memory, modify it inside function, and prove that the original storage value does not change

Expected learning:
state vs memory difference
persistence vs temporary values

2️⃣ Functions (Visibility: public/private/internal/external)
Q2 — Bank Access Levels

Create a small bank contract:
deposit() → public
withdraw() → public
Internal function that calculates a fee and is used inside withdraw
Private function used only inside contract
External function that returns total balance

You should clearly decide:
which function must be private
which must be internal
which truly needs to be external

3️⃣ Mappings, Arrays, Structs
Q3 — Simple Attendance Contract

Create contract:
Struct Student { name, presentCount }
Mapping address → Student
Function markPresent() increases count
Function getStudent() returns struct data
Ensure user can mark only themselves, not others

Concepts covered:
struct
mapping
array/mapping read + write

4️⃣ payable, receive(), fallback
Q4 — Ether Vault
Create contract:
Accept ETH deposits
Track deposits per user
withdraw function

Implement:
receive() → accepts ether and updates mapping
fallback() → emits event “Wrong call but ETH received”
Function to check contract balance

Key understanding:
difference between receive & fallback
payable usage
handling ETH securely

5️⃣ require(), revert(), assert()
Q5 — Restricted Withdrawal System
Build:
Owner only withdraw function
Require:
caller must be owner
enough balance must exist
Revert with custom message if wrong user
Use assert to ensure accounting correctness after withdrawal
Focus:
best practice for require vs revert vs assert

✅ 6️⃣ Modifiers
Q6 — Access Control Contract
Create:
Owner stored in state
Modifier onlyOwner
Function changeOwner(address)
Function emergencyStop() that disables one function from working

Ensure:
modifier actually works
emergency stop protects correctly

✅ 7️⃣ Events + Indexed Parameters
Q7 — Transaction Logger
Create:
Event Deposit(address indexed user, uint amount)
Event Withdraw(address indexed user, uint amount)
Functions to deposit and withdraw
Emit events everywhere
Use indexed parameter so user filtering is possible

Goal:
understand indexing
understand how tools query logs


## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
