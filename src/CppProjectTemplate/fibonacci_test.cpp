#include <gtest/gtest.h>
#include "fibonacci.h"
TEST(my_test, basic_test) {
    EXPECT_EQ(fibonacci(3), 2);
}