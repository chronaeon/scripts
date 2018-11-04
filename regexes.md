`(?s)\/\*.*?\*\/`
Locates all comments in Solidity (or C) code between these style of comment blocks:
```
/*
*
*
*
*/
so that the entire block can be selected and deleted.

This makes some aspects of textual analysis much easier, even with well-commented code. If you're doing a frequency analysis on your source code, you need to be able to remove all comments to get accurate data.

`\/\/.*` can be used to target single-line Solidity or C++ comments.
