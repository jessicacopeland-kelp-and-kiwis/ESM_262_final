## SJKF test file (second try...)
##Jessica Copeland


library(testthat)


test_that("Testing the SJKF range function", {
  # Test basic functionality
  expect_equal(SJKF_range(10, 1), 1010)  # Female fox weighing 10 pounds
  expect_equal(SJKF_range(15, 2), 1030)  # Male fox weighing 15 pounds
  
  # Test minimum home range less than 0
  expect_equal(SJKF_range(10, 1, HR_minimum = -10), "Home range cannot be less than 0")
  
  # Test weight less than 0
  expect_true(is.na(SJKF_range(-5, 1)))
  
  # Test gender not in {1, 2}
  expect_true(is.na(SJKF_range(10, 0)))
  expect_true(is.na(SJKF_range(10, 3)))
  
  # Test edge cases
  expect_equal(SJKF_range(0, 1), 1000)  # Weight is 0
  expect_equal(SJKF_range(0, 2), 1000)  # Weight is 0 and male
})
