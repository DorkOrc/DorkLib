import os

BOUND_SIZE: int = 32
MAXIMUM_TREE_SIZE: int = 1024
MAXIMUM_UNIQUE_TREES: int = 63
TOTAL_TREE_GROUPS: int = -(MAXIMUM_UNIQUE_TREES//-7)

def create_tree_group(name: str) -> None:
    if os.path.isdir(f"tree_groups/{name}"):
        for file_name in os.listdir(f"tree_groups/{name}"):
            os.remove(f"tree_groups/{name}/{file_name}")
    else:
        os.mkdir(f"tree_groups/{name}")

    for tree_size in range(BOUND_SIZE,MAXIMUM_TREE_SIZE+BOUND_SIZE,BOUND_SIZE):
        with open(f"tree_groups/{name}/{tree_size}.mcfunction","w") as file:
            file.writelines(
                [
                    "$$(%s)\n" % (i,) for i in range(0,tree_size)
                ]
            )
            file.write("return 1\n")

if __name__ == "__main__":
    for folder_name in os.listdir("tree_groups"):
        if os.path.isdir(f"tree_groups/{folder_name}"):
            for file_name in os.listdir(f"tree_groups/{folder_name}"):
                os.remove(f"tree_groups/{folder_name}/{file_name}")
            os.rmdir(f"tree_groups/{folder_name}")

    with open("load.mcfunction","w") as file:
        file.write(
            f"scoreboard players set #dynamic_function.total_tree_groups dorklib.global {TOTAL_TREE_GROUPS}\n"
            + "data merge storage dorklib:dynamic_function {tree_groups:{%s}}\n"
            % (
                ",".join (["%s:{}" % i for i in range(0,TOTAL_TREE_GROUPS)]),
            )
            + "data modify storage dorklib:constant empty_dynamic_function set value {%s}\n"
            % (
                ",".join ([f"{i}:\"return 1\"" for i in range(0,MAXIMUM_TREE_SIZE)]),
            )
        )

    for tree_group_name in range(0,TOTAL_TREE_GROUPS):
        create_tree_group(tree_group_name)
