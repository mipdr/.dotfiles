### KEYBOARD FIXES - see https://hidutil-generator.netlify.app/

# These fixes are for the Logitech Pebble K380 keyboard with "ProductID": 0xB377
# If the product id changes see Apple icon > About This Mac > System Report > Bluetooth

# Fix keyboard issue where right Opt is recognized as right Ctrl
# Fix keyboard issue where left Opt is recognized as left Cmd
# Fix keyboard issue where left Cmd is recognized as left Opt
# Fix keyboard issue where right Opt is recognized as right Cmd
# Fix keyboard issue where right Cmd is recognized as right Opt
# Fix keyboard issue where < is recognized as º
# Fix keyboard issue where º is recognized as <
hidutil property --matching '{"ProductID": 0xB377}' --set '{"UserKeyMapping":[
    {
      "HIDKeyboardModifierMappingSrc": 0x7000000E4,
      "HIDKeyboardModifierMappingDst": 0x7000000E6
    },
    {
      "HIDKeyboardModifierMappingSrc": 0x7000000E2,
      "HIDKeyboardModifierMappingDst": 0x7000000E3
    },
    {
      "HIDKeyboardModifierMappingSrc": 0x7000000E3,
      "HIDKeyboardModifierMappingDst": 0x7000000E2
    },
    {
      "HIDKeyboardModifierMappingSrc": 0x7000000E6,
      "HIDKeyboardModifierMappingDst": 0x7000000E7
    },
    {
      "HIDKeyboardModifierMappingSrc": 0x7000000E7,
      "HIDKeyboardModifierMappingDst": 0x7000000E6
    },
    {
      "HIDKeyboardModifierMappingSrc": 0x70000000A,
      "HIDKeyboardModifierMappingDst": 0x700000032
    },
    {
      "HIDKeyboardModifierMappingSrc": 0x700000032,
      "HIDKeyboardModifierMappingDst": 0x70000000A
    }
]}'