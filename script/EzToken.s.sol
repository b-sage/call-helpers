pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {EzToken} from "../src/EzToken.sol";

contract DeployEzToken is Script {
    function run() external {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(pk);

        EzToken eztoken = new EzToken();

        vm.stopBroadcast();
    }
}
