package freako

import java.security.*
import sun.misc.*

class PasswordCodec {

	static encode = {
		str ->
		MessageDigest md = MessageDigest.getInstance("SHA")
		md.update(str.getBytes("UTF-8"))
		return new BASE64Encoder().encode(md.digest())
	}
	
}
