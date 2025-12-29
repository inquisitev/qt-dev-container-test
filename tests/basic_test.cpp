#include <gtest/gtest.h>

TEST(basicTest, AdditionFails)
{
    EXPECT_EQ(1 + 1, 3);  // ← intentional failure
}

TEST(basicTest, SubtractionPasses)
{
    EXPECT_EQ(5 - 3, 2);
}
