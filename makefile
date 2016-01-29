
all: Main.class 

Main.class: Main.java

	javac -d . -classpath . Main.java
	echo "Main-Class: Main" > MANIFEST.MF
	jar -cvmf MANIFEST.MF first.jar Main.class
	rm MANIFEST.MF

clean:

	rm -f *.class *.jar MANIFEST.MF

#adding something
