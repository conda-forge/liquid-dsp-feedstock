About liquid-dsp
================

Home: https://liquidsdr.org/

Package license: MIT

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/liquid-dsp-feedstock/blob/main/LICENSE.txt)

Summary: Digital signal processing library for software-defined radios

Development: https://github.com/jgaeddert/liquid-dsp

Documentation: https://liquidsdr.org/doc

liquid-dsp is a free and open-source digital signal processing (DSP) library designed specifically for software-defined radios on embedded platforms. The aim is to provide a lightweight DSP library that does not rely on a myriad of external dependencies or proprietary and otherwise cumbersome frameworks. All signal processing elements are designed to be flexible, scalable, and dynamic, including filters, filter design, oscillators, modems, synchronizers, complex mathematical operations, and much more.


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=18407&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/liquid-dsp-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=18407&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/liquid-dsp-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=18407&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/liquid-dsp-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=18407&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/liquid-dsp-feedstock?branchName=main&jobName=win&configuration=win%20win_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libliquid1-green.svg)](https://anaconda.org/conda-forge/libliquid1) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libliquid1.svg)](https://anaconda.org/conda-forge/libliquid1) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libliquid1.svg)](https://anaconda.org/conda-forge/libliquid1) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libliquid1.svg)](https://anaconda.org/conda-forge/libliquid1) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-liquid--dsp-green.svg)](https://anaconda.org/conda-forge/liquid-dsp) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/liquid-dsp.svg)](https://anaconda.org/conda-forge/liquid-dsp) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/liquid-dsp.svg)](https://anaconda.org/conda-forge/liquid-dsp) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/liquid-dsp.svg)](https://anaconda.org/conda-forge/liquid-dsp) |

Installing liquid-dsp
=====================

Installing `liquid-dsp` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

Once the `conda-forge` channel has been enabled, `libliquid1, liquid-dsp` can be installed with `conda`:

```
conda install libliquid1 liquid-dsp
```

or with `mamba`:

```
mamba install libliquid1 liquid-dsp
```

It is possible to list all of the versions of `libliquid1` available on your platform with `conda`:

```
conda search libliquid1 --channel conda-forge
```

or with `mamba`:

```
mamba search libliquid1 --channel conda-forge
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search libliquid1 --channel conda-forge

# List packages depending on `libliquid1`:
mamba repoquery whoneeds libliquid1 --channel conda-forge

# List dependencies of `libliquid1`:
mamba repoquery depends libliquid1 --channel conda-forge
```


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [Anaconda-Cloud](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating liquid-dsp-feedstock
=============================

If you would like to improve the liquid-dsp recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/liquid-dsp-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ryanvolz](https://github.com/ryanvolz/)

