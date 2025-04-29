import json
import requests
import sys
import os
from typing import Generator

if __name__ == "__main__":
	version_manifest: dict = json.loads(requests.get("https://piston-meta.mojang.com/mc/game/version_manifest_v2.json").content.decode(encoding="utf-8"))

	version_id: str = version_manifest["latest"]["snapshot"]
	if len(sys.argv) >= 2:
		version_id: str = sys.argv[1]
	elif input(f"Use the latest snapshot, {version_id}? [Y/n] ").upper() == "N":
		version_id: str = input("Enter the version ID: ")

	valid_version_id = False
	for version_data in version_manifest["versions"]:
		if version_data["id"] == version_id:
			valid_version_id = True
			version_jar_data_url: str = version_data["url"]

	if not valid_version_id:
		raise Exception(
			'"'
			+ (version_id)
			+ '" is not a valid version ID'
		)

	try:
		block_states = json.loads(requests.get(f"https://raw.githubusercontent.com/misode/mcmeta/refs/tags/{version_id}-summary/blocks/data.json").content.decode(encoding="utf-8"))
	except json.decoder.JSONDecodeError:
		raise Exception("Failed to download block registry")
	
	def tree(blocks: list[str], start: int = 0, end: int = None, indentation: int = 0):
		if (n := len(blocks)) == 0:
			raise Exception("At least one block must be specified")
		
		if end == None:
			end = n

		if start >= end:
			raise Exception("Start index must be less than end index")
		
		if indentation == 0:
			for folder_path, _, file_names in os.walk("dorklib/data/dorklib/function/impl/block/block_state/tree"):
				for file_name in file_names:
					os.remove(os.path.join(folder_path,file_name))

		if end - start <= 12:

			with open(f"dorklib/data/dorklib/function/impl/block/block_state/tree/{start}..{end-1}.mcfunction","w") as file:
				file.writelines(
					[
						f"execute if block ~ ~ ~ minecraft:{block} run return run function dorklib:impl/block/block_state/tree/{block}\n" if len(block_states[block][0]) > 0 else 'execute if block ~ ~ ~ minecraft:%s run return run data modify storage do:io output set value {Name:"minecraft:%s"}\n' % (block,block)
						for block in blocks
					]
				)
			for block in blocks:
				if len(block_states[block][0]) == 0:
					continue
				with open(f"dorklib/data/dorklib/function/impl/block/block_state/tree/{block}.mcfunction","w") as file:
					file.write('data modify storage do:io output set value {Name:"minecraft:%s",Properties:%s}\n' % (block, json.dumps(block_states[block][1])))
					for property, values in block_states[block][0].items():
						for value in values:
							if block_states[block][1][property] == value:
								continue
							file.write('execute if block ~ ~ ~ %s[%s=%s] run data modify storage do:io output.Properties.%s set value "%s"\n' % (block, property, value, property, value))


			return

		with open(f"dorklib/data/dorklib/function/impl/block/block_state/tree/{start}..{end-1}.mcfunction" if indentation > 0 else "dorklib/data/dorklib/function/impl/block/block_state/tree/root.mcfunction","w") as file:
			file.write(
				'execute if predicate {condition:"minecraft:location_check",predicate:{block:{blocks:%s}}} run return run function dorklib:impl/block/block_state/tree/%s..%s\n' * 4 
				% (
					json.dumps(blocks[:n//4],separators=(",",":")), start, start+n//4-1,
					json.dumps(blocks[n//4:2*n//4],separators=(",",":")), start+n//4, start+2*n//4-1,
					json.dumps(blocks[2*n//4:3*n//4],separators=(",",":")), start+2*n//4, start+3*n//4-1,
					json.dumps(blocks[3*n//4:],separators=(",",":")), start+3*n//4, end-1,
				)
			)
		if end - start > 0:
			tree(
				blocks[:+n//4], 
				start, 
				start + n//4, 
				indentation+1
			)
			tree(
				blocks[n//4:2*n//4], 
				start + n//4, 
				start + 2*n//4, 
				indentation+1
			)
			tree(
				blocks[2*n//4:3*n//4], 
				start + 2*n//4, 
				start + 3*n//4, 
				indentation+1
			)
			tree(
				blocks[3*n//4:], 
				start + 3*n//4, 
				end, 
				indentation+1
			)
	
	tree(list(block_states.keys()))
