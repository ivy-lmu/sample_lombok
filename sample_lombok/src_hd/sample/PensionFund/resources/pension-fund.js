var spay = spay || {};
spay.component = spay.component || {};
spay.component.admin = spay.component.admin || {};
spay.component.admin.pensionfund = spay.component.admin.pensionfund || {};

spay.component.admin.pensionfund.expandContainer = function (index) {
    var container = document.getElementsByClassName('container')[0];
    var fluidContainer = document.getElementsByClassName('fluid-container')[0];
    if (index == 0) {
        if (container !== undefined) {
            container.className = 'fluid-container';
        }
    } else {
        if (fluidContainer !== undefined) {
            fluidContainer.className = 'container';
        }
    }
    
}

spay.component.admin.pensionfund.onTabChange = function (index) {
    spay.component.web.admin.event.cachedFunction = function () {
        spay.component.admin.pensionfund.expandContainer(index)
    }
}