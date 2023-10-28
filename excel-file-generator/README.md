# Excel File Creator

This Python script takes input from a text file, processes the data by removing specified characters, and creates an Excel file with the cleaned data.

## Usage

To use this script, follow the instructions below:

1. Ensure you have Python installed on your system.

2. Run the script from the command line with the following format:
   ```
   python script_name.py input_file.txt output.xlsx characters_to_remove
   ```

   Replace `script_name.py` with the actual name of your script.

   Example:
   ```
   python excel_creator.py input_data.txt output.xlsx -
   ```

   - `input_file.txt`: The path to the input text file.
   - `output.xlsx`: The desired name of the output Excel file.
   - `characters_to_remove`: Specify characters to be removed from each line.

## Dependencies

The script uses the `openpyxl` library for Excel file handling. You can install it using:

```bash
pip install openpyxl
```

## Example

Suppose you have a file named `input_data.txt` with the following content:

```
- Item 1
- Item 2
- Item 3
```

Running the script:

```bash
python excel_creator.py input_data.txt output.xlsx -
```

Will create an Excel file named `output.xlsx` with the following content:

```
Item 1
Item 2
Item 3
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

Feel free to customize it further based on your specific needs!
