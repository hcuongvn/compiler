Flex/Bison examples

Document: http://web.iitd.ac.in/~sumeet/flex__bison.pdf
I followed the samples in above doc, but modified a little to work with MAC

Install Flex/Bison on MAC
  brew install bison
  brew install flex

Sample1
  cd sample1
  make
  ./a.out  --> type something, it will shows number of lines/words/chars as "wc" command

Sample2
  cd sample2
  make
  ./fb1-5.out --> type "2 + 4 * 2", it will show "10" as well as some debug info
