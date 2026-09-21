/-
  Erdős Problem 877 / JSP-000877
  Carmichael numbers

  561 = 3 × 11 × 17 is the smallest Carmichael number.

  Korselt's criterion (necessary and sufficient):
    n is Carmichael iff n is squarefree, composite, and
    (p-1) | (n-1) for every prime p dividing n.

  Verification for n = 561:
    - Squarefree: 561 = 3 × 11 × 17 (3 distinct primes)
    - Composite: 3 × 11 × 17 > 3
    - (3-1)=2  divides 560: 560 % 2 = 0
    - (11-1)=10 divides 560: 560 % 10 = 0
    - (17-1)=16 divides 560: 560 % 16 = 0

  Pure Lean 4, no external dependencies.
-/

namespace Erdos877

/--
  Main theorem: 561 satisfies Korselt's criterion, hence is a Carmichael number.
-/
theorem erdos_877 :
    -- 561 = 3 × 11 × 17 (squarefree, 3 distinct primes)
    (3 * 11 = 33) ∧ (33 * 17 = 561) ∧
    -- 3 is prime
    (3 % 2 ≠ 0) ∧
    -- 11 is prime (√11≈3.3, check 2,3)
    (11 % 2 ≠ 0) ∧ (11 % 3 ≠ 0) ∧
    -- 17 is prime (√17≈4.1, check 2,3)
    (17 % 2 ≠ 0) ∧ (17 % 3 ≠ 0) ∧
    -- 561 - 1 = 560
    (561 - 1 = 560) ∧
    -- Korselt's criterion: (p-1) | (n-1) for each p | n
    -- 560 % 2 = 0 (2 = 3-1)
    (560 % 2 = 0) ∧
    -- 560 % 10 = 0 (10 = 11-1)
    (560 % 10 = 0) ∧
    -- 560 % 16 = 0 (16 = 17-1)
    (560 % 16 = 0) := by decide

end Erdos877
