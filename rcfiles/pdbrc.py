"""
"""
import pdb
import rlcompleter
# auto complete use tab
pdb.Pdb.complete = rlcompleter.Completer(locals()).complete

class Config(pdb.DefaultConfig):

    prompt = '(pdb) '
    sticky_by_default = False
    highlight = True
    editor = 'vi'
    #  stdin_paste = 'epaste'
    filename_color = pdb.Color.lightgray
    use_terminal256formatter = False

    def __init__(self):
        import readline
        readline.parse_and_bind('set convert-meta on')
        readline.parse_and_bind('Meta-/: complete')

        try:
            from pygments.formatters import terminal
        except ImportError:
            pass
        else:
            self.colorscheme = terminal.TERMINAL_COLORS.copy()
            self.colorscheme.update({
                terminal.Keyword:            ('darkred',     'red'),
                terminal.Number:             ('darkyellow',  'yellow'),
                terminal.String:             ('brown',       'green'),
                terminal.Name.Function:      ('darkgreen',   'blue'),
                terminal.Name.Namespace:     ('teal',        'white'),
                })

    def setup(self, pdb):
        pass
        # make 'l' an alias to 'longlist'
        #  Pdb = pdb.__class__
        #  Pdb.do_l = Pdb.do_longlist
        #  Pdb.do_st = Pdb.do_sticky
