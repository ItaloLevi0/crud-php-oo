<?php

declare(strict_types=1);

namespace App\Controller;

use App\Repository\ProfessorRepository;

class ProfessorController extends AbstractController
{


    public function listar(): void
    {
        $rep = new ProfessorRepository();
        $professores = $rep->buscarTodos();

        $this->render("professor/listar", [
            'professores' => $professores,
        ]);
    }

    public function cadastrar(): void
    {
        echo "Pagina de cadastrar";
    }

    public function excluir(): void
    {
        $id = $_GET['id'];
        $rep = new ProfessorRepository();
        $rep->excluir($id);
        $this->render("professor/excluir");
    }

    public function editar(): void
    {
        echo "Pagina de editar";
    }
}