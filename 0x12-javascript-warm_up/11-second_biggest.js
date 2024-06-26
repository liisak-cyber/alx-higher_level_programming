#!/usr/bin/node
const args = process.argv.slice(2).map(Number); // Convert arguments to numbers
if (args.length <= 1) {
  console.log(0);
} else {
  args.sort((a, b) => b - a); // Sort in descending order
  console.log(args[1]); // Second element is the second largest
}
