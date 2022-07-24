test.sol
//SPDX-License-Identifier:none
pragma solidity ^0.8.12;

contract first {
    uint count; 
    

function increase() external {
    count ++;
}


function decrease() external {
    count -=1;
}

function show () external view returns (uint256){
    return uint256(count);
}
}

//----------------

TEST.sol
//SPDX-License-Identifier: no-License
pragma solidity ^0.8.12;

interface xyz {
    function increase () external;
    function show () external view returns (uint) ;
}

contract FIRST {
    xyz public CNT_address;
    constructor(xyz _conTract){
        CNT_address= _conTract;
    }

    function doincrease () external  {
        CNT_address.increase();
    }
    
    function dodecrease () external {
        xyz(CNT_address).decrease();
    }

    function doshow() external view returns (uint) {
        return CNT_address.show();
    
    }
    
}
