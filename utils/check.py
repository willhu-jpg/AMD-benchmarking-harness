from hip import hip
from hip import hipblas
import numpy as np

def hip_check(call_result):
    """Check HIP and hipBLAS function results."""
    err = call_result[0]
    result = call_result[1:]
    if len(result) == 1:
        result = result[0]
    if isinstance(err, hip.hipError_t) and err != hip.hipError_t.hipSuccess:
        raise RuntimeError(str(err))
    elif isinstance(err, hipblas.hipblasStatus_t) and err != hipblas.hipblasStatus_t.HIPBLAS_STATUS_SUCCESS:
        raise RuntimeError(str(err))
    return result

def compare(C_h: np.ndarray, C_expected: np.ndarray):
    """
    Compare the output of the kernel with the expected result
    """

    # Compare with expected result
    if np.allclose(C_expected, C_h, atol=1e-3):
        print("✅ Matrix multiplication successful")
    else:
        print("❌ Matrix multiplication FAILED")
        print(f"Output: {C_h}")
        print(f"Golden: {C_expected}")
