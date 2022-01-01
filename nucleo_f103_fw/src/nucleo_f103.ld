ENTRY(main)


/* Memories definition */
MEMORY
{
  /* name (attr) : ORIGIN = origin, LENGTH = len */  
  FLASH  (rx)   : ORIGIN = 0x08000000, LENGTH = 128K
  SRAM   (xrw)  : ORIGIN = 0x20000000, LENGTH = 20K      
}
  

/* Sections */
SECTIONS
{
  .text : 
  {
    . = ALIGN(4);    
    *(.text);
    *(.text*);
    . = ALIGN(4);
  } >FLASH 
  
  .rodata : 
  {
    . = ALIGN(4);    
    *(.rodata);
    *(.rodata*);
    . = ALIGN(4);
  } >FLASH 
  
  
  .data : 
  {
    . = ALIGN(4);    
    *(.data);
    *(.data*);
    . = ALIGN(4);
  } >SRAM AT> FLASH
  
  .bss : 
  {
    . = ALIGN(4);    
    *(.bss);
    *(.bss*);
    . = ALIGN(4);
  } >SRAM  
}