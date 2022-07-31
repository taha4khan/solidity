// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract PetShop {
    address[20]  adopters;
    address owner;
    
    // constructor(){
    //     owner = msg.sender;
    // }

    modifier isOwner(uint256 petId) {
        //require (adopters [petId] == address(0),"ERROR: Only Pet adopter can remove adoption");
        require (adopters [petId] == msg.sender,"ERROR: Only Pet adopter can remove adoption");
        _;
    }

    function adoptPet (uint256 petId) public returns (uint256){
        require (adopters[petId] == address(0),"This is Alredy Adopted!");
        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[20] memory){
        return adopters;
    }

    function getAdopter(uint256 petId ) public view returns (address){
        return adopters[petId]; 
    }

//     function removeAdoption (uint256 petId, address owner) public isOwner(petId) returns (bool){
//         adopters[petId] = address(0);
//         return true;
//     }
// }


   function removeAdoption (uint256 petId) public isOwner(petId) returns (bool){
        adopters[petId] = address(0);
        return true;
    }
}
