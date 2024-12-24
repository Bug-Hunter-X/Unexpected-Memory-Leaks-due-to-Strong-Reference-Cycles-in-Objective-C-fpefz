# Unexpected Memory Leaks due to Strong Reference Cycles in Objective-C

This repository demonstrates a common issue in Objective-C development involving strong reference cycles and memory leaks when using Automatic Reference Counting (ARC).  The example showcases how a retain cycle can inadvertently occur between two classes, preventing objects from being deallocated.

The `bug.m` file contains the problematic code, while `bugSolution.m` provides the corrected version.  This example highlights the importance of careful consideration of object ownership and the strategic use of `weak` references to avoid these types of memory management issues.