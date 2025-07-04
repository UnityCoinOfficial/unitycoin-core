{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 // SPDX-License-Identifier: MIT\
\
// File: @openzeppelin/contracts@5.0.2/token/ERC20/IERC20.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)\
\
pragma solidity ^0.8.20;\
\
/**\
 * @dev Interface of the ERC20 standard as defined in the EIP.\
 */\
interface IERC20 \{\
    /**\
     * @dev Emitted when `value` tokens are moved from one account (`from`) to\
     * another (`to`).\
     *\
     * Note that `value` may be zero.\
     */\
    event Transfer(address indexed from, address indexed to, uint256 value);\
\
    /**\
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by\
     * a call to \{approve\}. `value` is the new allowance.\
     */\
    event Approval(address indexed owner, address indexed spender, uint256 value);\
\
    /**\
     * @dev Returns the value of tokens in existence.\
     */\
    function totalSupply() external view returns (uint256);\
\
    /**\
     * @dev Returns the value of tokens owned by `account`.\
     */\
    function balanceOf(address account) external view returns (uint256);\
\
    /**\
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.\
     *\
     * Returns a boolean value indicating whether the operation succeeded.\
     *\
     * Emits a \{Transfer\} event.\
     */\
    function transfer(address to, uint256 value) external returns (bool);\
\
    /**\
     * @dev Returns the remaining number of tokens that `spender` will be\
     * allowed to spend on behalf of `owner` through \{transferFrom\}. This is\
     * zero by default.\
     *\
     * This value changes when \{approve\} or \{transferFrom\} are called.\
     */\
    function allowance(address owner, address spender) external view returns (uint256);\
\
    /**\
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the\
     * caller's tokens.\
     *\
     * Returns a boolean value indicating whether the operation succeeded.\
     *\
     * IMPORTANT: Beware that changing an allowance with this method brings the risk\
     * that someone may use both the old and the new allowance by unfortunate\
     * transaction ordering. One possible solution to mitigate this race\
     * condition is to first reduce the spender's allowance to 0 and set the\
     * desired value afterwards:\
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\
     *\
     * Emits an \{Approval\} event.\
     */\
    function approve(address spender, uint256 value) external returns (bool);\
\
    /**\
     * @dev Moves a `value` amount of tokens from `from` to `to` using the\
     * allowance mechanism. `value` is then deducted from the caller's\
     * allowance.\
     *\
     * Returns a boolean value indicating whether the operation succeeded.\
     *\
     * Emits a \{Transfer\} event.\
     */\
    function transferFrom(address from, address to, uint256 value) external returns (bool);\
\}\
\
// File: @openzeppelin/contracts@5.0.2/token/ERC20/extensions/IERC20Metadata.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)\
\
pragma solidity ^0.8.20;\
\
\
/**\
 * @dev Interface for the optional metadata functions from the ERC20 standard.\
 */\
interface IERC20Metadata is IERC20 \{\
    /**\
     * @dev Returns the name of the token.\
     */\
    function name() external view returns (string memory);\
\
    /**\
     * @dev Returns the symbol of the token.\
     */\
    function symbol() external view returns (string memory);\
\
    /**\
     * @dev Returns the decimals places of the token.\
     */\
    function decimals() external view returns (uint8);\
\}\
\
// File: @openzeppelin/contracts@5.0.2/utils/Context.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)\
\
pragma solidity ^0.8.20;\
\
/**\
 * @dev Provides information about the current execution context, including the\
 * sender of the transaction and its data. While these are generally available\
 * via msg.sender and msg.data, they should not be accessed in such a direct\
 * manner, since when dealing with meta-transactions the account sending and\
 * paying for execution may not be the actual sender (as far as an application\
 * is concerned).\
 *\
 * This contract is only required for intermediate, library-like contracts.\
 */\
abstract contract Context \{\
    function _msgSender() internal view virtual returns (address) \{\
        return msg.sender;\
    \}\
\
    function _msgData() internal view virtual returns (bytes calldata) \{\
        return msg.data;\
    \}\
\
    function _contextSuffixLength() internal view virtual returns (uint256) \{\
        return 0;\
    \}\
\}\
\
// File: @openzeppelin/contracts@5.0.2/interfaces/draft-IERC6093.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)\
pragma solidity ^0.8.20;\
\
/**\
 * @dev Standard ERC20 Errors\
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.\
 */\
interface IERC20Errors \{\
    /**\
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.\
     * @param sender Address whose tokens are being transferred.\
     * @param balance Current balance for the interacting account.\
     * @param needed Minimum amount required to perform a transfer.\
     */\
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);\
\
    /**\
     * @dev Indicates a failure with the token `sender`. Used in transfers.\
     * @param sender Address whose tokens are being transferred.\
     */\
    error ERC20InvalidSender(address sender);\
\
    /**\
     * @dev Indicates a failure with the token `receiver`. Used in transfers.\
     * @param receiver Address to which tokens are being transferred.\
     */\
    error ERC20InvalidReceiver(address receiver);\
\
    /**\
     * @dev Indicates a failure with the `spender`\'92s `allowance`. Used in transfers.\
     * @param spender Address that may be allowed to operate on tokens without being their owner.\
     * @param allowance Amount of tokens a `spender` is allowed to operate with.\
     * @param needed Minimum amount required to perform a transfer.\
     */\
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);\
\
    /**\
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.\
     * @param approver Address initiating an approval operation.\
     */\
    error ERC20InvalidApprover(address approver);\
\
    /**\
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.\
     * @param spender Address that may be allowed to operate on tokens without being their owner.\
     */\
    error ERC20InvalidSpender(address spender);\
\}\
\
/**\
 * @dev Standard ERC721 Errors\
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.\
 */\
interface IERC721Errors \{\
    /**\
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.\
     * Used in balance queries.\
     * @param owner Address of the current owner of a token.\
     */\
    error ERC721InvalidOwner(address owner);\
\
    /**\
     * @dev Indicates a `tokenId` whose `owner` is the zero address.\
     * @param tokenId Identifier number of a token.\
     */\
    error ERC721NonexistentToken(uint256 tokenId);\
\
    /**\
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.\
     * @param sender Address whose tokens are being transferred.\
     * @param tokenId Identifier number of a token.\
     * @param owner Address of the current owner of a token.\
     */\
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);\
\
    /**\
     * @dev Indicates a failure with the token `sender`. Used in transfers.\
     * @param sender Address whose tokens are being transferred.\
     */\
    error ERC721InvalidSender(address sender);\
\
    /**\
     * @dev Indicates a failure with the token `receiver`. Used in transfers.\
     * @param receiver Address to which tokens are being transferred.\
     */\
    error ERC721InvalidReceiver(address receiver);\
\
    /**\
     * @dev Indicates a failure with the `operator`\'92s approval. Used in transfers.\
     * @param operator Address that may be allowed to operate on tokens without being their owner.\
     * @param tokenId Identifier number of a token.\
     */\
    error ERC721InsufficientApproval(address operator, uint256 tokenId);\
\
    /**\
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.\
     * @param approver Address initiating an approval operation.\
     */\
    error ERC721InvalidApprover(address approver);\
\
    /**\
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.\
     * @param operator Address that may be allowed to operate on tokens without being their owner.\
     */\
    error ERC721InvalidOperator(address operator);\
\}\
\
/**\
 * @dev Standard ERC1155 Errors\
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.\
 */\
interface IERC1155Errors \{\
    /**\
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.\
     * @param sender Address whose tokens are being transferred.\
     * @param balance Current balance for the interacting account.\
     * @param needed Minimum amount required to perform a transfer.\
     * @param tokenId Identifier number of a token.\
     */\
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);\
\
    /**\
     * @dev Indicates a failure with the token `sender`. Used in transfers.\
     * @param sender Address whose tokens are being transferred.\
     */\
    error ERC1155InvalidSender(address sender);\
\
    /**\
     * @dev Indicates a failure with the token `receiver`. Used in transfers.\
     * @param receiver Address to which tokens are being transferred.\
     */\
    error ERC1155InvalidReceiver(address receiver);\
\
    /**\
     * @dev Indicates a failure with the `operator`\'92s approval. Used in transfers.\
     * @param operator Address that may be allowed to operate on tokens without being their owner.\
     * @param owner Address of the current owner of a token.\
     */\
    error ERC1155MissingApprovalForAll(address operator, address owner);\
\
    /**\
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.\
     * @param approver Address initiating an approval operation.\
     */\
    error ERC1155InvalidApprover(address approver);\
\
    /**\
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.\
     * @param operator Address that may be allowed to operate on tokens without being their owner.\
     */\
    error ERC1155InvalidOperator(address operator);\
\
    /**\
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.\
     * Used in batch transfers.\
     * @param idsLength Length of the array of token identifiers\
     * @param valuesLength Length of the array of token amounts\
     */\
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);\
\}\
\
// File: @openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)\
\
pragma solidity ^0.8.20;\
\
\
\
\
\
/**\
 * @dev Implementation of the \{IERC20\} interface.\
 *\
 * This implementation is agnostic to the way tokens are created. This means\
 * that a supply mechanism has to be added in a derived contract using \{_mint\}.\
 *\
 * TIP: For a detailed writeup see our guide\
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How\
 * to implement supply mechanisms].\
 *\
 * The default value of \{decimals\} is 18. To change this, you should override\
 * this function so it returns a different value.\
 *\
 * We have followed general OpenZeppelin Contracts guidelines: functions revert\
 * instead returning `false` on failure. This behavior is nonetheless\
 * conventional and does not conflict with the expectations of ERC20\
 * applications.\
 *\
 * Additionally, an \{Approval\} event is emitted on calls to \{transferFrom\}.\
 * This allows applications to reconstruct the allowance for all accounts just\
 * by listening to said events. Other implementations of the EIP may not emit\
 * these events, as it isn't required by the specification.\
 */\
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors \{\
    mapping(address account => uint256) private _balances;\
\
    mapping(address account => mapping(address spender => uint256)) private _allowances;\
\
    uint256 private _totalSupply;\
\
    string private _name;\
    string private _symbol;\
\
    /**\
     * @dev Sets the values for \{name\} and \{symbol\}.\
     *\
     * All two of these values are immutable: they can only be set once during\
     * construction.\
     */\
    constructor(string memory name_, string memory symbol_) \{\
        _name = name_;\
        _symbol = symbol_;\
    \}\
\
    /**\
     * @dev Returns the name of the token.\
     */\
    function name() public view virtual returns (string memory) \{\
        return _name;\
    \}\
\
    /**\
     * @dev Returns the symbol of the token, usually a shorter version of the\
     * name.\
     */\
    function symbol() public view virtual returns (string memory) \{\
        return _symbol;\
    \}\
\
    /**\
     * @dev Returns the number of decimals used to get its user representation.\
     * For example, if `decimals` equals `2`, a balance of `505` tokens should\
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).\
     *\
     * Tokens usually opt for a value of 18, imitating the relationship between\
     * Ether and Wei. This is the default value returned by this function, unless\
     * it's overridden.\
     *\
     * NOTE: This information is only used for _display_ purposes: it in\
     * no way affects any of the arithmetic of the contract, including\
     * \{IERC20-balanceOf\} and \{IERC20-transfer\}.\
     */\
    function decimals() public view virtual returns (uint8) \{\
        return 18;\
    \}\
\
    /**\
     * @dev See \{IERC20-totalSupply\}.\
     */\
    function totalSupply() public view virtual returns (uint256) \{\
        return _totalSupply;\
    \}\
\
    /**\
     * @dev See \{IERC20-balanceOf\}.\
     */\
    function balanceOf(address account) public view virtual returns (uint256) \{\
        return _balances[account];\
    \}\
\
    /**\
     * @dev See \{IERC20-transfer\}.\
     *\
     * Requirements:\
     *\
     * - `to` cannot be the zero address.\
     * - the caller must have a balance of at least `value`.\
     */\
    function transfer(address to, uint256 value) public virtual returns (bool) \{\
        address owner = _msgSender();\
        _transfer(owner, to, value);\
        return true;\
    \}\
\
    /**\
     * @dev See \{IERC20-allowance\}.\
     */\
    function allowance(address owner, address spender) public view virtual returns (uint256) \{\
        return _allowances[owner][spender];\
    \}\
\
    /**\
     * @dev See \{IERC20-approve\}.\
     *\
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on\
     * `transferFrom`. This is semantically equivalent to an infinite approval.\
     *\
     * Requirements:\
     *\
     * - `spender` cannot be the zero address.\
     */\
    function approve(address spender, uint256 value) public virtual returns (bool) \{\
        address owner = _msgSender();\
        _approve(owner, spender, value);\
        return true;\
    \}\
\
    /**\
     * @dev See \{IERC20-transferFrom\}.\
     *\
     * Emits an \{Approval\} event indicating the updated allowance. This is not\
     * required by the EIP. See the note at the beginning of \{ERC20\}.\
     *\
     * NOTE: Does not update the allowance if the current allowance\
     * is the maximum `uint256`.\
     *\
     * Requirements:\
     *\
     * - `from` and `to` cannot be the zero address.\
     * - `from` must have a balance of at least `value`.\
     * - the caller must have allowance for ``from``'s tokens of at least\
     * `value`.\
     */\
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) \{\
        address spender = _msgSender();\
        _spendAllowance(from, spender, value);\
        _transfer(from, to, value);\
        return true;\
    \}\
\
    /**\
     * @dev Moves a `value` amount of tokens from `from` to `to`.\
     *\
     * This internal function is equivalent to \{transfer\}, and can be used to\
     * e.g. implement automatic token fees, slashing mechanisms, etc.\
     *\
     * Emits a \{Transfer\} event.\
     *\
     * NOTE: This function is not virtual, \{_update\} should be overridden instead.\
     */\
    function _transfer(address from, address to, uint256 value) internal \{\
        if (from == address(0)) \{\
            revert ERC20InvalidSender(address(0));\
        \}\
        if (to == address(0)) \{\
            revert ERC20InvalidReceiver(address(0));\
        \}\
        _update(from, to, value);\
    \}\
\
    /**\
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`\
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding\
     * this function.\
     *\
     * Emits a \{Transfer\} event.\
     */\
    function _update(address from, address to, uint256 value) internal virtual \{\
        if (from == address(0)) \{\
            // Overflow check required: The rest of the code assumes that totalSupply never overflows\
            _totalSupply += value;\
        \} else \{\
            uint256 fromBalance = _balances[from];\
            if (fromBalance < value) \{\
                revert ERC20InsufficientBalance(from, fromBalance, value);\
            \}\
            unchecked \{\
                // Overflow not possible: value <= fromBalance <= totalSupply.\
                _balances[from] = fromBalance - value;\
            \}\
        \}\
\
        if (to == address(0)) \{\
            unchecked \{\
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.\
                _totalSupply -= value;\
            \}\
        \} else \{\
            unchecked \{\
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.\
                _balances[to] += value;\
            \}\
        \}\
\
        emit Transfer(from, to, value);\
    \}\
\
    /**\
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).\
     * Relies on the `_update` mechanism\
     *\
     * Emits a \{Transfer\} event with `from` set to the zero address.\
     *\
     * NOTE: This function is not virtual, \{_update\} should be overridden instead.\
     */\
    function _mint(address account, uint256 value) internal \{\
        if (account == address(0)) \{\
            revert ERC20InvalidReceiver(address(0));\
        \}\
        _update(address(0), account, value);\
    \}\
\
    /**\
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.\
     * Relies on the `_update` mechanism.\
     *\
     * Emits a \{Transfer\} event with `to` set to the zero address.\
     *\
     * NOTE: This function is not virtual, \{_update\} should be overridden instead\
     */\
    function _burn(address account, uint256 value) internal \{\
        if (account == address(0)) \{\
            revert ERC20InvalidSender(address(0));\
        \}\
        _update(account, address(0), value);\
    \}\
\
    /**\
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.\
     *\
     * This internal function is equivalent to `approve`, and can be used to\
     * e.g. set automatic allowances for certain subsystems, etc.\
     *\
     * Emits an \{Approval\} event.\
     *\
     * Requirements:\
     *\
     * - `owner` cannot be the zero address.\
     * - `spender` cannot be the zero address.\
     *\
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.\
     */\
    function _approve(address owner, address spender, uint256 value) internal \{\
        _approve(owner, spender, value, true);\
    \}\
\
    /**\
     * @dev Variant of \{_approve\} with an optional flag to enable or disable the \{Approval\} event.\
     *\
     * By default (when calling \{_approve\}) the flag is set to true. On the other hand, approval changes made by\
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any\
     * `Approval` event during `transferFrom` operations.\
     *\
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to\
     * true using the following override:\
     * ```\
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override \{\
     *     super._approve(owner, spender, value, true);\
     * \}\
     * ```\
     *\
     * Requirements are the same as \{_approve\}.\
     */\
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual \{\
        if (owner == address(0)) \{\
            revert ERC20InvalidApprover(address(0));\
        \}\
        if (spender == address(0)) \{\
            revert ERC20InvalidSpender(address(0));\
        \}\
        _allowances[owner][spender] = value;\
        if (emitEvent) \{\
            emit Approval(owner, spender, value);\
        \}\
    \}\
\
    /**\
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.\
     *\
     * Does not update the allowance value in case of infinite allowance.\
     * Revert if not enough allowance is available.\
     *\
     * Does not emit an \{Approval\} event.\
     */\
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual \{\
        uint256 currentAllowance = allowance(owner, spender);\
        if (currentAllowance != type(uint256).max) \{\
            if (currentAllowance < value) \{\
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);\
            \}\
            unchecked \{\
                _approve(owner, spender, currentAllowance - value, false);\
            \}\
        \}\
    \}\
\}\
\
// File: @openzeppelin/contracts@5.0.2/access/Ownable.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)\
\
pragma solidity ^0.8.20;\
\
\
/**\
 * @dev Contract module which provides a basic access control mechanism, where\
 * there is an account (an owner) that can be granted exclusive access to\
 * specific functions.\
 *\
 * The initial owner is set to the address provided by the deployer. This can\
 * later be changed with \{transferOwnership\}.\
 *\
 * This module is used through inheritance. It will make available the modifier\
 * `onlyOwner`, which can be applied to your functions to restrict their use to\
 * the owner.\
 */\
abstract contract Ownable is Context \{\
    address private _owner;\
\
    /**\
     * @dev The caller account is not authorized to perform an operation.\
     */\
    error OwnableUnauthorizedAccount(address account);\
\
    /**\
     * @dev The owner is not a valid owner account. (eg. `address(0)`)\
     */\
    error OwnableInvalidOwner(address owner);\
\
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\
\
    /**\
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.\
     */\
    constructor(address initialOwner) \{\
        if (initialOwner == address(0)) \{\
            revert OwnableInvalidOwner(address(0));\
        \}\
        _transferOwnership(initialOwner);\
    \}\
\
    /**\
     * @dev Throws if called by any account other than the owner.\
     */\
    modifier onlyOwner() \{\
        _checkOwner();\
        _;\
    \}\
\
    /**\
     * @dev Returns the address of the current owner.\
     */\
    function owner() public view virtual returns (address) \{\
        return _owner;\
    \}\
\
    /**\
     * @dev Throws if the sender is not the owner.\
     */\
    function _checkOwner() internal view virtual \{\
        if (owner() != _msgSender()) \{\
            revert OwnableUnauthorizedAccount(_msgSender());\
        \}\
    \}\
\
    /**\
     * @dev Leaves the contract without owner. It will not be possible to call\
     * `onlyOwner` functions. Can only be called by the current owner.\
     *\
     * NOTE: Renouncing ownership will leave the contract without an owner,\
     * thereby disabling any functionality that is only available to the owner.\
     */\
    function renounceOwnership() public virtual onlyOwner \{\
        _transferOwnership(address(0));\
    \}\
\
    /**\
     * @dev Transfers ownership of the contract to a new account (`newOwner`).\
     * Can only be called by the current owner.\
     */\
    function transferOwnership(address newOwner) public virtual onlyOwner \{\
        if (newOwner == address(0)) \{\
            revert OwnableInvalidOwner(address(0));\
        \}\
        _transferOwnership(newOwner);\
    \}\
\
    /**\
     * @dev Transfers ownership of the contract to a new account (`newOwner`).\
     * Internal function without access restriction.\
     */\
    function _transferOwnership(address newOwner) internal virtual \{\
        address oldOwner = _owner;\
        _owner = newOwner;\
        emit OwnershipTransferred(oldOwner, newOwner);\
    \}\
\}\
\
// File: @openzeppelin/contracts@5.0.2/utils/ReentrancyGuard.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ReentrancyGuard.sol)\
\
pragma solidity ^0.8.20;\
\
/**\
 * @dev Contract module that helps prevent reentrant calls to a function.\
 *\
 * Inheriting from `ReentrancyGuard` will make the \{nonReentrant\} modifier\
 * available, which can be applied to functions to make sure there are no nested\
 * (reentrant) calls to them.\
 *\
 * Note that because there is a single `nonReentrant` guard, functions marked as\
 * `nonReentrant` may not call one another. This can be worked around by making\
 * those functions `private`, and then adding `external` `nonReentrant` entry\
 * points to them.\
 *\
 * TIP: If you would like to learn more about reentrancy and alternative ways\
 * to protect against it, check out our blog post\
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].\
 */\
abstract contract ReentrancyGuard \{\
    // Booleans are more expensive than uint256 or any type that takes up a full\
    // word because each write operation emits an extra SLOAD to first read the\
    // slot's contents, replace the bits taken up by the boolean, and then write\
    // back. This is the compiler's defense against contract upgrades and\
    // pointer aliasing, and it cannot be disabled.\
\
    // The values being non-zero value makes deployment a bit more expensive,\
    // but in exchange the refund on every call to nonReentrant will be lower in\
    // amount. Since refunds are capped to a percentage of the total\
    // transaction's gas, it is best to keep them low in cases like this one, to\
    // increase the likelihood of the full refund coming into effect.\
    uint256 private constant NOT_ENTERED = 1;\
    uint256 private constant ENTERED = 2;\
\
    uint256 private _status;\
\
    /**\
     * @dev Unauthorized reentrant call.\
     */\
    error ReentrancyGuardReentrantCall();\
\
    constructor() \{\
        _status = NOT_ENTERED;\
    \}\
\
    /**\
     * @dev Prevents a contract from calling itself, directly or indirectly.\
     * Calling a `nonReentrant` function from another `nonReentrant`\
     * function is not supported. It is possible to prevent this from happening\
     * by making the `nonReentrant` function external, and making it call a\
     * `private` function that does the actual work.\
     */\
    modifier nonReentrant() \{\
        _nonReentrantBefore();\
        _;\
        _nonReentrantAfter();\
    \}\
\
    function _nonReentrantBefore() private \{\
        // On the first call to nonReentrant, _status will be NOT_ENTERED\
        if (_status == ENTERED) \{\
            revert ReentrancyGuardReentrantCall();\
        \}\
\
        // Any calls to nonReentrant after this point will fail\
        _status = ENTERED;\
    \}\
\
    function _nonReentrantAfter() private \{\
        // By storing the original value once again, a refund is triggered (see\
        // https://eips.ethereum.org/EIPS/eip-2200)\
        _status = NOT_ENTERED;\
    \}\
\
    /**\
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a\
     * `nonReentrant` function in the call stack.\
     */\
    function _reentrancyGuardEntered() internal view returns (bool) \{\
        return _status == ENTERED;\
    \}\
\}\
\
// File: @openzeppelin/contracts@5.0.2/utils/math/SafeCast.sol\
\
\
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SafeCast.sol)\
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.\
\
pragma solidity ^0.8.20;\
\
/**\
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow\
 * checks.\
 *\
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can\
 * easily result in undesired exploitation or bugs, since developers usually\
 * assume that overflows raise errors. `SafeCast` restores this intuition by\
 * reverting the transaction when such an operation overflows.\
 *\
 * Using this library instead of the unchecked operations eliminates an entire\
 * class of bugs, so it's recommended to use it always.\
 */\
library SafeCast \{\
    /**\
     * @dev Value doesn't fit in an uint of `bits` size.\
     */\
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);\
\
    /**\
     * @dev An int value doesn't fit in an uint of `bits` size.\
     */\
    error SafeCastOverflowedIntToUint(int256 value);\
\
    /**\
     * @dev Value doesn't fit in an int of `bits` size.\
     */\
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);\
\
    /**\
     * @dev An uint value doesn't fit in an int of `bits` size.\
     */\
    error SafeCastOverflowedUintToInt(uint256 value);\
\
    /**\
     * @dev Returns the downcasted uint248 from uint256, reverting on\
     * overflow (when the input is greater than largest uint248).\
     *\
     * Counterpart to Solidity's `uint248` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 248 bits\
     */\
    function toUint248(uint256 value) internal pure returns (uint248) \{\
        if (value > type(uint248).max) \{\
            revert SafeCastOverflowedUintDowncast(248, value);\
        \}\
        return uint248(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint240 from uint256, reverting on\
     * overflow (when the input is greater than largest uint240).\
     *\
     * Counterpart to Solidity's `uint240` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 240 bits\
     */\
    function toUint240(uint256 value) internal pure returns (uint240) \{\
        if (value > type(uint240).max) \{\
            revert SafeCastOverflowedUintDowncast(240, value);\
        \}\
        return uint240(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint232 from uint256, reverting on\
     * overflow (when the input is greater than largest uint232).\
     *\
     * Counterpart to Solidity's `uint232` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 232 bits\
     */\
    function toUint232(uint256 value) internal pure returns (uint232) \{\
        if (value > type(uint232).max) \{\
            revert SafeCastOverflowedUintDowncast(232, value);\
        \}\
        return uint232(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint224 from uint256, reverting on\
     * overflow (when the input is greater than largest uint224).\
     *\
     * Counterpart to Solidity's `uint224` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 224 bits\
     */\
    function toUint224(uint256 value) internal pure returns (uint224) \{\
        if (value > type(uint224).max) \{\
            revert SafeCastOverflowedUintDowncast(224, value);\
        \}\
        return uint224(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint216 from uint256, reverting on\
     * overflow (when the input is greater than largest uint216).\
     *\
     * Counterpart to Solidity's `uint216` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 216 bits\
     */\
    function toUint216(uint256 value) internal pure returns (uint216) \{\
        if (value > type(uint216).max) \{\
            revert SafeCastOverflowedUintDowncast(216, value);\
        \}\
        return uint216(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint208 from uint256, reverting on\
     * overflow (when the input is greater than largest uint208).\
     *\
     * Counterpart to Solidity's `uint208` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 208 bits\
     */\
    function toUint208(uint256 value) internal pure returns (uint208) \{\
        if (value > type(uint208).max) \{\
            revert SafeCastOverflowedUintDowncast(208, value);\
        \}\
        return uint208(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint200 from uint256, reverting on\
     * overflow (when the input is greater than largest uint200).\
     *\
     * Counterpart to Solidity's `uint200` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 200 bits\
     */\
    function toUint200(uint256 value) internal pure returns (uint200) \{\
        if (value > type(uint200).max) \{\
            revert SafeCastOverflowedUintDowncast(200, value);\
        \}\
        return uint200(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint192 from uint256, reverting on\
     * overflow (when the input is greater than largest uint192).\
     *\
     * Counterpart to Solidity's `uint192` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 192 bits\
     */\
    function toUint192(uint256 value) internal pure returns (uint192) \{\
        if (value > type(uint192).max) \{\
            revert SafeCastOverflowedUintDowncast(192, value);\
        \}\
        return uint192(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint184 from uint256, reverting on\
     * overflow (when the input is greater than largest uint184).\
     *\
     * Counterpart to Solidity's `uint184` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 184 bits\
     */\
    function toUint184(uint256 value) internal pure returns (uint184) \{\
        if (value > type(uint184).max) \{\
            revert SafeCastOverflowedUintDowncast(184, value);\
        \}\
        return uint184(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint176 from uint256, reverting on\
     * overflow (when the input is greater than largest uint176).\
     *\
     * Counterpart to Solidity's `uint176` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 176 bits\
     */\
    function toUint176(uint256 value) internal pure returns (uint176) \{\
        if (value > type(uint176).max) \{\
            revert SafeCastOverflowedUintDowncast(176, value);\
        \}\
        return uint176(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint168 from uint256, reverting on\
     * overflow (when the input is greater than largest uint168).\
     *\
     * Counterpart to Solidity's `uint168` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 168 bits\
     */\
    function toUint168(uint256 value) internal pure returns (uint168) \{\
        if (value > type(uint168).max) \{\
            revert SafeCastOverflowedUintDowncast(168, value);\
        \}\
        return uint168(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint160 from uint256, reverting on\
     * overflow (when the input is greater than largest uint160).\
     *\
     * Counterpart to Solidity's `uint160` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 160 bits\
     */\
    function toUint160(uint256 value) internal pure returns (uint160) \{\
        if (value > type(uint160).max) \{\
            revert SafeCastOverflowedUintDowncast(160, value);\
        \}\
        return uint160(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint152 from uint256, reverting on\
     * overflow (when the input is greater than largest uint152).\
     *\
     * Counterpart to Solidity's `uint152` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 152 bits\
     */\
    function toUint152(uint256 value) internal pure returns (uint152) \{\
        if (value > type(uint152).max) \{\
            revert SafeCastOverflowedUintDowncast(152, value);\
        \}\
        return uint152(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint144 from uint256, reverting on\
     * overflow (when the input is greater than largest uint144).\
     *\
     * Counterpart to Solidity's `uint144` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 144 bits\
     */\
    function toUint144(uint256 value) internal pure returns (uint144) \{\
        if (value > type(uint144).max) \{\
            revert SafeCastOverflowedUintDowncast(144, value);\
        \}\
        return uint144(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint136 from uint256, reverting on\
     * overflow (when the input is greater than largest uint136).\
     *\
     * Counterpart to Solidity's `uint136` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 136 bits\
     */\
    function toUint136(uint256 value) internal pure returns (uint136) \{\
        if (value > type(uint136).max) \{\
            revert SafeCastOverflowedUintDowncast(136, value);\
        \}\
        return uint136(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint128 from uint256, reverting on\
     * overflow (when the input is greater than largest uint128).\
     *\
     * Counterpart to Solidity's `uint128` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 128 bits\
     */\
    function toUint128(uint256 value) internal pure returns (uint128) \{\
        if (value > type(uint128).max) \{\
            revert SafeCastOverflowedUintDowncast(128, value);\
        \}\
        return uint128(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint120 from uint256, reverting on\
     * overflow (when the input is greater than largest uint120).\
     *\
     * Counterpart to Solidity's `uint120` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 120 bits\
     */\
    function toUint120(uint256 value) internal pure returns (uint120) \{\
        if (value > type(uint120).max) \{\
            revert SafeCastOverflowedUintDowncast(120, value);\
        \}\
        return uint120(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint112 from uint256, reverting on\
     * overflow (when the input is greater than largest uint112).\
     *\
     * Counterpart to Solidity's `uint112` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 112 bits\
     */\
    function toUint112(uint256 value) internal pure returns (uint112) \{\
        if (value > type(uint112).max) \{\
            revert SafeCastOverflowedUintDowncast(112, value);\
        \}\
        return uint112(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint104 from uint256, reverting on\
     * overflow (when the input is greater than largest uint104).\
     *\
     * Counterpart to Solidity's `uint104` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 104 bits\
     */\
    function toUint104(uint256 value) internal pure returns (uint104) \{\
        if (value > type(uint104).max) \{\
            revert SafeCastOverflowedUintDowncast(104, value);\
        \}\
        return uint104(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint96 from uint256, reverting on\
     * overflow (when the input is greater than largest uint96).\
     *\
     * Counterpart to Solidity's `uint96` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 96 bits\
     */\
    function toUint96(uint256 value) internal pure returns (uint96) \{\
        if (value > type(uint96).max) \{\
            revert SafeCastOverflowedUintDowncast(96, value);\
        \}\
        return uint96(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint88 from uint256, reverting on\
     * overflow (when the input is greater than largest uint88).\
     *\
     * Counterpart to Solidity's `uint88` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 88 bits\
     */\
    function toUint88(uint256 value) internal pure returns (uint88) \{\
        if (value > type(uint88).max) \{\
            revert SafeCastOverflowedUintDowncast(88, value);\
        \}\
        return uint88(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint80 from uint256, reverting on\
     * overflow (when the input is greater than largest uint80).\
     *\
     * Counterpart to Solidity's `uint80` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 80 bits\
     */\
    function toUint80(uint256 value) internal pure returns (uint80) \{\
        if (value > type(uint80).max) \{\
            revert SafeCastOverflowedUintDowncast(80, value);\
        \}\
        return uint80(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint72 from uint256, reverting on\
     * overflow (when the input is greater than largest uint72).\
     *\
     * Counterpart to Solidity's `uint72` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 72 bits\
     */\
    function toUint72(uint256 value) internal pure returns (uint72) \{\
        if (value > type(uint72).max) \{\
            revert SafeCastOverflowedUintDowncast(72, value);\
        \}\
        return uint72(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint64 from uint256, reverting on\
     * overflow (when the input is greater than largest uint64).\
     *\
     * Counterpart to Solidity's `uint64` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 64 bits\
     */\
    function toUint64(uint256 value) internal pure returns (uint64) \{\
        if (value > type(uint64).max) \{\
            revert SafeCastOverflowedUintDowncast(64, value);\
        \}\
        return uint64(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint56 from uint256, reverting on\
     * overflow (when the input is greater than largest uint56).\
     *\
     * Counterpart to Solidity's `uint56` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 56 bits\
     */\
    function toUint56(uint256 value) internal pure returns (uint56) \{\
        if (value > type(uint56).max) \{\
            revert SafeCastOverflowedUintDowncast(56, value);\
        \}\
        return uint56(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint48 from uint256, reverting on\
     * overflow (when the input is greater than largest uint48).\
     *\
     * Counterpart to Solidity's `uint48` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 48 bits\
     */\
    function toUint48(uint256 value) internal pure returns (uint48) \{\
        if (value > type(uint48).max) \{\
            revert SafeCastOverflowedUintDowncast(48, value);\
        \}\
        return uint48(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint40 from uint256, reverting on\
     * overflow (when the input is greater than largest uint40).\
     *\
     * Counterpart to Solidity's `uint40` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 40 bits\
     */\
    function toUint40(uint256 value) internal pure returns (uint40) \{\
        if (value > type(uint40).max) \{\
            revert SafeCastOverflowedUintDowncast(40, value);\
        \}\
        return uint40(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint32 from uint256, reverting on\
     * overflow (when the input is greater than largest uint32).\
     *\
     * Counterpart to Solidity's `uint32` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 32 bits\
     */\
    function toUint32(uint256 value) internal pure returns (uint32) \{\
        if (value > type(uint32).max) \{\
            revert SafeCastOverflowedUintDowncast(32, value);\
        \}\
        return uint32(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint24 from uint256, reverting on\
     * overflow (when the input is greater than largest uint24).\
     *\
     * Counterpart to Solidity's `uint24` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 24 bits\
     */\
    function toUint24(uint256 value) internal pure returns (uint24) \{\
        if (value > type(uint24).max) \{\
            revert SafeCastOverflowedUintDowncast(24, value);\
        \}\
        return uint24(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint16 from uint256, reverting on\
     * overflow (when the input is greater than largest uint16).\
     *\
     * Counterpart to Solidity's `uint16` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 16 bits\
     */\
    function toUint16(uint256 value) internal pure returns (uint16) \{\
        if (value > type(uint16).max) \{\
            revert SafeCastOverflowedUintDowncast(16, value);\
        \}\
        return uint16(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted uint8 from uint256, reverting on\
     * overflow (when the input is greater than largest uint8).\
     *\
     * Counterpart to Solidity's `uint8` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 8 bits\
     */\
    function toUint8(uint256 value) internal pure returns (uint8) \{\
        if (value > type(uint8).max) \{\
            revert SafeCastOverflowedUintDowncast(8, value);\
        \}\
        return uint8(value);\
    \}\
\
    /**\
     * @dev Converts a signed int256 into an unsigned uint256.\
     *\
     * Requirements:\
     *\
     * - input must be greater than or equal to 0.\
     */\
    function toUint256(int256 value) internal pure returns (uint256) \{\
        if (value < 0) \{\
            revert SafeCastOverflowedIntToUint(value);\
        \}\
        return uint256(value);\
    \}\
\
    /**\
     * @dev Returns the downcasted int248 from int256, reverting on\
     * overflow (when the input is less than smallest int248 or\
     * greater than largest int248).\
     *\
     * Counterpart to Solidity's `int248` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 248 bits\
     */\
    function toInt248(int256 value) internal pure returns (int248 downcasted) \{\
        downcasted = int248(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(248, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int240 from int256, reverting on\
     * overflow (when the input is less than smallest int240 or\
     * greater than largest int240).\
     *\
     * Counterpart to Solidity's `int240` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 240 bits\
     */\
    function toInt240(int256 value) internal pure returns (int240 downcasted) \{\
        downcasted = int240(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(240, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int232 from int256, reverting on\
     * overflow (when the input is less than smallest int232 or\
     * greater than largest int232).\
     *\
     * Counterpart to Solidity's `int232` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 232 bits\
     */\
    function toInt232(int256 value) internal pure returns (int232 downcasted) \{\
        downcasted = int232(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(232, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int224 from int256, reverting on\
     * overflow (when the input is less than smallest int224 or\
     * greater than largest int224).\
     *\
     * Counterpart to Solidity's `int224` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 224 bits\
     */\
    function toInt224(int256 value) internal pure returns (int224 downcasted) \{\
        downcasted = int224(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(224, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int216 from int256, reverting on\
     * overflow (when the input is less than smallest int216 or\
     * greater than largest int216).\
     *\
     * Counterpart to Solidity's `int216` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 216 bits\
     */\
    function toInt216(int256 value) internal pure returns (int216 downcasted) \{\
        downcasted = int216(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(216, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int208 from int256, reverting on\
     * overflow (when the input is less than smallest int208 or\
     * greater than largest int208).\
     *\
     * Counterpart to Solidity's `int208` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 208 bits\
     */\
    function toInt208(int256 value) internal pure returns (int208 downcasted) \{\
        downcasted = int208(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(208, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int200 from int256, reverting on\
     * overflow (when the input is less than smallest int200 or\
     * greater than largest int200).\
     *\
     * Counterpart to Solidity's `int200` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 200 bits\
     */\
    function toInt200(int256 value) internal pure returns (int200 downcasted) \{\
        downcasted = int200(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(200, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int192 from int256, reverting on\
     * overflow (when the input is less than smallest int192 or\
     * greater than largest int192).\
     *\
     * Counterpart to Solidity's `int192` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 192 bits\
     */\
    function toInt192(int256 value) internal pure returns (int192 downcasted) \{\
        downcasted = int192(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(192, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int184 from int256, reverting on\
     * overflow (when the input is less than smallest int184 or\
     * greater than largest int184).\
     *\
     * Counterpart to Solidity's `int184` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 184 bits\
     */\
    function toInt184(int256 value) internal pure returns (int184 downcasted) \{\
        downcasted = int184(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(184, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int176 from int256, reverting on\
     * overflow (when the input is less than smallest int176 or\
     * greater than largest int176).\
     *\
     * Counterpart to Solidity's `int176` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 176 bits\
     */\
    function toInt176(int256 value) internal pure returns (int176 downcasted) \{\
        downcasted = int176(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(176, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int168 from int256, reverting on\
     * overflow (when the input is less than smallest int168 or\
     * greater than largest int168).\
     *\
     * Counterpart to Solidity's `int168` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 168 bits\
     */\
    function toInt168(int256 value) internal pure returns (int168 downcasted) \{\
        downcasted = int168(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(168, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int160 from int256, reverting on\
     * overflow (when the input is less than smallest int160 or\
     * greater than largest int160).\
     *\
     * Counterpart to Solidity's `int160` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 160 bits\
     */\
    function toInt160(int256 value) internal pure returns (int160 downcasted) \{\
        downcasted = int160(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(160, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int152 from int256, reverting on\
     * overflow (when the input is less than smallest int152 or\
     * greater than largest int152).\
     *\
     * Counterpart to Solidity's `int152` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 152 bits\
     */\
    function toInt152(int256 value) internal pure returns (int152 downcasted) \{\
        downcasted = int152(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(152, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int144 from int256, reverting on\
     * overflow (when the input is less than smallest int144 or\
     * greater than largest int144).\
     *\
     * Counterpart to Solidity's `int144` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 144 bits\
     */\
    function toInt144(int256 value) internal pure returns (int144 downcasted) \{\
        downcasted = int144(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(144, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int136 from int256, reverting on\
     * overflow (when the input is less than smallest int136 or\
     * greater than largest int136).\
     *\
     * Counterpart to Solidity's `int136` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 136 bits\
     */\
    function toInt136(int256 value) internal pure returns (int136 downcasted) \{\
        downcasted = int136(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(136, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int128 from int256, reverting on\
     * overflow (when the input is less than smallest int128 or\
     * greater than largest int128).\
     *\
     * Counterpart to Solidity's `int128` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 128 bits\
     */\
    function toInt128(int256 value) internal pure returns (int128 downcasted) \{\
        downcasted = int128(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(128, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int120 from int256, reverting on\
     * overflow (when the input is less than smallest int120 or\
     * greater than largest int120).\
     *\
     * Counterpart to Solidity's `int120` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 120 bits\
     */\
    function toInt120(int256 value) internal pure returns (int120 downcasted) \{\
        downcasted = int120(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(120, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int112 from int256, reverting on\
     * overflow (when the input is less than smallest int112 or\
     * greater than largest int112).\
     *\
     * Counterpart to Solidity's `int112` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 112 bits\
     */\
    function toInt112(int256 value) internal pure returns (int112 downcasted) \{\
        downcasted = int112(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(112, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int104 from int256, reverting on\
     * overflow (when the input is less than smallest int104 or\
     * greater than largest int104).\
     *\
     * Counterpart to Solidity's `int104` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 104 bits\
     */\
    function toInt104(int256 value) internal pure returns (int104 downcasted) \{\
        downcasted = int104(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(104, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int96 from int256, reverting on\
     * overflow (when the input is less than smallest int96 or\
     * greater than largest int96).\
     *\
     * Counterpart to Solidity's `int96` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 96 bits\
     */\
    function toInt96(int256 value) internal pure returns (int96 downcasted) \{\
        downcasted = int96(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(96, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int88 from int256, reverting on\
     * overflow (when the input is less than smallest int88 or\
     * greater than largest int88).\
     *\
     * Counterpart to Solidity's `int88` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 88 bits\
     */\
    function toInt88(int256 value) internal pure returns (int88 downcasted) \{\
        downcasted = int88(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(88, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int80 from int256, reverting on\
     * overflow (when the input is less than smallest int80 or\
     * greater than largest int80).\
     *\
     * Counterpart to Solidity's `int80` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 80 bits\
     */\
    function toInt80(int256 value) internal pure returns (int80 downcasted) \{\
        downcasted = int80(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(80, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int72 from int256, reverting on\
     * overflow (when the input is less than smallest int72 or\
     * greater than largest int72).\
     *\
     * Counterpart to Solidity's `int72` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 72 bits\
     */\
    function toInt72(int256 value) internal pure returns (int72 downcasted) \{\
        downcasted = int72(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(72, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int64 from int256, reverting on\
     * overflow (when the input is less than smallest int64 or\
     * greater than largest int64).\
     *\
     * Counterpart to Solidity's `int64` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 64 bits\
     */\
    function toInt64(int256 value) internal pure returns (int64 downcasted) \{\
        downcasted = int64(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(64, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int56 from int256, reverting on\
     * overflow (when the input is less than smallest int56 or\
     * greater than largest int56).\
     *\
     * Counterpart to Solidity's `int56` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 56 bits\
     */\
    function toInt56(int256 value) internal pure returns (int56 downcasted) \{\
        downcasted = int56(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(56, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int48 from int256, reverting on\
     * overflow (when the input is less than smallest int48 or\
     * greater than largest int48).\
     *\
     * Counterpart to Solidity's `int48` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 48 bits\
     */\
    function toInt48(int256 value) internal pure returns (int48 downcasted) \{\
        downcasted = int48(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(48, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int40 from int256, reverting on\
     * overflow (when the input is less than smallest int40 or\
     * greater than largest int40).\
     *\
     * Counterpart to Solidity's `int40` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 40 bits\
     */\
    function toInt40(int256 value) internal pure returns (int40 downcasted) \{\
        downcasted = int40(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(40, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int32 from int256, reverting on\
     * overflow (when the input is less than smallest int32 or\
     * greater than largest int32).\
     *\
     * Counterpart to Solidity's `int32` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 32 bits\
     */\
    function toInt32(int256 value) internal pure returns (int32 downcasted) \{\
        downcasted = int32(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(32, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int24 from int256, reverting on\
     * overflow (when the input is less than smallest int24 or\
     * greater than largest int24).\
     *\
     * Counterpart to Solidity's `int24` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 24 bits\
     */\
    function toInt24(int256 value) internal pure returns (int24 downcasted) \{\
        downcasted = int24(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(24, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int16 from int256, reverting on\
     * overflow (when the input is less than smallest int16 or\
     * greater than largest int16).\
     *\
     * Counterpart to Solidity's `int16` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 16 bits\
     */\
    function toInt16(int256 value) internal pure returns (int16 downcasted) \{\
        downcasted = int16(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(16, value);\
        \}\
    \}\
\
    /**\
     * @dev Returns the downcasted int8 from int256, reverting on\
     * overflow (when the input is less than smallest int8 or\
     * greater than largest int8).\
     *\
     * Counterpart to Solidity's `int8` operator.\
     *\
     * Requirements:\
     *\
     * - input must fit into 8 bits\
     */\
    function toInt8(int256 value) internal pure returns (int8 downcasted) \{\
        downcasted = int8(value);\
        if (downcasted != value) \{\
            revert SafeCastOverflowedIntDowncast(8, value);\
        \}\
    \}\
\
    /**\
     * @dev Converts an unsigned uint256 into a signed int256.\
     *\
     * Requirements:\
     *\
     * - input must be less than or equal to maxInt256.\
     */\
    function toInt256(uint256 value) internal pure returns (int256) \{\
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive\
        if (value > uint256(type(int256).max)) \{\
            revert SafeCastOverflowedUintToInt(value);\
        \}\
        return int256(value);\
    \}\
\}\
\
// File: UnityCoin.sol\
\
\
pragma solidity ^0.8.24;\
\
\
\
\
\
\
// This contract is not intended to be inherited. Do not override critical functions.\
contract UnityCoin is ERC20, Ownable, ReentrancyGuard \{\
    // Immutable constants\
    string public constant NAME = "Unity Coin";\
    string public constant SYMBOL = "UNITY";\
    uint8 public constant DECIMALS = 18;\
    uint256 public constant INITIAL_SUPPLY = 1_000_000_000_000 * 10**18; // 1 trillion\
    uint256 public constant FEE_DENOMINATOR = 10_000;\
    uint256 public constant MAX_TX_AMOUNT = INITIAL_SUPPLY / 1000; // 0.1% of supply\
    uint256 public constant TIMELOCK_DELAY = 1 days;\
    uint256 public constant MAX_FEE = 500; // 5% max total fee\
    uint112 public constant MAX_BALANCE = type(uint112).max;\
    uint256 public constant COOLDOWN_PERIOD = 5 minutes; // Increased for anti-bot\
\
    struct FeeStructure \{\
        uint16 burnFee;\
        uint16 liquidityFee;\
    \}\
\
    struct Timelock \{\
        uint96 timestamp;\
        address newOwner;\
        address newPool;\
        FeeStructure newFees;\
        bool valid;\
        uint32 nonce;\
    \}\
\
    uint112 public totalTokens;\
    uint8 public flags;\
    uint112 public maxTxAmount;\
    address public liquidityPool;\
    FeeStructure public fees = FeeStructure(100, 100); // 1% burn, 1% liquidity\
    mapping(address => uint112) public balances;\
    mapping(address => mapping(address => uint112)) public allowances;\
    mapping(address => bool) public feeExemptions;\
    mapping(address => bool) public isBlacklisted;\
    mapping(address => uint256) public lastTransferTimestamp;\
    mapping(bytes32 => Timelock) public timelocks;\
    uint32 public nonce;\
\
    uint8 private constant FLAG_INITIALIZED = 1;\
    uint8 private constant FLAG_PAUSED = 2;\
    uint8 private constant FLAG_MAX_TX_LIMIT_ENABLED = 4;\
    uint8 private constant FLAG_ANTI_BOT_ENABLED = 8;\
\
    event Initialized(address owner);\
    event LiquidityPoolSet(address pool);\
    event FeeExemption(address indexed account, bool exempted);\
    event BlacklistUpdated(address indexed account, bool blacklisted);\
    event MaxTxLimitToggled(bool enabled);\
    event AntiBotToggled(bool enabled);\
    event FeesUpdated(uint16 burnFee, uint16 liquidityFee);\
    event OwnershipTransferScheduled(address indexed currentOwner, uint256 executeAfter);\
    event TimelockExecuted(bytes32 indexed timelockId);\
    event TokensBurned(address indexed burner, uint256 amount);\
    event Paused(address account);\
    event Unpaused(address account);\
    event BatchTransfer(address indexed sender, address[] recipients, uint256[] amounts);\
    event EmergencyRecovered(address indexed token, address indexed to, uint256 amount);\
\
    error ZeroAddress();\
    error InsufficientBalance();\
    error AllowanceExceeded();\
    error NotOwner();\
    error Renounced();\
    error AlreadyInitialized();\
    error MaxTxLimitExceeded();\
    error ContractPaused();\
    error TimelockNotReady();\
    error TimelockInvalid();\
    error InvalidFee();\
    error Blacklisted();\
    error TransferCooldown();\
    error InvalidArrayLength();\
\
    modifier notBlacklisted(address from, address to) \{\
        if (isBlacklisted[from] || isBlacklisted[to]) revert Blacklisted();\
        _;\
    \}\
\
    constructor() ERC20("Unity Coin", "UNITY") Ownable(msg.sender) \{\
        flags = FLAG_INITIALIZED | FLAG_MAX_TX_LIMIT_ENABLED | FLAG_ANTI_BOT_ENABLED;\
        totalTokens = SafeCast.toUint112(INITIAL_SUPPLY);\
        balances[msg.sender] = SafeCast.toUint112(INITIAL_SUPPLY);\
        maxTxAmount = SafeCast.toUint112(MAX_TX_AMOUNT);\
        feeExemptions[msg.sender] = true;\
        _mint(msg.sender, INITIAL_SUPPLY); // Sync with ERC20 _balances\
        emit Initialized(msg.sender);\
        emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);\
    \}\
\
    // Override balanceOf to ensure wallet compatibility\
    function balanceOf(address account) public view override returns (uint256) \{\
        return uint256(balances[account]);\
    \}\
\
    // Override totalSupply to ensure consistency\
    function totalSupply() public view override returns (uint256) \{\
        return uint256(totalTokens);\
    \}\
\
    function transfer(address to, uint256 amount) public override nonReentrant notBlacklisted(msg.sender, to) returns (bool) \{\
        if ((flags & FLAG_PAUSED) != 0) revert ContractPaused();\
        _transfer(msg.sender, to, amount, 0);\
        return true;\
    \}\
\
    function approve(address spender, uint256 amount) public override returns (bool) \{\
        if ((flags & FLAG_PAUSED) != 0) revert ContractPaused();\
        if (spender == address(0)) revert ZeroAddress();\
        allowances[msg.sender][spender] = SafeCast.toUint112(amount);\
        emit Approval(msg.sender, spender, amount);\
        return true;\
    \}\
\
    function transferFrom(address from, address to, uint256 amount) public override nonReentrant notBlacklisted(from, to) returns (bool) \{\
        if ((flags & FLAG_PAUSED) != 0) revert ContractPaused();\
        if (from == address(0) || to == address(0)) revert ZeroAddress();\
        if (amount == 0) return true;\
        if ((flags & FLAG_MAX_TX_LIMIT_ENABLED) != 0 && amount > maxTxAmount) revert MaxTxLimitExceeded();\
\
        uint112 fromBalance = balances[from];\
        if (fromBalance < amount) revert InsufficientBalance();\
\
        uint112 spenderAllowance = allowances[from][msg.sender];\
        if (spenderAllowance < amount) revert AllowanceExceeded();\
\
        _transfer(from, to, amount, spenderAllowance);\
        return true;\
    \}\
\
    function batchTransfer(address[] calldata recipients, uint256[] calldata amounts) external nonReentrant returns (bool) \{\
        if ((flags & FLAG_PAUSED) != 0) revert ContractPaused();\
        if (recipients.length != amounts.length) revert InvalidArrayLength();\
        if (recipients.length == 0) return true;\
        if (isBlacklisted[msg.sender]) revert Blacklisted();\
\
        uint256 totalAmount = 0;\
        for (uint256 i = 0; i < recipients.length; i++) \{\
            if (recipients[i] == address(0)) revert ZeroAddress();\
            if (isBlacklisted[recipients[i]]) revert Blacklisted();\
            if ((flags & FLAG_MAX_TX_LIMIT_ENABLED) != 0 && amounts[i] > maxTxAmount) revert MaxTxLimitExceeded();\
            totalAmount += amounts[i];\
            if (totalAmount > type(uint112).max) revert InsufficientBalance();\
        \}\
\
        uint112 fromBalance = balances[msg.sender];\
        if (fromBalance < totalAmount) revert InsufficientBalance();\
\
        for (uint256 i = 0; i < recipients.length; i++) \{\
            _transfer(msg.sender, recipients[i], amounts[i], 0);\
        \}\
\
        emit BatchTransfer(msg.sender, recipients, amounts);\
        return true;\
    \}\
\
    function _transfer(address from, address to, uint256 amount, uint112 spenderAllowance) private \{\
        if (to == address(0)) revert ZeroAddress();\
        if (amount == 0) return;\
        if ((flags & FLAG_MAX_TX_LIMIT_ENABLED) != 0 && amount > maxTxAmount) revert MaxTxLimitExceeded();\
        if ((flags & FLAG_ANTI_BOT_ENABLED) != 0 && block.timestamp < lastTransferTimestamp[from] + COOLDOWN_PERIOD) revert TransferCooldown();\
        if (amount > type(uint112).max) revert InsufficientBalance();\
\
        uint112 fromBalance = balances[from];\
        if (fromBalance < amount) revert InsufficientBalance();\
\
        FeeStructure memory fee = fees;\
        uint256 burnAmount = (feeExemptions[from] || feeExemptions[to]) ? 0 : (amount * fee.burnFee) / FEE_DENOMINATOR;\
        uint256 liquidityAmount = (feeExemptions[from] || feeExemptions[to]) ? 0 : (amount * fee.liquidityFee) / FEE_DENOMINATOR;\
        uint112 transferAmount = SafeCast.toUint112(amount - burnAmount - liquidityAmount);\
\
        if (balances[to] + transferAmount > MAX_BALANCE) revert InsufficientBalance();\
\
        // Update state first\
        balances[from] = fromBalance - SafeCast.toUint112(amount);\
        balances[to] += transferAmount;\
        _update(from, to, transferAmount); // Sync with ERC20 _balances\
        if (burnAmount > 0) \{\
            totalTokens -= SafeCast.toUint112(burnAmount);\
            _burn(from, burnAmount); // Sync with ERC20\
            emit TokensBurned(from, burnAmount);\
        \}\
        if (spenderAllowance > 0) \{\
            allowances[from][msg.sender] = spenderAllowance - SafeCast.toUint112(amount);\
        \}\
        lastTransferTimestamp[from] = block.timestamp;\
\
        // External interaction last\
        if (liquidityPool != address(0) && liquidityAmount > 0) \{\
            balances[liquidityPool] += SafeCast.toUint112(liquidityAmount);\
            _update(address(this), liquidityPool, liquidityAmount); // Sync with ERC20\
            emit Transfer(from, liquidityPool, liquidityAmount);\
        \}\
\
        if (transferAmount > 0) \{\
            emit Transfer(from, to, transferAmount);\
        \}\
    \}\
\
    /**\
     * @dev Burns a specified amount of tokens from the caller's balance.\
     * @param amount The amount of tokens to burn.\
     * @return bool True if the burn was successful.\
     */\
    function burn(uint256 amount) external nonReentrant returns (bool) \{\
        if ((flags & FLAG_PAUSED) != 0) revert ContractPaused();\
        if (amount == 0) return true;\
        if (isBlacklisted[msg.sender]) revert Blacklisted();\
        if (amount > type(uint112).max) revert InsufficientBalance();\
\
        uint112 senderBalance = balances[msg.sender];\
        if (senderBalance < amount) revert InsufficientBalance();\
\
        // Update state\
        balances[msg.sender] = senderBalance - SafeCast.toUint112(amount);\
        totalTokens -= SafeCast.toUint112(amount);\
\
        // Sync with ERC20\
        _burn(msg.sender, amount);\
\
        emit TokensBurned(msg.sender, amount);\
        return true;\
    \}\
\
    /**\
     * @dev Sets the liquidity pool address. Only callable by the owner.\
     * @param pool The address of the liquidity pool.\
     */\
    function setLiquidityPool(address pool) external onlyOwner \{\
        if (pool == address(0)) revert ZeroAddress();\
        liquidityPool = pool;\
        feeExemptions[pool] = true;\
        emit LiquidityPoolSet(pool);\
    \}\
\
    /**\
     * @dev Updates fee exemptions for an account. Only callable by the owner.\
     * @param account The account to update.\
     * @param exempted True to exempt, false to remove exemption.\
     */\
    function setFeeExemption(address account, bool exempted) external onlyOwner \{\
        if (account == address(0)) revert ZeroAddress();\
        feeExemptions[account] = exempted;\
        emit FeeExemption(account, exempted);\
    \}\
\
    /**\
     * @dev Updates blacklist status for an account. Only callable by the owner.\
     * @param account The account to update.\
     * @param blacklisted True to blacklist, false to remove from blacklist.\
     */\
    function setBlacklist(address account, bool blacklisted) external onlyOwner \{\
        if (account == address(0)) revert ZeroAddress();\
        isBlacklisted[account] = blacklisted;\
        emit BlacklistUpdated(account, blacklisted);\
    \}\
\
    /**\
     * @dev Toggles the max transaction limit. Only callable by the owner.\
     */\
    function toggleMaxTxLimit() external onlyOwner \{\
        flags = (flags & FLAG_MAX_TX_LIMIT_ENABLED) == 0\
            ? flags | FLAG_MAX_TX_LIMIT_ENABLED\
            : flags & ~FLAG_MAX_TX_LIMIT_ENABLED;\
        emit MaxTxLimitToggled((flags & FLAG_MAX_TX_LIMIT_ENABLED) != 0);\
    \}\
\
    /**\
     * @dev Toggles the anti-bot mechanism. Only callable by the owner.\
     */\
    function toggleAntiBot() external onlyOwner \{\
        flags = (flags & FLAG_ANTI_BOT_ENABLED) == 0\
            ? flags | FLAG_ANTI_BOT_ENABLED\
            : flags & ~FLAG_ANTI_BOT_ENABLED;\
        emit AntiBotToggled((flags & FLAG_ANTI_BOT_ENABLED) != 0);\
    \}\
\
    /**\
     * @dev Updates the fee structure. Only callable by the owner via timelock.\
     * @param burnFee The new burn fee (in basis points).\
     * @param liquidityFee The new liquidity fee (in basis points).\
     */\
    function scheduleFeeUpdate(uint16 burnFee, uint16 liquidityFee) external onlyOwner \{\
        if (burnFee + liquidityFee > MAX_FEE) revert InvalidFee();\
        bytes32 timelockId = keccak256(abi.encode(msg.sender, nonce));\
        timelocks[timelockId] = Timelock(\{\
            timestamp: SafeCast.toUint96(block.timestamp + TIMELOCK_DELAY),\
            newOwner: address(0),\
            newPool: address(0),\
            newFees: FeeStructure(burnFee, liquidityFee),\
            valid: true,\
            nonce: nonce\
        \});\
        nonce++;\
        emit OwnershipTransferScheduled(msg.sender, block.timestamp + TIMELOCK_DELAY);\
    \}\
\
    /**\
     * @dev Executes a scheduled timelock action.\
     * @param timelockId The ID of the timelock to execute.\
     */\
    function executeTimelock(bytes32 timelockId) external onlyOwner \{\
        Timelock memory timelock = timelocks[timelockId];\
        if (!timelock.valid) revert TimelockInvalid();\
        if (block.timestamp < timelock.timestamp) revert TimelockNotReady();\
\
        if (timelock.newFees.burnFee != 0 || timelock.newFees.liquidityFee != 0) \{\
            fees = timelock.newFees;\
            emit FeesUpdated(timelock.newFees.burnFee, timelock.newFees.liquidityFee);\
        \}\
\
        timelocks[timelockId].valid = false;\
        emit TimelockExecuted(timelockId);\
    \}\
\
    /**\
     * @dev Pauses the contract. Only callable by the owner.\
     */\
    function pause() external onlyOwner \{\
        if ((flags & FLAG_PAUSED) != 0) revert ContractPaused();\
        flags |= FLAG_PAUSED;\
        emit Paused(msg.sender);\
    \}\
\
    /**\
     * @dev Unpauses the contract. Only callable by the owner.\
     */\
    function unpause() external onlyOwner \{\
        if ((flags & FLAG_PAUSED) == 0) return;\
        flags &= ~FLAG_PAUSED;\
        emit Unpaused(msg.sender);\
    \}\
\
    /**\
     * @dev Recovers tokens accidentally sent to the contract. Only callable by the owner.\
     * @param token The token to recover (address(0) for ETH).\
     * @param to The recipient address.\
     * @param amount The amount to recover.\
     */\
    function emergencyRecover(address token, address to, uint256 amount) external onlyOwner \{\
        if (to == address(0)) revert ZeroAddress();\
        if (amount == 0) return;\
\
        if (token == address(0)) \{\
            (bool success, ) = to.call\{value: amount\}("");\
            require(success, "ETH transfer failed");\
        \} else \{\
            IERC20(token).transfer(to, amount);\
        \}\
        emit EmergencyRecovered(token, to, amount);\
    \}\
\
    // Receive ETH if sent to the contract\
    receive() external payable \{\}\
\}}