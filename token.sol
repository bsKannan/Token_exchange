pragma solidity ^0.4.0;
contract ERC20
{
        string public name = "Token";
        string public symbol = "$$";
        uint256 public decimals= 18;
        uint256 total_Supply;
    struct su
    {
        address to;
        uint256 value;
        uint256 amount;
    }
    mapping(address=>su)map;
    function totalSupply()constant returns(uint256)
    {
        return (total_Supply=1000);
    }
    function transfer(address to,uint256 value)returns(bool)
    {
       require(total_Supply>value);
       map[msg.sender].amount-=value;
       map[to].value+=value;
       return true;
    }
    function balanceOf(address owner) public constant returns(uint256)
    {
        return map[owner].amount;
    }
    function mint(uint256 amount) 
    {
        require(total_Supply>amount);
        map[msg.sender].amount=+amount;
    }
}
