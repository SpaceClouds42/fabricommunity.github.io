@file:Repository("https://dl.bintray.com/jakubriegel/kotlin-shell")
@file:DependsOn("eu.jrie.jetbrains:kotlin-shell-core:0.2.1")

val isWindows = System.getProperty("os.name").toLowerCase().indexOf("win") >= 0

if (isWindows) {
    println("Generating pages...")
    Runtime.getRuntime().exec("cmd /c start \"\" build.bat").waitFor()

    println("Generating assets...")
    Runtime.getRuntime().exec("cmd /c start \"\" build-assets.bat").waitFor()

    println("Running server...")
    Runtime.getRuntime().exec("cmd /c start \"\" serve.bat").waitFor()
} else {
    println("Generating pages...")
    Runtime.getRuntime().exec("./build.sh").waitFor()

    println("Generating assets...")
    Runtime.getRuntime().exec("./build-assets.sh").waitFor()

    println("Running server...")
    val serve = Runtime.getRuntime().exec("./serve.sh")
    println("Server Online at http://localhost:8080/")
    serve.waitFor()
}