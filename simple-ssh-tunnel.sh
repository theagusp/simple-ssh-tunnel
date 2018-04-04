#!/bin/bash

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

zenity --warning --title "Information" --text="This is simple gui no form, more features added soon. \n v1.0a final no bug, ty."

host=$(zenity --entry --title "Host" --text "Enter server Hostname/IP. Eg: localhost/127.0.0.1")
port=$(zenity --entry --title "Port" --text "Enter server Port. Eg: 22, 80, 443")
user=$(zenity --entry --title "Username" --text "Enter your Username. Eg: matt")
password=$(zenity --password --title "Password" --text ="")
listen=$(zenity --entry --title "Listen Port" --text ="Enter prefered Listen Port. Eg: 1080, 1081, 100, etc")

plink -N -C "$user"@"$host" -P "$port" -pw "$password" -D "$listen"
