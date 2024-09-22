from setuptools import setup, find_packages

setup(
    name="xontrib-dir-picker",
    version="1.0.0",
    packages=find_packages(exclude=["tests*"]),
    install_requires=[],
    author="Andrey Chausenko",
    author_email="andrey@memz.au",
    description="Directory picker / navigator for xonsh shell",
    keywords=["shell", "xonsh", "xontrib"],
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    url="https://github.com/Beh01der/xontrib-dir-picker.git",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Topic :: System :: Shells",
        "Topic :: System :: System Shells",
        "Topic :: Terminals",
    ],
    python_requires=">=3.6",
)
