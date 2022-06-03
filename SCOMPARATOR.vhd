----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:20:41 03/24/2022 
-- Design Name: 
-- Module Name:    SCOMPARATOR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SCOMPARATOR is
    Port ( C : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           D : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           E : out  STD_LOGIC;
           G_CD : out  STD_LOGIC;
           G_DC : out  STD_LOGIC);
end SCOMPARATOR;

architecture Behavioral of SCOMPARATOR is
SIGNAL NC_3 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT D(3)
SIGNAL ND_2 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT D(2)
SIGNAL ND_1 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT D(1)
SIGNAL ND_0 : STD_LOGIC; --INTERMEDIATE SIGNAL FOR NOT D(1)
SIGNAL E_INTER : STD_LOGIC; --INTERMEDIATE SIGNAL FOR A EQUAL B
SIGNAL G_CD_INTER : STD_LOGIC; --INTERMEDIATE SIGNAL FOR A GREATER THAN B

begin
NC_3 <= NOT C(3);
ND_2 <= NOT D(2);
ND_1 <= NOT D(1);
ND_0 <= NOT D(0);

E_INTER <= (C(3) XNOR D(3)) AND (C(2) XNOR D(2)) AND (C(1) XNOR D(1)) AND (C(0) XNOR D(0));
G_CD_INTER <= (NC_3 AND D(3)) OR ( (C(3) XNOR D(3)) AND ( (C(2) AND ND_2) OR ( (C(2) XNOR D(2)) AND ( (C(1) AND ND_1) OR ( (C(1) XNOR D(1)) AND ( (C(0) AND ND_0) ) ) ) ) ) );

E <= (C(3) XNOR D(3)) AND (C(2) XNOR D(2)) AND (C(1) XNOR D(1)) AND (C(0) XNOR D(0));
G_CD <= (NC_3 AND D(3)) OR ( (C(3) XNOR D(3)) AND ( (C(2) AND ND_2) OR ( (C(2) XNOR D(2)) AND ( (C(1) AND ND_1) OR ( (C(1) XNOR D(1)) AND ( (C(0) AND ND_0) ) ) ) ) ) );
G_DC <= NOT (E_INTER OR G_CD_INTER);
end Behavioral;

