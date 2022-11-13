<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
    <div class="card-body">
        <table class="table">
            <thead>
            <tr>
                <th class="width30">{__('Code')}</th>
                <th class="width15">{__('userimages_width')}</th>
                <th class="width15">{__('userimages_height')}</th>
                <th class="width25">{__('userimages_cropratio')}</th>
                <th class="width15"></th>
            </tr>
            </thead>
            <tbody>
            <!-- BEGIN: USERIMG_LIST -->
            <form action="{EDIT_URL}" method="post">
                <tr>
                    <td>{CODE}</td>
                    <td>
                        <div class="input-group">
                            <input type="text" name="userimg_width" size="10" class="form-control" value="{WIDTH}"/>
                            <span class="input-group-text">px</span>
                        </div>
                    <td>
                        <div class="input-group">
                            <input type="text" name="userimg_height" size="10" class="form-control" value="{HEIGHT}"/>
                            <span class="input-group-text">px</span>
                        </div>
                    </td>
                    <td>
                        <select name="userimg_crop" class="form-select">
                            <option value="">{PHP.L.userimages_cropnone}</option>
                            <option<!-- IF {CROP} == 'fit' --> selected="selected"<!-- ENDIF -->
                            value="fit">{PHP.L.userimages_cropfit}</option>
                            <option<!-- IF {CROP} == '1:1' --> selected="selected"<!-- ENDIF -->
                            value="1:1">1:1</option>
                            <option<!-- IF {CROP} == '1:2' --> selected="selected"<!-- ENDIF -->
                            value="1:2">1:2</option>
                            <option<!-- IF {CROP} == '2:3' --> selected="selected"<!-- ENDIF -->
                            value="2:3">2:3</option>
                            <option<!-- IF {CROP} == '3:4' --> selected="selected"<!-- ENDIF -->
                            value="3:4">3:4</option>
                            <option<!-- IF {CROP} == '4:5' --> selected="selected"<!-- ENDIF -->
                            value="4:5">4:5</option>
                            <option<!-- IF {CROP} == '5:6' --> selected="selected"<!-- ENDIF -->
                            value="5:6">5:6</option>
                            <option<!-- IF {CROP} == '2:1' --> selected="selected"<!-- ENDIF -->
                            value="2:1">2:1</option>
                            <option<!-- IF {CROP} == '3:2' --> selected="selected"<!-- ENDIF -->
                            value="3:2">3:2</option>
                            <option<!-- IF {CROP} == '4:3' --> selected="selected"<!-- ENDIF -->
                            value="4:3">4:3</option>
                            <option<!-- IF {CROP} == '5:4' --> selected="selected"<!-- ENDIF -->
                            value="5:4">5:4</option>
                            <option<!-- IF {CROP} == '6:5' --> selected="selected"<!-- ENDIF -->
                            value="6:5">6:5</option>
                            <option<!-- IF {CROP} == '16:9' --> selected="selected"<!-- ENDIF -->
                            value="16:9">16:9</option>
                            <option<!-- IF {CROP} == '16:10' --> selected="selected"<!-- ENDIF -->
                            value="16:10">16:10</option>
                        </select>
                    </td>
                    <td>
                        <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                        <span class="ms-2">{REMOVE}</span>
                    </td>
                </tr>
            </form>
            <!-- END: USERIMG_LIST -->
            </tbody>
            <tfoot>
            <form action="{PHP|cot_url('admin','m=other&p=userimages&a=add')}" method="post">
                <tr class="align-baseline">
                    <td>
                        <input type="text" name="userimg_code" size="30" class="form-control"/>
                    </td>
                    <td>
                        <div class="input-group">
                            <input type="text" name="userimg_width" size="10" class="form-control"/>
                            <span class="input-group-text">px</span>
                        </div>
                    </td>
                    <td>
                        <div class="input-group">
                            <input type="text" name="userimg_height" size="10" class="form-control"/>
                            <span class="input-group-text">px</span>
                        </div>
                    <td>
                        <select name="userimg_crop" class="form-select">
                            <option value="">{PHP.L.userimages_cropnone}</option>
                            <option value="fit">{PHP.L.userimages_cropfit}</option>
                            <option value="1:1">1:1</option>
                            <option value="1:2">1:2</option>
                            <option value="2:3">2:3</option>
                            <option value="3:4">3:4</option>
                            <option value="4:5">4:5</option>
                            <option value="5:6">5:6</option>
                            <option value="2:1">2:1</option>
                            <option value="3:2">3:2</option>
                            <option value="4:3">4:3</option>
                            <option value="5:4">5:4</option>
                            <option value="6:5">6:5</option>
                            <option value="16:9">16:9</option>
                            <option value="16:10">16:10</option>
                        </select>
                    </td>
                    <td>
                        <button type="submit" class="btn btn-primary">{__('Add')}</button>
                    </td>
                <tr>
            </form>
            </tfoot>
        </table>
    </div>
</div>
<!-- END: MAIN -->
