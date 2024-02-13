import xml.etree.ElementTree as ET
tree = ET.parse('build/Vtop.xml').getroot()
ET.indent(tree)
print(ET.tostring(tree, encoding='unicode'))
