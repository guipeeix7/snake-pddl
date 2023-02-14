import glob

list_of_input_files = glob.glob('./out/*') # * means all if need specific format then *.csv

lines = []
print(list_of_input_files)
# with open(list_of_input_files[-1]) as f:
#     lines = f.readlines() 