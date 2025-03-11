from setuptools import setup, find_packages

if __name__ == "__main__":
    setup(
        name="benchmarking",  # You can choose a different name
        version="0.0.1",
        packages=find_packages(),  # This will automatically find all packages
            # Or explicitly list them:
        # packages=["utils", "benchmarking", "benchmarking.hip", "benchmarking.kernels", "benchmarking.utils"],
    )