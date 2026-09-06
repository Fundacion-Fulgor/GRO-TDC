-- sch_path: /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/Modi_Buffers.sch
entity Modi_Buffers is
port(
  K0 : out std_logic ;
  K1 : out std_logic ;
  K2 : out std_logic ;
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  IN0 :  in std_logic ;
  IN1 :  in std_logic ;
  IN2 :  in std_logic
);
end Modi_Buffers ;

architecture arch_Modi_Buffers of Modi_Buffers is

component INV_D1 
port (
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  VSS : inout std_logic
);
end component ;

component INV_D2 
port (
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  VSS : inout std_logic
);
end component ;

component INV05 
port (
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  VSS : inout std_logic
);
end component ;


signal A : std_logic ;
signal B : std_logic ;
signal C : std_logic ;
begin
x1_X_1 : INV_D1
port map (
   VDD => VDD ,
   VOUT => A ,
   VIN => IN0 ,
   VSS => VSS
);
x1_X_0 : INV_D1
port map (
   VDD => VDD ,
   VOUT => A ,
   VIN => IN0 ,
   VSS => VSS
);

x2_X_1 : INV_D2
port map (
   VDD => VDD ,
   VOUT => K0 ,
   VIN => A ,
   VSS => VSS
);
x2_X_0 : INV_D2
port map (
   VDD => VDD ,
   VOUT => K0 ,
   VIN => A ,
   VSS => VSS
);

x3 : INV05
port map (
   VDD => VDD ,
   VOUT => A ,
   VIN => K0 ,
   VSS => VSS
);

x3_X_1 : INV_D1
port map (
   VDD => VDD ,
   VOUT => B ,
   VIN => IN1 ,
   VSS => VSS
);
x3_X_0 : INV_D1
port map (
   VDD => VDD ,
   VOUT => B ,
   VIN => IN1 ,
   VSS => VSS
);

x4_X_1 : INV_D1
port map (
   VDD => VDD ,
   VOUT => C ,
   VIN => IN2 ,
   VSS => VSS
);
x4_X_0 : INV_D1
port map (
   VDD => VDD ,
   VOUT => C ,
   VIN => IN2 ,
   VSS => VSS
);

x5_X_1 : INV_D2
port map (
   VDD => VDD ,
   VOUT => K1 ,
   VIN => B ,
   VSS => VSS
);
x5_X_0 : INV_D2
port map (
   VDD => VDD ,
   VOUT => K1 ,
   VIN => B ,
   VSS => VSS
);

x6_X_1 : INV_D2
port map (
   VDD => VDD ,
   VOUT => K2 ,
   VIN => C ,
   VSS => VSS
);
x6_X_0 : INV_D2
port map (
   VDD => VDD ,
   VOUT => K2 ,
   VIN => C ,
   VSS => VSS
);

x1 : INV05
port map (
   VDD => VDD ,
   VOUT => B ,
   VIN => K1 ,
   VSS => VSS
);

x2 : INV05
port map (
   VDD => VDD ,
   VOUT => C ,
   VIN => K2 ,
   VSS => VSS
);

end arch_Modi_Buffers ;


-- expanding   symbol:  /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV_D1.sym # of pins=4
-- sym_path: /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV_D1.sym
-- sch_path: /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV_D1.sch
entity INV_D1 is
port (
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  VSS : inout std_logic
);
end INV_D1 ;

architecture arch_INV_D1 of INV_D1 is

begin
end arch_INV_D1 ;


-- expanding   symbol:  /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV_D2.sym # of pins=4
-- sym_path: /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV_D2.sym
-- sch_path: /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV_D2.sch
entity INV_D2 is
port (
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  VSS : inout std_logic
);
end INV_D2 ;

architecture arch_INV_D2 of INV_D2 is

begin
end arch_INV_D2 ;


-- expanding   symbol:  /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV05.sym # of pins=4
-- sym_path: /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV05.sym
-- sch_path: /home/designer/shared/Training/GROTDC/GROTDC_marzo/GRO-TDC/std_cells/INV05.sch
entity INV05 is
port (
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  VSS : inout std_logic
);
end INV05 ;

architecture arch_INV05 of INV05 is


signal net1 : std_logic ;
begin
end arch_INV05 ;

