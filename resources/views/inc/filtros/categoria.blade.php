            <select id="categoria"  name="categoria" class="form-control">
                <option value="0" selected="true" disabled="true"> -- Categoria -- </option>
                    <?php
                    $c = request('categoria');
                    foreach ($categorias as $key => $categoria) {
                        if ($c == $categoria['id']) {

                            echo '<option value="' . $categoria['id'] . '" selected>' . $categoria['NombCateg'] . '</option>';
                        } else {
                            echo '<option value="' . $categoria['id'] . '">' . $categoria['NombCateg'] . '</option>';
                        }
                    }
                    ?>   
                </select>