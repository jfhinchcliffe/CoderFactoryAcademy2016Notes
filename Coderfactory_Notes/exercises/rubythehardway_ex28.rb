Boolean Logic

1. (true && true) == true
2. (false && true) == false
3. (1 == 1 && 2 == 1) == false
4. ("test" == "test") == true
5. (1 == 1 || 2 != 1) == true
6. (true && 1 == 1) == true
7. (false && 0!=0) == false
8. (true || 1 ==1) == true
9. ("test" == "testing") == false
10. (1 != 0 && 2 == 1) == false
11. ("test" != "testing") == true
12. ("test" == 1) == false
13. (!(true && false)) == false TRUE
14. (!(1 == 1&& 0 != 1)) == false
15. (!(10 == 1 || 1000 == 1000) == true FALSE
16. (!(1 != 10 || 3 == 4)) == false
17. (!("testing" == "testing" && "Zed" == "Cool Guy")) == false TRUE
18. (1 == 1 && (!("testing" == 1 || 1 == 0))) == true
19. "chunky" == "bacon" && (!(3 == 4 || 3 == 3)) == false
20. (3 != 4 && (!("testing" == "testing" || "Ruby" == "Fun"))) == true FALSE

SOLVING # 20
First solve each equality test:
3 != 4 && !("testing" != "test" || "Ruby" == "Ruby")

3 != 4 == TRUE, "testing" != "test" == TRUE, "Ruby" == "Ruby"== TRUE
You're left with

TRUE && !(TRUE || TRUE)

evaluate the || / && in parenthsis and evalueate.
You're left with

TRUE && !(TRUE)

Find each ! and invert the expression within it

TRUE && FALSE

This equals FALSE (TRUE AND FALSE == FALSE)
