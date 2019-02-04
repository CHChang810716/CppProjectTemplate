#include <gtest/gtest.h>
int fib(int n)
{
    if( n < 2 ) return n;
    else return fib(n - 1) + fib( n - 2 );
}
TEST(my_test, basic_test) {
    EXPECT_EQ(fib(3), 2);
}