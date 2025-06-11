from hip import hip
from hip import hipblas
import torch

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

def compare(C_h: torch.Tensor, C_expected: torch.Tensor, debug: bool):
    """
    Compare the output of the kernel with the expected result.
    If mismatched, print full tensors and write them to a file.
    """

    if debug:
        output_path="compare_output.txt"
        torch.set_printoptions(threshold=100000, linewidth=200, sci_mode=False)

    if torch.allclose(C_expected, C_h, atol=1e-1, rtol=1e-3):
        print("✅ Matrix multiplication successful")
    else:
        print("❌ Matrix multiplication FAILED")

        if debug:
            with open(output_path, "w") as f:
                f.write("❌ Matrix multiplication FAILED\n")
                f.write("=== Computed Output ===\n")
                f.write(f"{C_h}\n\n")
                f.write("=== Expected Output ===\n")
                f.write(f"{C_expected}\n\n")
                f.write("=== Difference ===\n")
                f.write(f"{C_h - C_expected}\n")

            print(f"\n📝 Results written to '{output_path}'")