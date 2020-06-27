from setuptools import find_packages
from setuptools import setup

setup(
    name="project1",
    version="1.0",
    license="BSD",
    maintainer="Phoenix",
    maintainer_email="phoenixocean193@gmail.com",
    description="Book review blog for cs50",
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=["flask"],
    extras_require={"test": ["pytest", "coverage"]},
)