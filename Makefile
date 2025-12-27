all: package

#
# Extension targets
#

dependencies:
	echo "Installing dependencies"
	npm install

compile: dependencies
	echo "Compiling extension"
	npm run compile
	npm run lint

package: compile
	echo "Creating package"
	vsce package


# Special target for installing all needed packages for building extension
prepare:
	npm install -g @vscode/vsce
