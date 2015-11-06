package org.cunframework.sc.map4j;

import java.io.PrintStream;

public class AppBootBanner {
    private static final String[] BANNER = { "",
        "             +++++++++    +                       ",
        "        +++  +   ++++              ++++   +       ",
        "  +++++++++++ ++ +++      +++ +++++++++++++++++++ ",
        "  ++++++++++  +          +++++++++++++++++++++++  ",
        "  +   ++++++++++       +++++++++++++++++++++      ",
        "      +++++++++         ++++++++++++++++++++          Map4J 0.0.1.beta 64 bit",
        "      +++++++          ++    +++++++++++++        ",
        "       +++            ++++++++++++++++++++            Running is stand alone mode",
        "         ++           ++++++++++   ++ +++             host: 0.0.0.0",
        "            ++++      +++++++++        +              port: 8080",
        "            +++++++       ++++          ++   +    ",
        "             ++++++       ++++             + +    ",
        "              ++++        +++  +         ++++++   ",
        "              +++          ++            ++++++   ",
        "             ++                              +    ",
        "              +                                   "
    };

    public static void printBanner(PrintStream printStream) {
        for (String line : BANNER) {
            printStream.println(line);
        }

        printStream.println();
    }
}
