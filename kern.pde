int bg = 0xffffff;
String buff = "";
String t = "hello, kern!";
boolean lines = true;

void setup ()
{
    size (displayWidth, 500);
    background (bg);
    fill (0);
}

void kernedText (String s, int k, int x, int y)
{
    pushMatrix ();

    for (char c : s.toCharArray ()) {
        text (c, x, y);

        if (lines) {
            line (x, y, x + 20, y);
        }

        translate (k, 0);
    }

    popMatrix ();
}

void keyReleased ()
{
    if (keyCode == ENTER || keyCode == RETURN) {
        t = buff;
        buff = "";
    } else if (key == '`') {
        lines = !lines;
    } else {
        buff += key;
    }
}

void draw ()
{
    background (bg);
    text ("Hit enter to replace the text with what you type: " + buff, 0, 30);
    text ("Type '`' to toggle the lines", 0, 50);
    kernedText (t, mouseY, 0, height / 2);
}
