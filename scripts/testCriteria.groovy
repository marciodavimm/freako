def criteria = freako.Link.createCriteria()
/*
def resultado = criteria.list {
    and {
        like("url", "http%")
        or{
            like("nome", "%g%")
            gt("cliques", 0)    //greaterThan
        }
    }
}*/

/*
def resultado2 = criteria.list {
    between("cliques", 0, 4090043)
    order("cliques", "desc")    //asc:ascendente, desc:descendente
    maxResults(2)
}
*/

/*
for(freako.Link link:resultado2){
    print """
        Nome: ${link.nome}
        URL: ${link.url}
        Cliques: ${link.cliques}
        """
}
*/

def projecoes = criteria.get {
    projections {
        avg("cliques")    // media de cliques
        rowCount()    // numero de registros no BD
    }

}

