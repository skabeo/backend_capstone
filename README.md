<div align="center">
  <h3><b>Property Rental App</b></h3>
</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 About the Project](#-about-the-project)
  - [🛠 Built With](#-built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [💻 Getting Started](#-getting-started)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Test](#tests)
  - [🔭 Future Features](#-future-features)
  - [🤝 Contributing](#-contributing)
  - [⭐️ Show your Support](#-show-your-support)
  - [🙏 Acknowledgments](#-acknowledgments)
  - [📝 License](#-license)

# 📖 About the Project <a name="about-project"></a>

**Property Rental App** is a web application designed to facilitate the booking of appointments to view and rent properties. The project follows a provided design and layout but adapts the content to offer a platform for reserving appointments with properties for rent.

Select a theme for your website - is it going to be a website for booking doctor appointments, booking online classes, or something else?

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Ruby on Rails</summary>
  <summary>CSS</summary>
  <summary>JavaScript</summary>
  <summary>HTML</summary>
  <summary>React</summary>
  <summary>Redux</summary>
  <summary>Postgres</summary>
</details>

### Key Features <a name="key-features"></a>
- **Responsive design**
- **User authentication with username and password**
- **User can view list of properties for rent**
- **User can view details of a specific property**
- **User can reserve an appointment to view a property**
- **User can view their reservations**
- **User can add and delete properties**

<!-- LIVE DEMO -->
## [Live Demo](https://your-live-demo-link.com)

A live demo link would be up soon


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites
In order to run this project, you need:
- To have the teck stack mentioned [above](#tech-stack);
- To have the following repositories and follow the instructions in the respective README docs:

    - [Front end](https://github.com/skabeo/frontend-capstone);
    - [Back end](https://github.com/skabeo/backend_capstone)

### Setup
Clone this repository to your desired folder:

```sh
git clone https://github.com/skabeo/backend_capstone.git
cd backend_capstone
```
## Install backend dependencies
bundle install

## Create the db, Seed important data and run pending migrations
- rails db:create
- rails db:seed
- rails db:migrate



## Start Rails server
rails s

## Important
- Open the rails application on the browser, copy and save your **CLIENT_ID** and your **CLIENT_SECRET**: You will use them on the frontend app.
- Click on ```View API documentation``` to get the API documentation.

## Rubocop
> To run testing
```
rubocop
```

## Front end repo

You can find the link to the frontend pull request [here](https://github.com/skabeo/frontend-capstone/pull/18)


### Tests
To run some custom tests created for this project:
```sh
rspec
```
- There would be two test failing in `spec/integrations/properties_controller_spec.rb`.
- Add the query
```
INSERT INTO properties (name, image, location, price, created_at, updated_at)
VALUES ('Sample Property', 'sample-image.jpg', 'Accra', 100, NOW(), NOW());
```
into the backend_capstone_test database using the Query tool in Postgres. NB: It should be in the test environment database
- Copy the `id` of the property added when you run the query
```
SELECT *
FROM properties
```
- Replace the id in the in the `spec/integrations/properties_controller_spec.rb` on line 38 and 77 with the id copied
- Re run rspec, all the tests should pass now


<!-- AUTHORS -->

## 👥 Author <a id="authors"></a>

👤 **Spencer Okyere**

- GitHub: [@skabeo](https://github.com/skabeo)
- Twitter: [@black_okyere](https://twitter.com/black_okyere)
- LinkedIn: [LinkedIn](https://linkedin.com/in/spencer-okyere)

👤 **Abdel-Khafid SALAOU**

- GitHub: [@githubhandle](https://github.com/adeola003)
- Twitter: [@twitterhandle](https://twitter.com/khadaf6)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/abdel-khafid-salaou)

👤 **Brian Kimutai Yegon**

- GitHub: [@yegonkimutai](https://github.com/yegonkimutai)
- Twitter: [@yegonbrian8](https://twitter.com/yegonbrian8)
- LinkedIn: [Brian Yegon](https://www.linkedin.com/in/brian-yegon-0717a1241/)

👤 **Juan Diaz**

- GitHub: [@juanmanuelbyc](https://github.com/juanmanuelbyc)
- Twitter: [@twitter](https://twitter.com/juanmanueldiar)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/juan-díaz-5281b3111/)


<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Only admin can add and delete properties**
- **Users will get confirmation emails after reserving a property**
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a id="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/skabeo/backend-capstone/issues).

If you would like to contribute to this project, you can follow these steps:

1. Fork the repository.
2. Create a new branch for your changes.
3. Make your changes and commit them.
4. Push your changes to your forked repository.
5. Create a pull request back to the original repository.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this repo dont forget to give it a star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a id="acknowledgements"></a>

I would like to express my gratitude to the following individuals and organizations for their contributions to this project:

- [GitHub](https://github.com/): Platform for version control and collaboration
- [Microverse](https://www.microverse.org/): Global school for remote software developers

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ❓ FAQ <a id="faq"></a>

- **How can I contribute to this project?**

  - Contributions, issues, and feature requests are welcome! You can check the issues page to see if there are any current issues or feature requests that you can work on. If not, feel free to submit a new issue or pull request. Before contributing, please read the CONTRIBUTING.md file for guidelines on how to contribute to this project.

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/skabeo/backend_capstone/blob/develop/LICENSE.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

