# %% [markdown]
# ---
# title: Python
# ---

# %% [markdown]
# ## What is Python?

# %% [markdown]
# ## How to install Python?

# %% [markdown]
# ## Using Python

# %% [markdown]
# ## Coding Conventions

# %% [markdown]
# ## Learning Resources

# %%
# | echo: false
# import pandas as pd

# df = pd.read_csv("penguins.csv")

# %% [markdown]
# """
# ## Exploring the data

# See @fig-bill-sizes for an exploration of bill sizes by species.
# """

# %%
# | label: fig-bill-sizes
# | fig-cap: Bill Sizes by Species

# import matplotlib.pyplot as plt  # noqa: E402
# import seaborn as sns  # noqa: E402

# g = sns.FacetGrid(df, hue="species", height=3, aspect=3.5 / 1.5)
# g.map(plt.scatter, "bill_length_mm", "bill_depth_mm").add_legend()
