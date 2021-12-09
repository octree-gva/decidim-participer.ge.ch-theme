<h1 align="center"><img src="https://github.com/octree-gva/meta/blob/main/decidim/static/header.svg?raw=true" alt="Decidim - Octree Participatory democracy on a robust and open source solution"></h1>
<h4 align="center">
    <a href="https://www.octree.ch">Octree</a> |
    <a href="https://octree.ch/en/contact-us/">Contact Us</a> |
    <a href="https://blog.octree.ch">Our Blog (FR)</a><br/><br/>
    <a href="https://decidim.org">Decidim</a> |
    <a href="https://docs.decidim.org/en/">Decidim Docs</a> |
    <a href="https://meta.decidim.org">Participatory Governance (meta decidim)</a><br/><br/>
    <a href="https://matrix.to/#/+decidim:matrix.org">Decidim Community (Matrix+Element.io)</a>
</h4>


<br/><br/>
This repository contains overrides over the main [decidim-participer.ge.ch repository](https://github.com/octree-gva/decidim-participer.ge.ch).


# Why?

This structure of repositories is quiet uncommon, the reason why is related to security processes.

* We have a main repository that produces "bases images", that evolves less and goes through security audits. 
* We have a repository of overrides that allow to re-build images more frequently, with faster security audits as we have less code.


# Useful links

To understand better how these repositories interact, I invite you to visit: 

* [The main repository](https://github.com/octree-gva/decidim-participer.ge.ch)
* [The application and mailer layouts](https://github.com/octree-gva/decidim-participer.ge.ch/tree/master/app/views/layouts/decidim), that will add some code to customize better Decidim.
* [application.css](https://github.com/octree-gva/decidim-participer.ge.ch/blob/master/app/assets/stylesheets/application.css) that will require sass inside an organizations folder. 
* [Our container registry for base images](https://git.octree.ch/decidim/ocsin/container_registry/105)
* [Our container registry for final images](https://git.octree.ch/decidim/ocsin-onpremise/container_registry/106)



<br /><br />
<p align="center">
    <img src="https://raw.githubusercontent.com/octree-gva/meta/main/decidim/static/octree_and_decidim.svg" height="90" alt="Decidim Installation by Octree" />
</p>