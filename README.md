# docker-shadowsocks

Shadowsocks server docker image.

## Installation

Run the following commands:

```bash
$ docker pull leizongmin/shadowsocks:latest
$ docker run -it -e SS_PASSWORD={your_password_here} -e SS_METHOD={encrypt_method_here} -p 8338:8338 leizongmin/shadowsocks:latest
```

Notes: replace the `{your_password_here}` and `{encrypt_method_here}` to your password and encrypt method.

### Environment variables

+ `SS_PASSWORD`: password, defaults to `1234567`
+ `SS_METHOD`: encrypt method, defaults to `aes-256-cfb`, you can choose one of these: `aes-128-cfb, aes-192-cfb, aes-256-cfb, bf-cfb, cast5-cfb, des-cfb, rc4-md5, chacha20, salsa20, rc4, table`

### Expose ports

+ `8338`: port of shadowsocks service

## License

```
The MIT License (MIT)

Copyright (c) 2015 Zongmin Lei <leizongmin@gmail.com>
http://ucdok.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
