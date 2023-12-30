// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; //The ^{version} means I am asking it to use the version mentioned, or a more latest one

contract SimpleStorage //This is how you declare a contract
{
    // Basic data types -> boolean, uint(unsigned int), int, address(account address), bytes
    // bool hasFavouriteNumber = true; // or 'false'
    // string favouriteNumber = "Five";
    // address myAddress = 0x2b894F6fd066ee7A2f8af73D5668d897AC855690;
    
    uint256 public favouriteNumber;
    // If not explicitly mentioned, the value stored is the null value, which is zero by default
    // The public key word above means that now the variable declared has visibility set to public
    // By default visibility of anything is set to private, hence the public keyword after the function declaration as well
    // Also, this variable has global range, that is everything within this contract can access this access it freely, exactly similar to how variable scope works in JS
    
    function store(uint256 _favouriteNumber) public
    {
        favouriteNumber = _favouriteNumber;
    }   

    function retrieve() public view returns(uint256)
    {
        return favouriteNumber;
    }
    // 'view' or 'pure' mode of function disallows making updates to data in the blockchain
    // This mode doesn't cost gas, except if it is called by a gas consuming function
}