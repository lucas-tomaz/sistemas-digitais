LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparator12 IS

    PORT (
        A, B   : IN  std_logic_vector(11 downto 0);

        A_gt_B : OUT std_logic;
        A_eq_B : OUT std_logic;
        A_lt_B : OUT std_logic
    );

END comparator12;

ARCHITECTURE hardware OF comparator12 IS

    SIGNAL eq : std_logic_vector(11 downto 0);

BEGIN

    -- igualdade bit a bit
    eq(11) <= A(11) XNOR B(11);

    eq(10) <= eq(11) AND (A(10) XNOR B(10));

    eq(9) <= eq(10) AND (A(9) XNOR B(9));

    eq(8) <= eq(9) AND (A(8) XNOR B(8));

    eq(7) <= eq(8) AND (A(7) XNOR B(7));

    eq(6) <= eq(7) AND (A(6) XNOR B(6));

    eq(5) <= eq(6) AND (A(5) XNOR B(5));

    eq(4) <= eq(5) AND (A(4) XNOR B(4));

    eq(3) <= eq(4) AND (A(3) XNOR B(3));

    eq(2) <= eq(3) AND (A(2) XNOR B(2));

    eq(1) <= eq(2) AND (A(1) XNOR B(1));

    eq(0) <= eq(1) AND (A(0) XNOR B(0));

    -- A = B
    A_eq_B <= eq(0);

    -- A > B
    A_gt_B <=
        (A(11) AND NOT B(11)) OR

        (eq(11) AND A(10) AND NOT B(10)) OR

        (eq(10) AND A(9) AND NOT B(9)) OR

        (eq(9) AND A(8) AND NOT B(8)) OR

        (eq(8) AND A(7) AND NOT B(7)) OR

        (eq(7) AND A(6) AND NOT B(6)) OR

        (eq(6) AND A(5) AND NOT B(5)) OR

        (eq(5) AND A(4) AND NOT B(4)) OR

        (eq(4) AND A(3) AND NOT B(3)) OR

        (eq(3) AND A(2) AND NOT B(2)) OR

        (eq(2) AND A(1) AND NOT B(1)) OR

        (eq(1) AND A(0) AND NOT B(0));

    -- A < B
    A_lt_B <=
        (NOT A(11) AND B(11)) OR

        (eq(11) AND NOT A(10) AND B(10)) OR

        (eq(10) AND NOT A(9) AND B(9)) OR

        (eq(9) AND NOT A(8) AND B(8)) OR

        (eq(8) AND NOT A(7) AND B(7)) OR

        (eq(7) AND NOT A(6) AND B(6)) OR

        (eq(6) AND NOT A(5) AND B(5)) OR

        (eq(5) AND NOT A(4) AND B(4)) OR

        (eq(4) AND NOT A(3) AND B(3)) OR

        (eq(3) AND NOT A(2) AND B(2)) OR

        (eq(2) AND NOT A(1) AND B(1)) OR

        (eq(1) AND NOT A(0) AND B(0));

END hardware;