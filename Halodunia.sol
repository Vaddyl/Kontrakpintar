pragma solidity ^0.4.0;
// Sebuah program yang wajib dibikin

contract greeter {
    string greet = "Hello world!"; 
    
    function set(string x) public { // Fungsi set() untuk memberikan nilai baru kepada fungsi greet
        greet = x;
    }
    
    function get() public constant returns (string){ // Fungsi get() untuk memanggil variabel greet
        return greet;
    }
}
