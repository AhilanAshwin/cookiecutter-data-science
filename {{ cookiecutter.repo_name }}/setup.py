"""{{cookiecutter.repo_name }}."""
from pathlib import Path

from setuptools import setup


def read_lines(path):
    """Read lines of `path`."""
    with open(path) as f:
        return f.read().splitlines()


BASE_DIR = Path(__file__).parent

setup(
    name="{{ cookiecutter.repo_name }}",
    version='0.1.0',
    author='{{ cookiecutter.author_name }}',
    license='{% if cookiecutter.open_source_license == 'MIT' %}MIT{% elif cookiecutter.open_source_license == 'BSD-3-Clause' %}BSD-3{% endif %}',
    description='{{ cookiecutter.description }}',
    long_description=open(BASE_DIR / "README.md").read(),
    install_requires=read_lines(BASE_DIR / "requirements.txt"),
    extras_require={"dev": read_lines(BASE_DIR / "requirements-dev.txt")},
    packages=["{{ cookiecutter.repo_name }}"],
    package_dir={"": "src"},
    include_package_data=True,
)
