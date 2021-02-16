(function() {
    const sidebar = document.getElementById("sidebar")
    const overlay = document.getElementById("sidebar-overlay")
    const toggle = document.getElementById("sidebar-toggle")

    let visible = false

    function showSidebar() {
        sidebar.classList.add("is-active")
        overlay.classList.add("is-active")

        visible = true
    }

    function hideSidebar() {
        sidebar.classList.remove("is-active")
        overlay.classList.remove("is-active")

        visible = false
    }

    toggle.onclick = () => {
        if (!visible) {
            showSidebar()
        } else {
            hideSidebar()
        }
    }

    overlay.onclick = () => {
        hideSidebar()
    }
})()
