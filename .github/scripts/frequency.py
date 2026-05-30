import sys
from collections import Counter

def count_vowels(file_path):
    try:
        with open(file_path, "r") as file:
            text = file.read().lower()

        vowels = [c for c in text if c in "aeiou"]

        return Counter(vowels)

    except FileNotFoundError:
        print("File not found")
        sys.exit(1)

if __name__ == "__main__":

    if len(sys.argv) != 2:
        print("Usage: python frequency.py <file>")
        sys.exit(1)

    result = count_vowels(sys.argv[1])

    print(dict(result))
