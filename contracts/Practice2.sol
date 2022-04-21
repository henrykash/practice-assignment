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

    // Array
    Entity[] public entities;

    //adds new entity to the struct
    function addEntity(uint256 _data, address _address2) public {
        entities.push(Entity(_data, _address2));
    }

    //updates the entities on the struct
    function updateEntity(
        uint256 _index,
        uint256 _data,
        address _address2
    ) public {
        Entity storage entity = entities[_index];
        entity.data = _data;
        entity._address = _address2;
    }
}
