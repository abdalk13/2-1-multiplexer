library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 

entity m4_1_tb is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C : in STD_LOGIC;
        D : in STD_LOGIC;
        S : in STD_LOGIC_VECTOR(1 downto 0);
        Z : out STD_LOGIC
    );
end m4_1_tb;

architecture Behavioral of m4_1_tb is
    component m2_1
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            S : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;
    
    signal t1, t2 : STD_LOGIC;
    
begin
    m1: m2_1 port map (A, B, S(0), t1);
    m2: m2_1 port map (C, D, S(0), t2);
    m3: m2_1 port map (t1, t2, S(1), Z);
end Behavioral;
