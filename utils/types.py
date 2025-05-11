from enum import Enum, auto

class KernelType(Enum):
    """Enum for different kernel implementations"""
    PYTORCH = auto()
    HIP = auto()
    HIP_BLAS = auto()
    TRITON = auto()
    THUNDERKITTEN = auto()
    
    def __str__(self):
        return self.name.lower()
    
    @classmethod
    def from_string(cls, name: str):
        """Convert string to enum value, case-insensitive"""
        try:
            return cls[name.upper()]
        except KeyError:
            valid_values = [k.name.lower() for k in cls]
            raise ValueError(f"Invalid kernel type: {name}. Valid values are: {', '.join(valid_values)}")

class DataType(Enum):
    """Enum for different kernel implementations"""
    FP32 = auto()
    FP16 = auto()
    
    def __str__(self):
        return self.name.lower()
    
    @classmethod
    def from_string(cls, name: str):
        """Convert string to enum value, case-insensitive"""
        try:
            return cls[name.upper()]
        except KeyError:
            valid_values = [k.name.lower() for k in cls]
            raise ValueError(f"Invalid data type: {name}. Valid values are: {', '.join(valid_values)}")