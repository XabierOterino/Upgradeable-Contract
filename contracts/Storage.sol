pragma solidity ^0.8.0;
import "../node_modules/@openzeppelin/contracts/security/Pausable.sol";
import "../node_modules/@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract Storage is Pausable, Ownable, ReentrancyGuard{
    

    

    mapping(string =>uint ) s_uint;
    mapping(string => string) s_string;
    mapping(string => bool) s_bool;
    mapping(string => bytes ) s_bytes;
    mapping(string => address) s_address;
    mapping(string => uint[] ) uint_array;
    mapping(string => string[]) string_array;
    mapping(string => bool[]) bool_array;
    mapping(string => bytes []) bytes_array;
    mapping(string => address[]) address_array;

    mapping(string => mapping(address => uint) ) mapping_address_uint;
    mapping(string => mapping(uint => uint) ) mapping_uint_uint;
    mapping(string => mapping(uint => address) ) mapping_uint_address;
    mapping(string => mapping (uint => bool) ) mapping_uint_bool;
    mapping(string => mapping(address => bool)) mapping_address_bool;
    mapping(string => mapping(string => bytes) ) mapping_string_bytes;
    mapping (string => mapping (string => address )) mapping_string_address;
    mapping(string => mapping(bytes=> string ) ) mapping_bytes_string;

    mapping(string => mapping(address => uint[]) ) mapping_address_uintArray;
    mapping(string => mapping(uint => uint[]) ) mapping_uint_uintArray;
    mapping(string => mapping(uint => address[]) ) mapping_uint_addressArray;
    mapping(string => mapping (uint => bool[]) ) mapping_uint_boolArray;
    mapping(string => mapping(address => bool[])) mapping_address_boolArray;
    mapping(string => mapping(string => bytes[]) ) mapping_string_bytesArray;
    mapping(string => mapping(bytes=> string[]) ) mapping_bytes_stringArray;

    mapping(string => mapping (address => mapping (address => bool))) dbl_mapping_address_address_bool;
    mapping(string => mapping (address => mapping (address => uint))) dbl_mapping_address_address_uint;
    mapping(string => mapping (address => mapping (uint => uint))) dbl_mapping_address_uint_uint;
    mapping(string => mapping (uint => mapping (string => uint))) dbl_mapping_uint_string_uint;
    mapping(string => mapping (uint => mapping (bytes => uint))) dbl_mapping_uint_bytes_uint;
    

    

    

}
