def read_file(file_path):
    """Returns the contents of a file given its file path."""
    try:
        with open(file_path, "r", encoding="utf-8") as file:
            return file.read()
    except FileNotFoundError:
        return "Error: File not found."
    except Exception as e:
        return f"Error: {e}"

def read_file_as_bytes(file_path):
    """Returns the contents of a file as bytes."""
    try:
        with open(file_path, "rb") as file:
            return file.read()
    except FileNotFoundError:
        return b"Error: File not found."
    except Exception as e:
        return f"Error: {e}".encode("utf-8")  # Convert error to bytes