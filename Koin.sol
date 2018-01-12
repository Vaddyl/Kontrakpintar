pragma solidity ^0.4.16;
// Program Ngak jelas
// Cuma nambahin total koin saja
// Kita juga bisa tau total koin berapa dengan memanggil fungsi Get()
contract Koin {
    
    address owner;
    uint256 public totalKoin = 0;
    mapping (address => uint) public balances;
    
    function Koin() public {
        owner = msg.sender;
    }
    
    function Mint(uint256 total) public {
        if (msg.sender != owner) return;
        totalKoin += total;
    }
    
    function Get() public constant returns(uint256){
        return totalKoin;
    }
    
}
