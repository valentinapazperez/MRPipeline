<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="http://www.nshd.mrc.ac.uk/files/2515/6654/8470/Circle_NSHD.png">
    <img src="http://www.nshd.mrc.ac.uk/files/2515/6654/8470/Circle_NSHD.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">SNP Extractor</h3>

  <p align="center">
  This program allows fast extraction of SNPs from UK Biobank for the purpose of Mendelian randomisation. The program can output SNPs in either .gen or .bgen format. 
    <br />
    <a href="https://github.com/asalzy/MRPipeline/issues">Report Bug</a>
    ·
    <a href="https://github.com/asalzy/MRPipeline/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>


<!-- Getting Started -->
## Getting Started

The code and associated files for the program are hosted on github, where they are regularly updated. This program only works with UKB data separated into individual chromosomes with names matching the following pattern -         
__"C\[1-22]\_ukbb_v3_eur_indiv_variant_qc_bgen.__

### Prerequisites

The git package is required to clone the repository onto your local machine. The installation of git onto your bash profile has been described in great detail in [this guide](https://www.atlassian.com/git/tutorials/install-git). 

### Installation

1. Clone the repo into your PATH directory (usually ~/bin). If you don't know how to set up your PATH, please see the following [guide](https://opensource.com/article/17/6/set-path-linux)
   ```sh
   git clone https://github.com/asalzy/MRPipeline
   ```
2. Copy the executable file 'extractSNP' into the PATH directory 
   ```sh
   #Run this command from inside the MRPipeline folder 
   cp extractSNP ..
   ```
3. Set location of directory containing UKB data in PARAMS. You can also add a default output directory and SNP list. Otherwise, these can be included in the command using the -o and -s flags, respectively. 
   ```sh
   nano PARAMS
   ```
   
<p align="left">
  <a href="https://i.ibb.co/xznQYZ1/Screenshot-2021-07-23-at-18-45-24.png">
    <img src="https://i.ibb.co/xznQYZ1/Screenshot-2021-07-23-at-18-45-24.png" alt="Logo" width="800" height="400">
  </a>
</p>


<!-- USAGE EXAMPLES -->
## Usage

This section will present how one can extract SNPs using the extractSNP function. Here the location of the snp list and output directory are included in the command line. However, this can also be included as a default in the PARAM file, for example if you want all your results to be outputted to a certain folder by default. 

  ``sh 
  extractSNP -b -o path/to/output/directory -s path/to/snplist -n nameOfOutputFile 
  `` 
  
### Help file 

You can find the help page by using the -h flag

  ``sh 
  extractSNP -h 
  ``

<p align="left">
  <a href="https://i.ibb.co/s63drWn/Screenshot-2021-07-23-at-19-12-47.png">
    <img src="https://i.ibb.co/s63drWn/Screenshot-2021-07-23-at-19-12-47.png" alt="Logo" width="800" height="400">
  </a>
</p>



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Img Shields](https://shields.io)
* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Pages](https://pages.github.com)
* [Animate.css](https://daneden.github.io/animate.css)
* [Loaders.css](https://connoratherton.com/loaders)
* [Slick Carousel](https://kenwheeler.github.io/slick)
* [Smooth Scroll](https://github.com/cferdinandi/smooth-scroll)
* [Sticky Kit](http://leafo.net/sticky-kit)
* [JVectorMap](http://jvectormap.com)
* [Font Awesome](https://fontawesome.com)





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
