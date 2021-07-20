#include <gtest/gtest.h>
#include <CppProjectTemplate/cmakeBasedAddTargetsIn/fibonacci.h>
TEST(my_test, basic_test) {
    EXPECT_EQ(fibonacci(3), 2);
}