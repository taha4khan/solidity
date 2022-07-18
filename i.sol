i1.sol
pragma solidity ^0.8.12;

contract datacontract {

    function getAge() external pure returns (uint) {
        return 25;
    }

    function getHeight() external pure returns (uint) {
        return 5;
    }

    function getName() external pure returns (string memory) {
        return "shaw";
    }
}

//-------------------------
i2.sol
pragma solidity ^0.8.12;

interface data{
    function getAge () external view returns (uint);
    function getHeight() external view returns (uint);
    function getName() external view returns (uint);
}

contract second {
    data D_address;
    constructor(data _aaa){
     D_address = _aaa;
    }
    //address private constant DataContractAddress = 0xbee7ddD295b11b421c849ba060941bD1E17E0435;


    function getAe() external view returns(uint) {
        return D_address.getAge();
    }
}
