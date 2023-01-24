-- 3 MAIN search algorithms for arrays

-- 1. Linear Search
-- 2. Binary Search
-- 3. Jump Search

local Debug = true;

function dPrint(...)
    if (Debug) then
        print(...);
    end;
end;

function FormatTime(startTime)
    return (os.clock() - startTime);
end;

-- Linear Search
-- Time Complexity: O(n)
-- Space Complexity: O(1)
function linearSearch(array, value)
    local StartTime = os.clock();
    local Found = table.find(array, value);

    -- Print the time it took to execute the function
    dPrint("Linear Search took " .. FormatTime(StartTime) .. " ms to execute");

    return Found;
end

-- Binary Search
-- Time Complexity: O(log n)
-- Space Complexity: O(1)
function binarySearch(array, value)
    local StartTime = os.clock();
    local Left = 1;
    local Right = #array;

    while (Left <= Right) do
        local Middle = math.floor((Left + Right) / 2);

        if (array[Middle] == value) then
            -- Print the time it took to execute the function
            dPrint("Binary Search took " .. FormatTime(StartTime) .. " ms to execute");

            return Middle;
        elseif (array[Middle] < value) then
            Left = Middle + 1;
        else
            Right = Middle - 1;
        end;
    end;

    -- Print the time it took to execute the function
    dPrint("Binary Search took " .. FormatTime(StartTime) .. " ms to execute");

    return -1;
end

-- Jump Search
-- Time Complexity: O(sqrt(n))
-- Space Complexity: O(1)
function jumpSearch(arr, target)
    local StartTime = os.clock();
    local BlockSize = math.sqrt(#arr);
    local Start = 1;

    while (Start + BlockSize - 1 <= #arr and arr[math.min(Start + BlockSize - 1, #arr)] < target) do
        Start = Start + BlockSize;
    end;

    for i = Start, math.min(Start + BlockSize - 1, #arr) do
        if (arr[i] == target) then
            -- Print the time it took to execute the function
            dPrint("Jump Search took " .. FormatTime(StartTime) .. " ms to execute");

            return i;
        end;
    end;

    -- Print the time it took to execute the function
    dPrint("Jump Search took " .. FormatTime(StartTime) .. " ms to execute");

    return -1;
end


return {
    linearSearch = linearSearch,
    binarySearch = binarySearch,
    jumpSearch = jumpSearch
}