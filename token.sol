pragma solidity ^0.4.0;
contract ERC20
{
    
    string public name;
    string public symbol;
    uint256 public decimals;
    uint256 public totalSupply;
    function ERC20()
    {
        name="TOKEN";
        symbol="$$";
        decimals=0;
        totalSupply=1000;
    }
    mapping(address=>uint256)map;

    function transfer(address to,uint256 value)returns(bool)
    {
       require(map[msg.sender]>=value);
       map[msg.sender]-=value;
       map[to]+=value;
       return true;
    }
    function balanceOf(address owner) public constant returns(uint256)
    {
        return map[owner];
    }
    function mint(uint256 amount) 
    {
        require(totalSupply>amount);
        map[msg.sender]=amount;
    }
}
