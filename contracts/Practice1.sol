/**
 * SPDX-License-Identifier: MIT
 */

pragma solidity ^0.8.7;

contract Practice1 {
    /// @dev Structs
    struct Entity {
        uint256 data;
        address _address;
    }

    // an array of struct
    Entity[] public entities;

    //creates new entity and adds it to the array struct
    function addEntity(uint256 _data) public returns (bool success) {
        Entity memory newEntity;
        newEntity.data = _data;
        newEntity._address = msg.sender;
        entities.push(newEntity);
        return true;
    }
    
    //updates the entity
    function updateEntity(uint256 _index, uint256 _data)
        public
        returns (bool success)
    {
        entities[_index].data = _data;
        return true;
    }
}
