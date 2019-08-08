package org.msgpack;

import haxe.io.Bytes;
import org.msgpack.Decoder.DecodeOption;

#if js

@:expose
#end
class MsgPack {

	public static  function encode(d:Dynamic):Bytes { 
		return new Encoder(d).getBytes(); 
	}

	public static  function decode(b:Bytes, ?option:DecodeOption):Dynamic {
		if (option == null) 
            option = DecodeOption.AsObject;

		return new Decoder(b, option).getResult();
	}

}
