# 🚀 RailsBooster

Preconfigured Ruby On Rails Boilerplate To Provide Instant Productivity ⚡️

## 🤓 Motivation behind the project

I regularly keep experimenting with ideas and problems to solve with Ruby On Rails as my choice of stack. However, I find myself configuring Rails as per my preference with every new project to reach to a stage where I can start working on the actual business logic.

RailsBooster is an attempt to put together all the common configurations, gems and best practices in one place which will eliminate the need of all prerequisites and immediately enables working on the actual business logic.

## 📦 What's in the box?

- Authentication using Devise with pretty Login/Sign Up pages
- TailwindCSS as CSS framework with PurgeCSS configured
- DotEnv support for picking up variables from `.env` only for development & testing environment
- [SuckerPunch](https://github.com/brandonhilkert/sucker_punch) for running lightweight async background jobs as `ActiveJob` default adapter

## 🛠 Getting Started

- Clone this repo with `git clone git@github.com:BilalBudhani/RailsBooster.git [YOUR PROJECT FOLDER NAME]`
- Run `bundle install && yarn install`
- Run `cp .env.example .env`
- Run `rails g rename:into [ProjectName]`
- Remove `rename` gem from `Gemfile`
- RailsBooster ships with `Procfile.dev` to run multiple processes with a single command. I recommend installing [Overmind](https://github.com/DarthSim/overmind) or [Foreman](https://github.com/ddollar/foreman) to run this project.
- Start Rails and Webpacker server with `overmind s`

## License

RailsBooster is licensed under the MIT license. (opensource.org/licenses/MIT)
