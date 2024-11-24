# call-helpers
Smart contracts designed to ease burden of offchain data collection

## Description

Tired of writing offchain code that breaks because the contract dev decided it would be a good idea to return token symbol as bytes32?
Look no further! call-helpers is a collection of smart contracts designed to ease this burden and return data in a normalized and predictable format.
Currently, I have only implemented helpers for ERC20, as I have not seen other contract types where this is a common issue,
but if you know of any please create an issue!

## Deployments

**ERC20CallHelper.sol**
| Network          | Address                                                                                                                       |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Base Sepolia     | [0x29F8Af45A5dEe510F3C81331CFF222e97E3D76f7](https://sepolia.basescan.org/address/0x29F8Af45A5dEe510F3C81331CFF222e97E3D76f7) |
| Unichain Sepolia | [0x6D0D6efc7336d3057aCfBDa71866C398537D4587](https://unichain-sepolia.blockscout.com/address/0x6D0D6efc7336d3057aCfBDa71866C398537D4587) |
| OP Sepolia       | [0x99F78055cE097B23B43d7190cDd314b6A44edc87](https://sepolia-optimism.etherscan.io/address/0x99F78055cE097B23B43d7190cDd314b6A44edc87) |
| Sepolia          | [0x6D0D6efc7336d3057aCfBDa71866C398537D4587](https://sepolia.etherscan.io/address/0x6D0D6efc7336d3057aCfBDa71866C398537D4587) |
| Gnosis           | [0x29Df8ca4F6bC9d22d23437e1910fDF0D1f3ce664](https://gnosisscan.io/address/0x29df8ca4f6bc9d22d23437e1910fdf0d1f3ce664)        |

If you deploy elsewhere please create an issue so I can add it here!
