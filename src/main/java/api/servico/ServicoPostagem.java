/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api.servico;

import api.modelo.Postagem;
import java.util.List;

/**
 *
 * @author leonardo
 */
public interface ServicoPostagem {
    public void inserir(Postagem postagem);
    public Postagem procurarPorId(Integer id);
    public List<Postagem> procurarTudo();
    public List<Postagem> procurarTudoDoAutor(Integer id);
    public boolean atualizar(Integer idPost, Postagem postAt);
    public boolean excluir(Integer id);
}
