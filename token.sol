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
            decimals=18;
            totalSupply=1000;
        }
    struct su
    {
        address to;
        uint256 value;
        uint256 amount;
    }
    mapping(address=>su)map;

    function transfer(address to,uint256 value)returns(bool)
    {
       require(totalSupply>value);
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
        require(totalSupply>amount);
        map[msg.sender].amount=+amount;
    }
}
