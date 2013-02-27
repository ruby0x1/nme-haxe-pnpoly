
public function pnpoly(pt:nme.geom.Point, pos:nme.geom.Point, verts:Array<nme.geom.Point>) : Bool {

    var c : Bool = false;
    var nvert : Int = verts.length;
    var j : Int = nvert - 1;

    for(i in 0 ... nvert) {            
        
        if ((( (verts[i].y+pos.y) > pt.y) != ((verts[j].y+pos.y) > pt.y)) &&
           (pt.x < ( (verts[j].x+pos.x) - (verts[i].x+pos.x)) * (pt.y - (verts[i].y+pos.y)) / ( (verts[j].y+pos.y) - (verts[i].y+pos.y)) + (verts[i].x+pos.x)) ) {
            c = !c;
        }

        j = i;
    }

    return c;
}