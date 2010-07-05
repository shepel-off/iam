import tidy

options = {
            'output_xhtml': 1,
            'add_xml_decl': 0, 
            'indent': 1, 
            'indent_spaces': 4,
            'tidy_mark': 0,
            'char_encoding': 'utf8',
            'wrap': 0,
          }

class PrettyHtml(object):
    def process_response(self,request,response):
        if 'text/html' in response['Content-Type']:
            response.content = str(tidy.parseString(response.content, **options))
        return response
