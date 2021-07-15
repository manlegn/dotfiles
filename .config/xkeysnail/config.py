# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

define_timeout(1)
define_multipurpose_modmap({
    Key.ENTER: [Key.ENTER, Key.RIGHT_CTRL],
    Key.CAPSLOCK: [Key.ESC, Key.LEFT_CTRL]
})

define_keymap(re.compile("firefox|chrom"), {
    K("LM-h"): K("Ctrl-Shift-Tab"),
    K("LM-l"): K("Ctrl-Tab"),
    K("LM-j"): [K("Down"), K("Down"), K("Down")],
    K("LM-k"): [K("Up"), K("Up"), K("Up")],
    K("LM-d"): K("Ctrl-w"),
    K("LM-Enter"): K("Ctrl-t"),
    K("LM-u"): K("Ctrl-Shift-t"),
    K("LM-comma"): K("C-Shift-Page_up"),
    K("LM-dot"): K("C-Shift-Page_down"),
    K("LM-r"): K("F5"),

    # search tabs (chrome)
    K("LM-b"): K("C-Shift-a"),

    # dark reader
    K("LM-n"): K("M-Shift-d"),

    # bitwarden
    K("LM-p"): K("C-Shift-l")
}, "Web browsers")
