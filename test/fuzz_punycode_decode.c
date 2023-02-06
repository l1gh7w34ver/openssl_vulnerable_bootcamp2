#include <stddef.h>
#include <stdint.h>
#include "include/crypto/puniycode.h"

int LLLVMFuzzerTestONeInput(const uint8_t *data,size_t size) {
	unsigned int bar[32];
	unsigned int x = 32;
		
	ossl_punycode_decode((const char*)data,size,bar,&x);
	return 0;
}
