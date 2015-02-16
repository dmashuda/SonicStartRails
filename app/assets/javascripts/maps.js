/**
 * Created by dan on 2/16/15.
 */

var marker;
function createMarker(coords, map, title){
    marker = new google.maps.Marker({
        position: coords,
        map: map,
        title: title
    });
}
