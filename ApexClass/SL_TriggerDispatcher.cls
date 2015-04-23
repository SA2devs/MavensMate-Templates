/**  
* \arg ClassName        : SL_{{ object_name }}TriggerDispatcher
* \arg JIRATicket       : 
* \arg CreatedOn        : 
* \arg LastModifiedOn   : 
* \arg CreatededBy      : 
* \arg ModifiedBy       : 
* \arg Description      : Dispatcher class for {{ object_name }} object and associated handlers.
*/
global class SL_{{ object_name }}TriggerDispatcher extends SL_TriggerDispatcherBase {



	public class SL_{{ object_name }}BeforeInsertTriggerHandler extends SL_TriggerHandlerBase {
		public override void mainEntry(SL_TriggerParameters tp) {
			List<{{ object_name }}{{ suffix }}> newList = (List<{{ object_name }}{{ suffix }}>) tp.newList;
			/*BEFORE INSERT METHODS START*/
			
			/*BEFORE INSERT METHODS END*/
		}
	}
	public class SL_{{ object_name }}BeforeUpdateTriggerHandler extends SL_TriggerHandlerBase {
		public override void mainEntry(SL_TriggerParameters tp) {
			Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.newMap;
			Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.oldMap;
			/*BEFORE UPDATE METHODS START*/
			
			/*BEFORE UPDATE METHODS END*/
		}
	}
	public class SL_{{ object_name }}BeforeDeleteTriggerHandler extends SL_TriggerHandlerBase {
		public override void mainEntry(SL_TriggerParameters tp) {
			Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.oldMap;
			/*BEFORE DELETE METHODS START*/
			
			/*BEFORE DELETE METHODS END*/
		}
	}
	public class SL_{{ object_name }}AfterInsertTriggerHandler extends SL_TriggerHandlerBase {
		public override void mainEntry(SL_TriggerParameters tp) {
			Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.newMap;
			/*AFTER INSERT METHODS START*/
			
			/*AFTER INSERT METHODS END*/
		}
	}
	public class SL_{{ object_name }}AfterUpdateTriggerHandler extends SL_TriggerHandlerBase {
		public override void mainEntry(SL_TriggerParameters tp) {
			Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.newMap;
			Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.oldMap;
			/*AFTER UPDATE METHODS START*/
			
			/*AFTER UPDATE METHODS END*/
		}
	}
	public class SL_{{ object_name }}AfterDeleteTriggerHandler extends SL_TriggerHandlerBase {
		public override void mainEntry(SL_TriggerParameters tp) {
			Map<Id, {{ object_name }}{{ suffix }}> oldMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.oldMap;
			/*AFTER DELETE METHODS START*/
			
			/*AFTER DELETE METHODS END*/
		}
	}
	public class SL_{{ object_name }}AfterUndeleteTriggerHandler extends SL_TriggerHandlerBase {
		public override void mainEntry(SL_TriggerParameters tp) {
			Map<Id, {{ object_name }}{{ suffix }}> newMap = (Map<Id, {{ object_name }}{{ suffix }}>) tp.newMap;
			/*AFTER UNDELETE METHODS START*/
			
			/*AFTER UNDELETE METHODS END*/
		}
	}
	
	private static Boolean isBeforeInsertProcessing  = false;
	private static Boolean isBeforeUpdateProcessing  = false;
	private static Boolean isBeforeDeleteProcessing  = false;
	private static Boolean isAfterInsertProcessing   = false;
	private static Boolean isAfterUpdateProcessing   = false; 
	private static Boolean isAfterDeleteProcessing   = false;
	private static Boolean isAfterUnDeleteProcessing = false;
	
	public SL_{{ object_name }}TriggerDispatcher(){
		super('{{ object_name }}');
	}
	
	public virtual override void beforeInsert(SL_TriggerParameters tp) {
		if(!isBeforeInsertProcessing) {
			isBeforeInsertProcessing = true;
			execute(new SL_{{ object_name }}BeforeInsertTriggerHandler(), tp, SL_TriggerParameters.TriggerEvent.beforeInsert);
			isBeforeInsertProcessing = false;
		}
		else execute(null, tp, SL_TriggerParameters.TriggerEvent.beforeInsert);
	}
	public virtual override void beforeUpdate(SL_TriggerParameters tp) {
		if(!isBeforeUpdateProcessing) {
			isBeforeUpdateProcessing = true;
			execute(new SL_{{ object_name }}BeforeUpdateTriggerHandler(), tp, SL_TriggerParameters.TriggerEvent.beforeUpdate);
			isBeforeUpdateProcessing = false;
		}
		else execute(null, tp, SL_TriggerParameters.TriggerEvent.beforeUpdate);
	}
	public virtual override void beforeDelete(SL_TriggerParameters tp) {
		if(!isBeforeDeleteProcessing) {
			isBeforeDeleteProcessing = true;
			execute(new SL_{{ object_name }}BeforeDeleteTriggerHandler(), tp, SL_TriggerParameters.TriggerEvent.beforeDelete);
			isBeforeDeleteProcessing = false;
		}
		else execute(null, tp, SL_TriggerParameters.TriggerEvent.beforeDelete);
	}	
	public virtual override void afterInsert(SL_TriggerParameters tp) {
		if(!isAfterInsertProcessing) {
			isAfterInsertProcessing = true;
			execute(new SL_{{ object_name }}AfterInsertTriggerHandler(), tp, SL_TriggerParameters.TriggerEvent.afterInsert);
			isAfterInsertProcessing = false;
		}
		else execute(null, tp, SL_TriggerParameters.TriggerEvent.afterInsert);
	}
	public virtual override void afterUpdate(SL_TriggerParameters tp) {
		if(!isAfterUpdateProcessing) {
			isAfterUpdateProcessing = true;
			execute(new SL_{{ object_name }}AfterUpdateTriggerHandler(), tp, SL_TriggerParameters.TriggerEvent.afterUpdate);
			isAfterUpdateProcessing = false;
		}
		else execute(null, tp, SL_TriggerParameters.TriggerEvent.afterUpdate);
	}
	public virtual override void afterDelete(SL_TriggerParameters tp) {
		if(!isAfterDeleteProcessing) {
			isAfterDeleteProcessing = true;
			execute(new SL_{{ object_name }}AfterDeleteTriggerHandler(), tp, SL_TriggerParameters.TriggerEvent.afterDelete);
			isAfterDeleteProcessing = false;
		}
		else execute(null, tp, SL_TriggerParameters.TriggerEvent.afterDelete);
	}
	public virtual override void afterUnDelete(SL_TriggerParameters tp) {
		if(!isAfterUnDeleteProcessing) {
			isAfterUnDeleteProcessing = true;
			execute(new SL_{{ object_name }}AfterUnDeleteTriggerHandler(), tp, SL_TriggerParameters.TriggerEvent.afterUndelete);
			isAfterUnDeleteProcessing = false;
		}
		else execute(null, tp, SL_TriggerParameters.TriggerEvent.afterUndelete);
	}
}
