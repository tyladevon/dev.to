# Turing mod4 brownfield Dev.to Group Project 👩‍💻👨‍💻
<i>a challenge to implement new features into an existing, open-source codebase</i>

#### Introduction

This was our first project (team of 3) in mod4 at Turing School of Software and Design. The challenge was to familiarize ourselves with a pre-existing codebase and implement a new features into the web app. The backend of the app is built with `Ruby on Rails` and the frontend is built with `Preact`. For our team, this was the first time we had explored a web app that included code for the FE and BE. We had to work together leveraging our specialized skills pertaining to either Ruby/Rails or JavaScript to create the final product. Each piece of additional functionality is thoroughly tested on the BE using `RSpec`/`Capybara` and the FE using `Jest`/`Enzyme`.

#### Project Goal / User Story (Artisanal Collections Track)
I don’t have time and energy to read these articles every day, but I’d like to catch up with the best recent content.

Thankfully, I have you. And you love cultivating content. You login to the app and create a new “collection” with a name like “Best JS of February”. Now when you are reading articles in the app there is a [+] button that, when clicked, gives you the option to add that article to a collection.

The collection has a publicly-sharable URL, so that you can tweet it out, I can click the link, and see a listing page of all the articles in the collection.

#### What We Accomplished

Our team was able to successfully complete all functionality required for our specific track. Below are details about each piece that functionality.

- A drop-down menu was created for each article for a logged-in user's news feed. This menu contains a list of each collection that user has created.

- If a user has not yet created any collections, a "Default Collection" if created upon clicking the `SAVE` button.

- When a user clicks the `SAVE` button on an article, that article is saved to the currently selected collection in the drop-down menu of that article.

- If a user clicks their avatar icon in the top right of the screen, a drop-down menu appears that includes a "Collections" button we created.

- Upon selecting the "Collections" button, a user is redirected to a new page displaying all of the collections that user has created, as well as a form to create a new collection. If that user is not currently logged in, they will see a message directing them to login in order to view collections.

- From the Collections view, a user can click on a specific collection they have created to be redirected to a new page displaying links to all the articles within that collection.

- The URL for this page is unique to each collection. This allows a user to share this URL with another user, enabling them to share their collection containing a list of articles associated with it.

- The listed articles within a collection are displayed as links. When any of these links are clicked, the user will be redirected to the full page of that article.

#### Screenshots of Our Additions

![screenshot 1](https://user-images.githubusercontent.com/53405028/77832133-5b59c980-70f9-11ea-9894-211776fec8dc.png)

![screenshot 2](https://user-images.githubusercontent.com/53405028/77832157-87754a80-70f9-11ea-882d-b91795d2c205.png)

![screenshot 3](https://user-images.githubusercontent.com/53405028/77832167-99ef8400-70f9-11ea-9f3b-6277001fb589.png)

#### How to Install
[click here for installation documentation](#installation-documentation)

#### Team Members:
Zachary Nemeroff https://github.com/ZaneMeroff<br>
Harrison Levin https://github.com/hale4029<br>
Tyla Devon https://github.com/tyladevon


# Below is the original README by Dev.to
<hr>

<div align="center">
  <br>
  <img alt="DEV" src="https://thepracticaldev.s3.amazonaws.com/i/ro3538by3b2fupbs63sr.png" width="500px">
  <h1>DEV Community 👩‍💻👨‍💻</h1>

  <strong>The Human Layer of the Stack</strong>
</div>
<br>
<p align="center">
  <a href="https://www.ruby-lang.org/en/">
    <img src="https://img.shields.io/badge/Ruby-v2.6.5-green.svg" alt="ruby version">
  </a>
  <a href="http://rubyonrails.org/">
    <img src="https://img.shields.io/badge/Rails-v5.2.3-brightgreen.svg" alt="rails version">
  </a>
  <a href="https://travis-ci.com/thepracticaldev/dev.to">
    <img src="https://travis-ci.com/thepracticaldev/dev.to.svg?branch=master" alt="Travis Status for thepracticaldev/dev.to">
  </a>
  <a href="https://codeclimate.com/github/thepracticaldev/dev.to/maintainability">
    <img src="https://api.codeclimate.com/v1/badges/ce45bf63293073364bcb/maintainability" alt="Code Climate maintainability">
  </a>
  <a href="https://codeclimate.com/github/thepracticaldev/dev.to/test_coverage">
    <img src="https://api.codeclimate.com/v1/badges/ce45bf63293073364bcb/test_coverage" alt="Code Climate test coverage">
  </a>
  <a href="https://codeclimate.com/github/thepracticaldev/dev.to/trends/technical_debt">
    <img src="https://img.shields.io/codeclimate/tech-debt/thepracticaldev/dev.to" alt="Code Climate technical debt">
  </a>
  <a href="https://www.codetriage.com/thepracticaldev/dev.to">
    <img src="https://www.codetriage.com/thepracticaldev/dev.to/badges/users.svg" alt="CodeTriage badge">
  </a>
  <img src="https://badgen.net/dependabot/thepracticaldev/dev.to?icon=dependabot" alt="Dependabot Badge">
  <a href="https://gitpod.io/from-referrer/">
    <img src="https://img.shields.io/badge/setup-automated-blue?logo=gitpod" alt="GitPod badge">
  </a>
  <a href="https://app.netlify.com/sites/devto/deploys">
    <img src="https://api.netlify.com/api/v1/badges/e5dbe779-7bca-4390-80b9-6e678b4806a3/deploy-status" alt="Netlify badge">
  </a>
  <img src="https://img.shields.io/github/languages/code-size/thepracticaldev/dev.to" alt="GitHub code size in bytes">
  <img src="https://img.shields.io/github/commit-activity/w/thepracticaldev/dev.to" alt="GitHub commit activity">
  <a href="https://github.com/thepracticaldev/dev.to/issues?q=is%3Aissue+is%3Aopen+label%3A%22ready+for+dev%22">
    <img src="https://img.shields.io/github/issues/thepracticaldev/dev.to/ready for dev" alt="GitHub issues ready for dev">
  </a>
  <a href="https://app.honeybadger.io/project/Pl5JzZB5ax">
    <img src="https://img.shields.io/badge/honeybadger-active-informational" alt="Honeybadger badge">
  </a>
</p>

Welcome to the [dev.to](https://dev.to) codebase. We are so excited to have you.
With your help, we can build out DEV to be more stable and better serve our
community.

## What is dev.to?

[dev.to](https://dev.to) (or just DEV) is a platform where software developers
write articles, take part in discussions, and build their professional profiles.
We value supportive and constructive dialogue in the pursuit of great code and
career growth for all members. The ecosystem spans from beginner to advanced
developers, and all are welcome to find their place within our community. ❤️

## Table of Contents

- [What is dev.to?](#what-is-devto)
- [Table of Contents](#table-of-contents)
- [Contributing](#contributing)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation Documentation](#installation-documentation)
- [Developer Documentation](#developer-documentation)
- [Core team](#core-team)
- [Vulnerability disclosure](#vulnerability-disclosure)
- [License](#license)

## Contributing

We encourage you to contribute to dev.to! Please check out the
[Contributing to dev.to guide](CONTRIBUTING.md) for guidelines about how to
proceed.

## Getting Started

This section provides a high-level quick start guide. If you're looking for the
[installation guide](https://docs.dev.to/installation/), you'll want to refer to
our complete [Developer Documentation](https://docs.dev.to).

We run on a [Rails](https://rubyonrails.org/) backend, and we are currently
transitioning to a [Preact](https://preactjs.com/)-first frontend.

A more complete overview of our stack is available in
[our docs](https://docs.dev.to/technical-overview/).

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/): we recommend using
  [rbenv](https://github.com/rbenv/rbenv) to install the Ruby version listed on
  the badge.
- [Yarn](https://yarnpkg.com/) 1.x: please refer to their
  [installation guide](https://classic.yarnpkg.com/en/docs/install).
- [PostgreSQL](https://www.postgresql.org/) 9.4 or higher.
- [ImageMagick](https://imagemagick.org/): please refer to ImageMagick's
  [installation instructions](https://imagemagick.org/script/download.php).
- [Redis](https://redis.io/) 4 or higher.
- [Elasticsearch](https://www.elastic.co) 7 or higher.

### Installation Documentation

[View Full Installation Documentation](https://docs.dev.to/installation/).

## Developer Documentation

[Check out our dedicated docs page for more technical documentation](https://docs.dev.to).

## Core team

- [@benhalpern](https://dev.to/ben)
- [@jessleenyc](https://dev.to/jess)
- [@peterkimfrank](https://dev.to/peter)
- [@maestromac](https://dev.to/maestromac)
- [@zhao-andy](https://dev.to/andy)
- [@lightalloy](https://dev.to/lightalloy)
- [@rhymes](https://dev.to/rhymes)
- [@jacobherrington](https://dev.to/jacobherrington)
- [@mstruve](https://dev.to/molly_struve)
- [@atsmith813](https://dev.to/atsmith813)
- [@citizen428](https://dev.to/citizen428)
- [@nickytonline](https://dev.to/nickytonline)
- [@joshpuetz](http://dev.to/joshpuetz)
- [@vaidehijoshi](https://dev.to/vaidehijoshi)
- [@juliannatetreault](https://dev.to/juliannatetreault)
- [@ridhwana](https://dev.to/ridhwana)
- [@fdoxyz](https://dev.to/fdoxyz)

## Vulnerability disclosure

We welcome security research on DEV under the terms of our
[vulnerability disclosure policy](https://dev.to/security).

## License

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version. Please see the [LICENSE](./LICENSE.md) file in our repository for
the full text.

Like many open source projects, we require that contributors provide us with a
Contributor License Agreement (CLA). By submitting code to the DEV project, you
are granting us a right to use that code under the terms of the CLA.

Our version of the CLA was adapted from the Microsoft Contributor License
Agreement, which they generously made available to the public domain under
Creative Commons CC0 1.0 Universal.

Any questions, please refer to our [license FAQ](https://docs.dev.to/licensing/)
doc or email yo@dev.to.

<br>

<p align="center">
  <img alt="Sloan, the sloth mascot" width="250px" src="https://thepracticaldev.s3.amazonaws.com/uploads/user/profile_image/31047/af153cd6-9994-4a68-83f4-8ddf3e13f0bf.jpg">
  <br>
  <strong>Happy Coding</strong> ❤️
</p>
