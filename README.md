# STI DoCSSa {dok~sa}

Sass based CSS architecture and methodology based on docssa.info for STI projects. This is designed as a standardized starting point for our front end team's needs.

## Installation

In your projects Gemfile include:

    gem 'sti_docssa', git: 'git@github.com:sportstech/sti_docssa.git'

or

    gem 'sti_docssa', git: 'https://github.com/sportstech/sti_docssa.git'

Then in terminal run:
    
    rails g sti_docssa

### Options

For options and a diagram of what is generated, in terminal run:
    
    rails g sti_docssa --help

###Available Options
    
    rails g sti_docssa --no-tablet

    rails g sti_docssa [name of application class]

For example, to create a default application with an applicatoin class of 'foo_bar' with no tablet css or layout files generated, in terminal run:

    rails g sti_docssa foo_bar --no-tablet

the generated code, for example:

    <body>
        <div class="foo_bar">

            //your application markup here

        </div>
    </body>



Uses MIT-LICENSE