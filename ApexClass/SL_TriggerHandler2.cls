/**  
* \arg ClassName        : SL_{{ object_name }}TriggerHandler
* \arg JIRATicket       : 
* \arg CreatedOn        : 
* \arg LastModifiedOn   : 
* \arg CreatededBy      : 
* \arg ModifiedBy       : 
* \arg Description      : Handler class for {{ object_name }} object.
*/
global class SL_{{ object_name }}TriggerHandler extends SL_Trigger_HandlerBase {

	public override void beforeInsert(List<SObject> newListGeneric){
		List<{{ object_name }}{{ suffix }}> newList = (List<{{ object_name }}{{ suffix }}>) newListGeneric;
		/*BEFORE INSERT METHODS START*/
		
		/*BEFORE INSERT METHODS END*/
	}
	
	public override void beforeUpdate(Map<Id, SObject> oldMapGeneric, Map<Id, SObject> newMapGeneric){
		Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) oldMapGeneric;
		Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) newMapGeneric;
		/*BEFORE UPDATE METHODS START*/
		
		/*BEFORE UPDATE METHODS END*/
	}
	
	public override void beforeDelete(Map<Id, SObject> oldMapGeneric){
		Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) oldMapGeneric;
		/*BEFORE DELETE METHODS START*/
		
		/*BEFORE DELETE METHODS END*/
	}
	
	public override void afterInsert(Map<Id, SObject> newMapGeneric){
		Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) newMapGeneric;
		/*AFTER INSERT METHODS START*/
		
		/*AFTER INSERT METHODS END*/
	}
	
	public override void afterUpdate(Map<Id, SObject> oldMapGeneric, Map<Id, SObject> newMapGeneric){
		Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) oldMapGeneric;
		Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) newMapGeneric;
		/*AFTER UPDATE METHODS START*/
		
		/*AFTER UPDATE METHODS END*/
	}
	
	public override void afterDelete(Map<Id, SObject> oldMapGeneric){
		Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) oldMapGeneric;
		/*AFTER DELETE METHODS START*/
		
		/*AFTER DELETE METHODS END*/
	}
	
	public override void afterUndelete(Map<Id, SObject> newMapGeneric){
		Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) newMapGeneric;
		/*AFTER UNDELETE METHODS START*/
		
		/*AFTER UNDELETE METHODS END*/
	}
	
}