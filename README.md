## BoilerHaus

## Overview

**BoilerHaus** is a platform for DJs, created by DJs, where artists can share industry trends, source and/or share info about upcoming events, and partner with other DJs through collaborative playlists/sets.


<br>

## MVP

_**BoilerHaus** is an alternative to the algorithm-centric approach employed by many streaming platforms, which oftentimes generate poorly curated playlists and radio stations through improperly-trained recommender models, and instead restores the human element to music curation through a platform where DJs, primarily within the house music genre, can share their own sounds and work with other DJs through collaborative playlists and B2Bs. At its core, **BoilerHaus** will allow DJs to both create/update their own playlists and collaborate with others._

<br>

### Goals

- _Allow DJs to login and register new profiles,_
- _Source and/or share information about upcoming events,_
- _Create, read, update or delete their own playlists_
- _Create or update playlists with other certified collaborators._

<br>

### Libraries and Dependencies

|     Library      | Description                                |
| :--------------: | :----------------------------------------- |
|      React       | _For client-side rendering/interface_ |
|   React Router   | _Necessary for routing between create, edit, update and delete screens_ |
|  React Carousel  | _Necessary for genre, artists and cities carousel on the Home page_ |
|      Rails       | _For server-side interactions_ |

<br>

### Client (Front End)

#### Wireframes

> Use the Wireframes section to display desktop, tablet and mobile views. No hand-drawn wireframes. Use a tool like wireframe.cc, Whimsical or AdobeXD

![Dummy Link](url)

- Desktop Landing

![Dummy Link](url)

- Desktop Hero

![Dummy Link](url)

- Resource Index

![Dummy Link](url)

- Resource Show

![Dummy Link](url)

- Tablet Resource Index

![Dummy Link](url)

- Mobile Resource Index

#### Component Tree

![Component Tree](https://docs.google.com/spreadsheets/d/1HWHGyxn3QzHjoIJSkhxYBnx8-ftphslzAlTgZAPsya8/edit?usp=sharing) 

#### Component Hierarchy

> Use this section to define your React components and the data architecture of your app. This should be a reflection of how you expect your directory/file tree to look like. 

``` structure

src
|__ assets/
      |__ fonts
      |__ images
      |__ mockups
|__ components/
      |__ Layout.jsx
            |__ Nav.jsx
                  |__ SocialMedia.jsx
                  |__ Login.jsx
                  |__ Register.jsx
            |__ Footer.jsx
                  |__ SocialMedia.jsx
      |__ Artists.jsx
            |__ UpcomingEvents.jsx
            |__ Playlist.jsx
            |__ PlaylistDetail.jsx
|__ services/
      |__ artists.js
      |__ playlists.js

```

#### Component Breakdown

> Use this section to go into further depth regarding your components, including breaking down the components as stateless or stateful, and considering the passing of data between those components.

|  Component   |    Type    | state | props | Description                                                      |
| :----------: | :--------: | :---: | :---: | :--------------------------------------------------------------- |
|    Nav    | functional |   n   |   n   | _The header will contain the logo, social media icons, and login/register links._               |
|  Layout  | functional |   n   |   n   | _The layout will contain the header and footer and will render them to all pages._       |
|   Artists    |   functional    |   y   |   n   | _The artist component will render all of the featured artists using cards in flexbox._      |
| Artist | functional |   n   |   y   | _The artist card will render the artist info via props._                 |
|    Footer    | functional |   n   |   n   | _The footer will show contact info, social media icons, and login/register links._ |

#### Time Estimates

> Use this section to estimate the time necessary to build out each of the components you've described above.

| Task                | Priority | Estimated Time | Time Invested | Actual Time |
| ------------------- | :------: | :------------: | :-----------: | :---------: |
| Add Contact Form    |    L     |     3 hrs      |     2 hrs     |    3 hrs    |
| Create CRUD Actions |    H     |     3 hrs      |     1 hrs     |     TBD     |
| TOTAL               |          |     6 hrs      |     3 hrs     |     TBD     |

<br>

### Server (Back End)

#### ERD Model

> Use this section to display an image of a computer generated ERD model. You can use draw.io, Lucidchart or another ERD tool.

<br>

***

## Post-MVP

> Use this section to document ideas you've had that would be fun (or necessary) for your Post-MVP. This will be helpful when you return to your project after graduation!

***

## Code Showcase

> Use this section to include a brief code snippet of functionality that you are proud of and a brief description.

## Code Issues & Resolutions

> Use this section to list of all major issues encountered and their resolution.
