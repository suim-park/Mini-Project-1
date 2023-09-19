![Python CI](https://github.com/suim-park/Python-Template/actions/workflows/cicd.yml/badge.svg)
# IDS-706-Data-Engineering :computer:

### Mini Project 1 :page_facing_up:</br> 

#### :ballot_box_with_check: Requirements
* .devcontainer configuration for a Python environment
* Makefile with commands for setup, testing, and linting
* GitHub Actions for CI/CD
* requirements.txt for project dependencies
* README.md with setup and usage instructions

-----------------------------------------------
#### :ballot_box_with_check: To-do List
* __GitHub repository__: Create a Python GitHub Template in GitHub repository</br>
* __Link to successful GitHub Action run__: Confirm whether GitHub Action has been executed successfully</br>

-----------------------------------------------
#### :ballot_box_with_check: In-progress
__`Step 1`__ : Set up with the necessary files to build GitHub Repository such as Makefile, requirements.txt, main.yml, Dockerfile, devcontainer.json, etc.</br>
- `Makefile`</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/a9c1338b-eea0-4691-9a1d-0b7d3796e164.png" width="380" height="270"/></br>
- `requirements.txt`: Add `Polars` and `Matlibplot`(version=3.7.1) packages</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/d9d32b47-e888-4ac1-a06b-6fb23e562a62.png" width="160" height="340"/></br>
- `main.yml`</br>
<img src="https://github.com/suim-park/Mini-Project-3/assets/143478016/4500fa92-97e0-4e09-825e-dd5d05fe0c72g.png" width="400" height="750"/></br>
- `Dockerfile`</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/34f565f5-fa3a-4d75-9824-8a30db7b4d38.png" width="1300" height="320"/></br>
- `devcontainer.json`</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/e554c866-630a-425b-a720-618b69e1c83d.png" width="600" height="400"/></br>
__`Step 2`__ : Create a main.py file using the Polars package and a test_main.py file to test it. In these files, you should be able to fetch data from a CSV file and calculate the mean, median, and standard deviation. Additionally, utilize the variables in the provided data to create graphs and visualize the data directly.</br>
* `main.py`</br>
```
# Main.py using polars and matplotlib to set data and see some plot

import polars as pl
import matplotlib.pyplot as plt

penguins_df = pl.read_csv("penguins.csv")
print(penguins_df)


# Calculate mean, median, standard deviation of each columns
def calculate_stat():
    penguins_desc = penguins_df.describe()
    print(penguins_desc)


calculate_stat()


# Make a histogram of 'bill_length_mm' column in penguins.csv
def build_histogram():
    plt.hist(penguins_df["bill_length_mm"], bins=20, color="green", edgecolor="white")
    plt.xlabel("bill_length_mm")
    plt.ylabel("Frequency")
    plt.title("Bill Length Histogram")
    plt.savefig("bill_length_hist.png")
    plt.show()
    return


build_histogram()
```
* `test_main.py`</br>
```
# Test main.py

from main import calculate_stat, build_histogram


def test_calculate_stat():
    calculate_stat()


def test_hist():
    build_histogram()


if __name__ == "__main__":
    test_calculate_stat()
    build_histogram()
```
__`Step 3`__ : Verify if the statistics of 'penguins.csv' are displayed using 'main.py' and 'test_main.py.' Additionally, examine whether the histogram of one of the data variables, 'bill_length_mm,' has been properly visualized and saved in the repository.
* Statistics</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/f50b98f2-3923-4f27-ab2c-95cbd972ec77.png" width="600" height="280"/></br>
* Visualization ([bill_length_hist.png](https://github.com/nogibjj/Suim-Park-Mini-Project-3/blob/main/bill_length_hist.png))</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/6844bdde-92d3-47ed-9acd-7b0792954c13.png" width="600" height="430"/></br>
__`Step 4`__ : Check whether GitHub Action is working correctly for Linting, Testing, and Formatting checks.</br>
* `Generate Graph and Markdown`</br>
<img src="https://github.com/suim-park/Mini-Project-3/assets/143478016/eee4c8a3-8280-4249-8834-63913471dbcd.png" width="600" height="600"/></br>
* `Lint`</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/93703cd5-27e8-4ace-b15b-a34717baa66d.png" width="400" height="150"/></br>
* `Test`</br>
<img src="https://github.com/suim-park/Mini-Project-3/assets/143478016/e3aa80bb-3900-4bb9-a60e-de6150e2ccfd.png" width="480" height="200"/></br>
* `Format`</br>
<img src="https://github.com/nogibjj/Suim-Park-Mini-Project-2/assets/143478016/99e24b49-b970-4249-b986-3034100e31cd.png" width="250" height="130"/></br>
