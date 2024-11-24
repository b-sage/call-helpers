pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {ERC20CallHelper} from "../src/ERC20CallHelper.sol";

contract DeployERC20CallHelper is Script {
    function run() external {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(pk);

        ERC20CallHelper helper = new ERC20CallHelper();

        vm.stopBroadcast();
    }
}
