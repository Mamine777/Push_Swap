# Push_swap Project  

## Introduction  
The **Push_swap** project challenges you to create an optimized algorithm to sort data on a stack. You will work with two stacks and a limited set of operations, aiming to generate the smallest possible sequence of instructions that successfully sorts the given data. This project focuses on algorithmic rigor, efficiency, and adherence to the rules of the Push_swap language.

---

## Features  
### Two Stacks  
- **Stack A**: Contains a random sequence of integers at the start.  
- **Stack B**: Initially empty.  

### Objective  
Sort Stack A in ascending order using the smallest number of operations.  

### Operations  
1. `sa` (swap a): Swap the first two elements of Stack A.  
2. `sb` (swap b): Swap the first two elements of Stack B.  
3. `ss`: Perform `sa` and `sb` simultaneously.  
4. `pa` (push a): Move the top element of Stack B to Stack A.  
5. `pb` (push b): Move the top element of Stack A to Stack B.  
6. `ra` (rotate a): Shift all elements of Stack A up by one.  
7. `rb` (rotate b): Shift all elements of Stack B up by one.  
8. `rr`: Perform `ra` and `rb` simultaneously.  
9. `rra` (reverse rotate a): Shift all elements of Stack A down by one.  
10. `rrb` (reverse rotate b): Shift all elements of Stack B down by one.  
11. `rrr`: Perform `rra` and `rrb` simultaneously.  

---

## Requirements  
1. Write a program named `push_swap` in C to sort integers provided as arguments.  
2. The program must:  
   - Display the smallest possible list of instructions to sort the integers.  
   - Handle errors such as non-integer arguments, duplicates, or out-of-bounds values gracefully.  
3. Use a **Makefile** to compile the program with the following rules:  
   - `all`, `clean`, `fclean`, `re`, and `bonus`.  
4. Avoid memory leaks; all allocated memory must be freed properly.  
5. The program must not crash (e.g., segmentation faults).  

---

## Benchmarks  
To validate the project:  
- **100 random numbers:** Sort in fewer than 700 operations.  
- **500 random numbers:** Sort in fewer than 5500 operations.  

---

## Bonus Features  
If the mandatory part is perfect, you can implement a **checker** program to verify the correctness of your `push_swap` instructions.  

### Checker Program  
- Reads sorting instructions and applies them to the initial stacks.  
- Outputs:  
  - `OK` if Stack A is sorted and Stack B is empty.  
  - `KO` if the stacks are not sorted correctly.  
  - `Error` for invalid inputs or operations.  

---

## Example Usage  
```bash
$> ./push_swap 2 1 3 6 5 8  
sa  
pb  
pb  
pb  
sa  
pa  
pa  
pa  

$> ./push_swap 0 one 2 3  
Error  
