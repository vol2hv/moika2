package com.example.moika2.other;

import com.example.moika2.Moika2Application;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

public class Trifle {
    public static String firstUpperCase(String word){
        if(word == null || word.isEmpty()) return  word;
        return word.substring(0, 1).toUpperCase() + word.substring(1);
    }
    /**
     * Returns the viewName to return for coming back to the sender url
     *
     * @param request Instance of {@link HttpServletRequest} or use an injected instance
     * @return Optional with the view name. Recomended to use an alternativa url with
     * {@link Optional#orElse(java.lang.Object)}
     */
    public static String getPreviousPageByRequest(HttpServletRequest request)
    {
        Optional<String> str = Optional.ofNullable(request.getHeader("Referer"));
        return str.orElse(Moika2Application.PATH_TABLES_RENDERING);
    }
}
