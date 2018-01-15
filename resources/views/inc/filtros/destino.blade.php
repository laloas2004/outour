               <select id="destino" name="destino" class="form-control">
                   <option value="0" selected="true" disabled="true"> -- Destino -- </option>
                    <?php
                    $d = request('destino');

                    foreach ($destinos as $key => $destino) {

                        if ($d == $destino['id']) {
                            echo '<option value="' . $destino['id'] . '" selected >' . $destino['NombDest'] . '</option>';
                        } else {
                            echo '<option value="' . $destino['id'] . '">' . $destino['NombDest'] . '</option>';
                        }
                    }
                    ?>   
                </select>