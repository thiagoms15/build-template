#include <compress/compress.h>
#include <gtest/gtest.h>

TEST(CompressTests, TestCompressDummy)
{
    bool result = compress();
    ASSERT_TRUE(result);
}

