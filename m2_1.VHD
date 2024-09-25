entity m2_1 is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        S : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end m2_1;

architecture Behavioral of m2_1 is
begin
    process (A, B, S) is
    begin
        if (S = '0') then
            Z <= A;
        else
            Z <= B;
        end if;
    end process;
end Behavioral;
