interface1ST.sol

//SPDX-License-Identifier: no-License
pragma solidity ^0.8.12;

contract Test {
    address _owner;
    mapping(address => uint256) public balance;

    constructor() {
        _owner = msg.sender;
    }

    function getBalance(address account) public view returns(uint256){
        return address(account).balance;
    }

    function setBalance(address account, uint256 _amount) public {
        balance[account] = _amount;
    }

    function getOwner() public view returns(address){
        return _owner;
    }

    function getTime() public view returns(uint256){
        return block.timestamp;
    }

}


//------------------------------------------------------------------------

interface2ND.sol

pragma solidity ^0.8.12;

interface test{
    function getBalance(address account) external view returns(uint256);

    function getOwner() external view returns(address);

    function getTime() external view returns(uint256);

    function setBalance(address account, uint256 _amount) external;

}

contract intf{
    test TEST_CONTARCT;

    constructor(test _contract){
        TEST_CONTARCT = _contract;
    }

    function getTEST_USER_BALANCE (address _account) public view returns(uint256){
        return TEST_CONTARCT.getBalance(_account);
    }

    function getTEST_OWNER () public view returns(address){
        return TEST_CONTARCT.getOwner();
    }

    function getTEST_Time () public view returns(uint256){
        return TEST_CONTARCT.getTime();
    }

    function setNewBalance (address _ac, uint256 _am) public {
        TEST_CONTARCT.setBalance(_ac, _am);
    }



}
