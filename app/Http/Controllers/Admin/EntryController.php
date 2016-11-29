<?php
namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\EntryRequest as StoreRequest;
use App\Http\Requests\EntryRequest as UpdateRequest;

class EntryController extends CrudController {

    public function setup() {
        $this->crud->setModel("App\Entry");
        $this->crud->setRoute("admin/entries");
        $this->crud->setEntityNameStrings('entry', 'entries');
        $this->crud->addColumn([
            'name' => 'author_name', // The db column name
            'label' => "Autor", // Table column heading
            'type' => 'Text'
        ]);
        $this->crud->addField([
            'name' => 'author_name',
            'label' => 'Numele autorului'
        ]);

        $this->crud->addField([
            'name' => 'url',
            'label' => 'Imagine',
            'type' => 'upload',
            'upload' => true,
            'disk' => 'public'

        ]);
    }

    public function store(StoreRequest $request)
    {
        return parent::storeCrud();
    }

    public function update(UpdateRequest $request)
    {
        return parent::updateCrud();
    }
}