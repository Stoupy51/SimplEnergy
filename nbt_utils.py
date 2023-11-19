
## Python script that provide a function to transform a dictionary into a NBT format for Minecraft
#punctuation = [" ", "!", "?"]
from string import punctuation
def dict_to_nbt(d: dict) -> str:
	""" Transform a dictionary into a NBT format for Minecraft

	Args:
		d (dict): The dictionary to transform

	Returns:
		str: The NBT format
	"""
	string = "{"
	count = 0
	for k, v in d.items():
		key_string = k
		for i in punctuation + ' ':
			if i in key_string:
				k_replace = k.replace('"', '\\"').replace("'", "\\'")
				key_string = f'"{k_replace}"'
				break
		if isinstance(v, dict) and k != "display":
			string += f"{key_string}:{dict_to_nbt(v)}"
		elif isinstance(v, list):
			string += f"{key_string}:["
			for i in v:
				if isinstance(i, dict):
					string += f"{dict_to_nbt(i)},"
				else:
					string += f"{i},"
			if string[-1] == ",":
				string = string[:-1]
			string += "]"
		else:
			if isinstance(v, str):
				if v.count("'") > 0:
					v_replace = v.replace("'", "\\'").replace("\n", "\\\\n").replace("\t", "\\\\t")
					string += f'{key_string}:\'{v_replace}\''
				else:
					v_replace = v.replace('"', '\\"').replace("\n", "\\\\n").replace("\t", "\\\\t")
					string += f'{key_string}:"{v_replace}"'
			elif isinstance(v, bool):
				string += f'{key_string}:{str(v).lower()}'
			elif isinstance(v, int):
				if v < 128 and v > -128:
					string += f'{key_string}:{v}b'
				elif v < 32768 and v > -32768:
					string += f'{key_string}:{v}s'
				else:
					string += f'{key_string}:{v}'
			elif isinstance(v, float):
				string += f'{key_string}:{v}f'
			else:
				if k == "display":
					v_replace = str(v).replace("'Name': ", "Name:").replace(", 'Lore': ", ",Lore:")
					string += f'{key_string}:{v_replace}'
				else:
					string += f'{key_string}:{v}'
		if count != len(d) - 1:
			string += ","
		count += 1
	string += "}"
	return string


