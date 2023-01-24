# Search Algorithms

# Linear Search
Luau has for the most part fixed the speed of linear searching via ``table.find(t, element)``
Iterates through a list and returns once the element is found.
![alt text](https://media.geeksforgeeks.org/wp-content/cdn-uploads/Linear-Search.png)

# Binary Search
Divides the search interval in half until it finds the element or the search interval is empty.
![alt text](https://media.geeksforgeeks.org/wp-content/uploads/20220309171621/BinarySearch.png)

# Jump Search
Similar to Linear Search, Jump Search works by jumping a fixed number of elements at a time rather than going through the list one by one. Once the element greater than or equal to the target element is found, a linear search is used to search for the target element in the subarray.
![alt text](https://i.ytimg.com/vi/wNOoyZ45SmQ/maxresdefault.jpg)