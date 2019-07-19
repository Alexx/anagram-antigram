# _Anagram-Antigram_

#### _7-19-2019_

#### _Author: Alex Siegberg_

## Description

_This is an application that takes in two phrases and outputs whether those phrases are an anagram, antigram or neither._

## Setup/Installation

Step 1: Clone this repository to your desktop

Step 2: Ensure Aspell is installed ('brew install aspell')

Step 3: In terminal, within the project directory, type 'bundle install'

## Specs

| Behavior | Input | Output |
| ------------- |:-------------:| -----:|
| return if words are anagrams | 'ruby', 'bury' | ruby and bury are anagrams. |
| return if words are anagrams regardless of case | 'Ruby', 'Bury' | Ruby and Bury are anagrams. |
| return if words contain a vowel | 'ruby', 'btr' | You need to input actual words! |
| return if words are antigrams | 'hi', 'bye' | hi and bye are antigrams. |
| return if multi-word sentences are anagrams | 'bury dog', 'ruby god' | bury dog and ruby god are anagrams. |
| return number of letters that match if word is NOT an anagram | 'cat', 'batty' | cat and batty aren't anagrams but 2 letters match: a, t. | 

## Technologies Used

_Ruby_

_Rspec_

## Licensing

MIT License

Copyright (c) 2019 Alex Siegberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
