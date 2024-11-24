pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {EzToken} from "../src/EzToken.sol";

interface IERC20Standard {
    function name() external returns (string memory);
    function symbol() external returns (string memory);
}

interface IERC20Bytes {
    function name() external returns (bytes32);
    function symbol() external returns (bytes32);
}

contract TokenHelperTest is Test {
    EzToken public th;
    address public constant MKR = 0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2;
    address public constant UNI = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;
    address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

    function setUp() public {
        th = new EzToken();
    }

    function getMakerName() internal returns (string memory) {
        return string(abi.encodePacked(IERC20Bytes(MKR).name()));
    }

    function getMakerSymbol() internal returns (string memory) {
        return string(abi.encodePacked(IERC20Bytes(MKR).symbol()));
    }

    //TODO: get uni functions working properly to return name and symbol with null bytes
    function getUniName() internal returns (string memory) {
        return string(bytes(IERC20Standard(UNI).name()));
    }

    function getUniSymbol() internal returns (string memory) {
        return string(bytes(IERC20Standard(UNI).symbol()));
    }

    function testName() public {
        string memory mkr_name = th.name(MKR);
        assertEq(mkr_name, getMakerName());
        string memory uni_name = th.name(UNI);
        //assertEq(uni_name, getUniName());
        string memory usdc_name = th.name(USDC);
        //assertEq(usdc_name, getUsdcName());
    }

    function testSymbol() public {
        string memory mkr_symbol = th.symbol(MKR);
        assertEq(mkr_symbol, getMakerSymbol());
        string memory uni_symbol = th.symbol(UNI);
        //assertEq(uni_symbol, getUniSymbol());
        string memory usdc_symbol = th.symbol(USDC);
        //assertEq(usdc_symbol, getUsdcSymbol());
    }

    function testDecimals() public {
        uint256 mkr_decimals = th.decimals(MKR);
        assertEq(mkr_decimals, 18);
        uint256 uni_decimals = th.decimals(UNI);
        assertEq(uni_decimals, 18);
        uint256 usdc_decimals = th.decimals(USDC);
        assertEq(usdc_decimals, 6);
    }
}
