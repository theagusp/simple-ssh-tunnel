#!/bin/bash

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, dEXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Simple SSH Tunnel v1.0a built with zenity.

zenity --warning --title "Attention" --text='Beta testing, Something might be wrong!'

host=$(zenity --entry --title "Host" --text "Enter hostname. Eg: 127.0.0.1")
port=$(zenity --entry --title "Port" --text "Enter server port. Eg: 443")
user=$(zenity --entry --title "Username" --text "Enter username. Eg: matt")
password=$(zenity --password --title "Password" --text "Enter password. Eg: matt")
listen=$(zenity --entry --title "Listen Port" --text "Enter your listen port. Eg: 1080")

plink -v -N -C -D 1080 fastssh.com-1089761034@nl.serverip.co -P 443 -pw 1
