//SPDX-License-Identifier:none
pragma solidity ^0.8.12;
contract inheri{
    
    string _message;
    
    constructor(){
       // _message = daatMSG;
        
    }

    function Pirntmessage () external view returns  (string memory) {
       return  _message;
    }

    function PUTmessage (string memory PUTmsg) external  {
        _message=PUTmsg;
    }

        function add (uint256 _a , uint256 _b) public pure returns (uint256) {
        return _a + _b;
    }
}



contract inhritnce is inheri {
    function increase (uint256 _no, uint _count) external  pure returns (uint256) {
        return _count = add(_no,_count);
    }
    //  function erec (string memory erc) external pure returns (string memory) {
    //      return erc = PUTmessage(erc);
    //  }

    }
