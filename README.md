<h1>MinifyMe</h1>
<strong>A minify script for java-script files using Google's Closure Compiler</strong>

<h2>How To Use</h2>
<p>Navigate to the location of your .js file. Be sure to name the source file with a prefix. For example, if your source file is named "source-script.js" then running the command "minifyMe.sh script" will yield a minified file in the same directory named "script.js".<em> Note: leave the file-extension off in the command. Also add your file's prefix to minifyMe.sh</em>.</p>

<p><strong>Requirments:</strong> Linux system with Java installed, and Google's <a target="_blank" href="https://developers.google.com/closure/compiler/">Closure Compiler</a>.</p>
<p><strong>Suggestions:</strong> Add executable permissions to the file. Link it to your $PATH.</p>

<p>Change the embeded variables for your system.</p>
<ul>
<li><strong>COMPILER:</strong> is the file location of <a target="_blank" href="https://developers.google.com/closure/compiler/">Closure Compiler</a>.</li>
<li><strong>PREFIX:</strong> defines a prefix for your source file to keep it hidden.</li>
<li><strong>COMPILATION:</strong> is the method of minification. <a target="_blank" href="https://developers.google.com/closure/compiler/docs/compilation_levels">Learn More</a></li>
<ul>

<p>A backup will be created for each minify.</p>
