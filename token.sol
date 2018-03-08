pragma solidity ^0.4.0;
contract token 
{
        string public name = "Token";
        string public symbol = "$$";
        uint256 public decimal= 18;
        uint256 public total_Supply=1000;
    struct su
    {
        address to;
        uint256 value;
        uint256 amount;
    }
    mapping(address=>su)map;
    function transfer(address to,uint256 value)
    {
       require(total_Supply>value);
       map[msg.sender].amount-=value;
       map[to].value+=value;
    }
    function balances(address owner) public constant returns(uint256)
    {
        return map[owner].amount;
    }
    function mint(uint256 amount) 
    {
        require(total_Supply>amount);
        map[msg.sender].amount=+amount;
    }
}
