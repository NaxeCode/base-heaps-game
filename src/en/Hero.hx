package en;

import h2d.Graphics;

class Hero extends Entity {
	var ca:dn.heaps.Controller.ControllerAccess;

	public function new(x, y) {
		super(x, y);

		hxd.Res.initEmbed();

		// var bitmap = new h2d.Bitmap(hxd.Res.atlas.idle.toTile(), s2d);
		// var t1 = h2d.Tile.autoCut(bitmap, 32, 32);
		var g = new h2d.Graphics(spr);
		// var n = new h2d.Anim()
		g.beginFill(0xff0000);
		g.drawRect(0, 0, 16, 16);

		ca = Main.ME.controller.createAccess("hero");
	}

	override function dispose() {
		super.dispose();
		ca.dispose();
	}

	override function update() {
		super.update();

		if (ca.leftDown() || ca.isKeyboardDown(hxd.Key.LEFT))
			dx -= 0.1 * tmod;

		if (ca.rightDown() || ca.isKeyboardDown(hxd.Key.RIGHT))
			dx += 0.1 * tmod;
	}
}
