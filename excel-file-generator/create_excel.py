import openpyxl
import sys

def create_excel_file(output_file, data_list):
    # Create a new workbook and select the active sheet
    workbook = openpyxl.Workbook()
    sheet = workbook.active

    # Write each item in the list to a new cell in the first column
    for index, item in enumerate(data_list, start=1):
        sheet.cell(row=index, column=1, value=item)

    # Save the workbook to the specified output file
    workbook.save(output_file)

def read_list_from_file(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
        # Remove bullet points or hyphens and leading/trailing whitespaces
        cleaned_lines = [line.strip('- ').strip() for line in lines]
        return cleaned_lines

if __name__ == "__main__":
    # Check if the correct number of command-line arguments is provided
    if len(sys.argv) != 2:
        print("Usage: python script_name.py input_file.txt")
        sys.exit(1)

    # Get the file paths from command-line arguments
    input_file = sys.argv[1]
    output_file = 'output.xlsx'

    # Read the list from the file and create the Excel file
    data_list = read_list_from_file(input_file)
    create_excel_file(output_file, data_list)