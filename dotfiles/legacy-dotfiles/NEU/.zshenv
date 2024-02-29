# Location of JDK
export JAVA_HOME=$(/usr/libexec/java_home)
# Location of Java Runtime Environment
export JRE_HOME=$(/usr/libexec/java_home)

# Make tomcat@8 first in your PATH (before tomcat v9 or latest) This is due to tomcat@8 being keg-only, which means it was not symlinked into /usr/local via Homebrew
export PATH="/usr/local/opt/tomcat@8/bin:$PATH"

# Homebrew caveats indicate package dependencies require access to /usr/local/sbin
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Maven
export PATH=/usr/local/apache-maven-3.6.3/bin:$PATH

# RedHat Container Development Kit (CDK) 3.x
export MINISHIFT_USERNAME=nchristiny
