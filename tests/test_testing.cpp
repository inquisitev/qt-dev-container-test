#include "./test_testing.h"

void TestBasicAssertion::basic_math_failure() { QCOMPARE(1, 2); }

QTEST_APPLESS_MAIN(TestBasicAssertion)
