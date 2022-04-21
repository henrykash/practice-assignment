/**
 * SPDX-License-Identifier: MIT
 */

pragma solidity ^0.8.7;

contract Practice2 {
    /// @dev Structs
    struct Entity {
        uint256 data;
        address _address;
    }

    //mapping struct
    mapping(address => Entity) entities;

    //adds new entity to the struct
    function addEntity(uint256 _data) public returns (bool success) {
        Entity memory newEntity;
        newEntity.data = _data;
        newEntity._address = msg.sender;
        entities[msg.sender] = newEntity;
        return true;
    }

    //updates the entities on the struct
    function updateEntity(address _user, uint256 _data)
        public
        returns (bool success)
    {
        entities[_user].data = _data;
        return true;
    }
}
