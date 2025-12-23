#include "./test_testing.h"

void TestBasicAssertion::basic_math_failure() { QCOMPARE(2, 2); }

QTEST_APPLESS_MAIN(TestBasicAssertion)
