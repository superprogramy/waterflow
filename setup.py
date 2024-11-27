from setuptools import setup, find_packages\n\nsetup(\n    name='waterfow',\n    version='0.1.0',\n    packages=find_packages(where='src'),\n    package_dir={'': 'src'},\n)
