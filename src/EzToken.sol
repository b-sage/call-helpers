pragma solidity ^0.8.13;

contract EzToken {
    function toUint256(bytes memory _bytes) internal pure returns (uint256) {
        uint256 value;
        assembly {
            value := mload(add(_bytes, 0x20))
        }
        return value;
    }

    function name(address target) public view returns (string memory) {
        (bool success, bytes memory returnData) = target.staticcall(abi.encodeWithSignature("name()"));
        if (success) {
            return string(returnData);
        } else {
            return "";
        }
    }

    function symbol(address target) public view returns (string memory) {
        (bool success, bytes memory returnData) = target.staticcall(abi.encodeWithSignature("symbol()"));
        if (success) {
            return string(returnData);
        } else {
            return "";
        }
    }

    function decimals(address target) public view returns (uint256) {
        (bool success, bytes memory returnData) = target.staticcall(abi.encodeWithSignature("decimals()"));
        if (success) {
            return toUint256(returnData);
        } else {
            return 0;
        }
    }

    function token(address target) public view returns (string memory, string memory, uint256) {
        return (name(target), symbol(target), decimals(target));
    }
}
