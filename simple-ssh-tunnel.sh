#!/bin/bash

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

HOST=$(zenity –entry –title=”Host” –text=”Enter a host.”)
USER=$(zenity –entry –title=”User” –text=”Enter a username.”)
PASSWORD=$(zenity –entry –title=”Password” –text=”Enter a password.”)
PORT=$(zenity –entry –title=”Port” –text=”Enter a port.”)
LISTEN=$(zenity –entry –title=”Listen” –text=”Enter a listen port.”)

plink -v -N -C -D $LISTEN $USER@$HOST -P $PORT -pw 1

# Mit License

# Version 1.0
