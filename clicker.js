var ttt;
$(document).on("click", function (event) {
    ttt = event;
    let cur_elem = event.target;
    let cur_date = new Date();
    let datetime = ""
        + cur_date.getFullYear() + "-"
        + (cur_date.getMonth() + 1) + "-"
        + cur_date.getDate() + " "
        + cur_date.getHours() + ":"
        + cur_date.getMinutes() + ":"
        + cur_date.getSeconds();
    console.log('cur_elem', cur_elem, event.pageX, event.pageY, 'date', datetime);


    event.preventDefault();
    $.get(
        "http://miabotclient/admin/ins_click.php",
        {
            name: "12345",
            cursorx: event.pageX,
            cursory: event.pageY,
            date: datetime,
            //elemid: cur_elem.id,
            host: window.location.hostname,
            path: window.location.pathname,
            search: window.location.search,
        },
        function(response){
            console.log('response=', response);
        }
    );
})