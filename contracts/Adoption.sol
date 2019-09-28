pragma solidity ^0.5.8;

contract Adoption {
    address[16] public adopters;
    function adopt(uint256 _petId) public returns (uint256) {
        require(_petId >= 0 && _petId <= 15);
        adopters[_petId] = msg.sender;
        return _petId;
    }
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
