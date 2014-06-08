@search = ->
    if $('#search_value').val()
        search_url = '//'+location.host+'?s='+$('#search_value').val()
        if location.search.match(/lang=\w+/g)
            location.href = search_url+'&'+location.search.match(/lang=\w+/g)[0]
        else
            location.href = search_url


$(document).ready ->
    cached_pages = {}
    $('#sidebar a').click ->
        url = this.href
        title = this.text
        if url.indexOf('#') == -1
            selected_already = $(this).hasClass('selected')
            $('#sidebar .selected').removeClass('selected')
            $(this).addClass('selected')
            if url of cached_pages
                $('#main').html(cached_pages[url])
                $('head title')[0].text = title
            else
                $.get url, {'_pjax': 'true'}, (data)->
                    $('#main').html(data)
                    $('head title')[0].text = title
                    cached_pages[url] = data
            History.replaceState(null, title, url)

            toc_dom = $('.selected').parent().find('.toc')
            toc_already = not toc_dom.hasClass('hidden')
            $('#sidebar .toc').addClass('hidden')
            if (not selected_already) or (selected_already and not toc_already)
                toc_dom.removeClass('hidden')
            window.scroll(0, 0)
            return false