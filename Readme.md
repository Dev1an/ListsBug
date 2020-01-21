# List selection bug

**How to reproduce?**

1. Download this Xcode project
2. Run the macOS target.
3. Select element “20” from the left list
4. Select element “66” from the right list
5. Try to change the selection of the left list to “21” by clicking on it.

**Expected behavior**: left selection changes to [21]

**Actual behavior**: left selection changes to [20, 21]

![screen capture](screen%20capture.gif)
