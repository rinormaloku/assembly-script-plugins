# A Weird Intro into Web Assmebly

There is something special about programs that can change their behaviors during runtime. It has the vibe of a self improving and self healing robot, some AI of sorts. 

It's an itch of mine (that I always have to scratch) to learn how different programming languages (and the frameworks build around those) support the capability of installing a plugin at runtime and without a restart changing the behavior of the app. For example, wordpress is a poster child of that, and this extensibility makes it the most popular Content Management System.

WebAssembly is making this extensibility available to every programming language. In this example we are going to use AssemblyScript and NodeJS. Assembly script will compile into a web assembly module. And we are going to it in NodeJS. 

# What is this Demo?
In this demo we have a nodejs application which is located in the directory `app`, which is a terrific name btq. 
The logic of this app is pretty simple. It performs a series of actions (or operation) to the numbers 2 and 3, as shown in the snippet below:
```
  actions.forEach(action => {
    console.log(action(3,2))
  });
```

The `actions` are not defined in code but are loaded from the subdirectory `modules`, also located at `app/modules`. 

Initially, we have two actions there, adding and subtracting.
```
$ ls app/modules 

add.wasm      subtract.wasm
```

Let's see that when we query this app it will sum the numbers and print the result, and the subtract and print the result again.

## Running the app
To run the application execute:
```
$ cd app           
$ npm start

add.wasm        #1
subtract.wasm   #1
Example app listening at http://localhost:3000    #2
```
#1 The loaded modules
#2 Endpoint

## Verifying that WASM Modules work
Query the root path and check the server logs:
```
$ curl localhost:3000
[5,1]
```
The 5 is the addition of the numbers and the 1 is the subtraction.

Now comes the magic! Without stopping the application drag and drop the files:

```
$  cp modules/pow/build/pow.wasm app/modules/
```

The server should print:
```
New Module Added
pow.wasm
```

Now if we verify again we will see that in addition to add and subtraction we will as well show the power 3^2 (which is what the pow.wasm file does).

```
$ curl localhost:3000
[5,9,1]
```

Tada! We were able to modify application behavior at runtime. 


# The modules
To build any of the modules switch to their directory and execute `npm run asbuild` for more information on those please check [Assembly Script](https://www.assemblyscript.org/quick-start.html)