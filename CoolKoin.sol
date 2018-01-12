pragma solidity ^0.4.16;

contract CoolKoin {
    
    uint256 totalKoin;
    uint256 private rahasia;
    address public owner;
    mapping (address => uint256) public balances;
    
    function CoolKoin(uint256 total) public{
        owner = msg.sender;
        totalKoin = total; // Total koin CoolCoin dibuat sebanyak yang kita inginkan, tapi tidak bisa ditambahkan lagi totalnya
        rahasia = total;
    }
    
    function Sent(address receiver, uint256 amount) public{
        if(msg.sender != owner) return;
        if(totalKoin < amount) return;
        balances[receiver] += amount;
        totalKoin -= amount;
    }
    
    function Get() public constant returns(uint256){
        return totalKoin;
    }
    
    function Get2(address check) public constant returns(uint256){
        return balances[check];
    }
    
    function areYourCoolEnough(address check) public constant returns(string){
        if(balances[check] > rahasia/10) return "You are cool!!";
        else return "You are not cool enough dude...";
    }
}
