/**  
* \arg ClassName        : {{ api_Name }}
* \arg JIRATicket       : 
* \arg CreatedOn        : 
* \arg LastModifiedOn   : 
* \arg CreatededBy      : 
* \arg ModifiedBy       : 
* \arg Description      : Dispatcher class for {{ object_name }} object and associated handlers.
*/
global class SL_{{ object_name }}TriggerDispatcher extends TriggerDispatcherBase {
	private static Boolean isBeforeInsertProcessing = false;
	private static Boolean isBeforeUpdateProcessing = false;
	private static Boolean isBeforeDeleteProcessing = false;
	private static Boolean isAfterInsertProcessing = false;
	private static Boolean isAfterUpdateProcessing = false; 
	private static Boolean isAfterDeleteProcessing = false;
	private static Boolean isAfterUnDeleteProcessing = false;

	public class SL_{{ object_name }}BeforeInsertTriggerHandler extends TriggerHandlerBase {
		public override void mainEntry(TriggerParameters tp) {
			DiagnosticsInstrumentation.Push('{{ object_name }}BeforeInsertTriggerHandler.mainEntry');
			/*BEFORE INSERT METHODS START*/
			
			/*BEFORE INSERT METHODS END*/
			DiagnosticsInstrumentation.Pop();
		}
	}
	public class SL_{{ object_name }}BeforeUpdateTriggerHandler extends TriggerHandlerBase {
		public override void mainEntry(TriggerParameters tp) {
			DiagnosticsInstrumentation.Push('{{ object_name }}BeforeUpdateTriggerHandler.mainEntry');
			/*BEFORE INSERT METHODS START*/
			
			/*BEFORE INSERT METHODS END*/
			DiagnosticsInstrumentation.Pop();
		}
	}
	public class SL_{{ object_name }}BeforeDeleteTriggerHandler extends TriggerHandlerBase {
		public override void mainEntry(TriggerParameters tp) {
			DiagnosticsInstrumentation.Push('{{ object_name }}BeforeDeleteTriggerHandler.mainEntry');
			/*BEFORE DELETE METHODS START*/
			
			/*BEFORE DELETE METHODS END*/
			DiagnosticsInstrumentation.Pop();
		}
	}
	public class SL_{{ object_name }}AfterInsertTriggerHandler extends TriggerHandlerBase {
		public override void mainEntry(TriggerParameters tp) {
			DiagnosticsInstrumentation.Push('{{ object_name }}AfterInsertTriggerHandler.mainEntry');
			/*AFTER INSERT METHODS START*/
			
			/*AFTER INSERT METHODS END*/
			DiagnosticsInstrumentation.Pop();
		}
	}
	public class SL_{{ object_name }}AfterUpdateTriggerHandler extends TriggerHandlerBase {
		public override void mainEntry(TriggerParameters tp) {
			DiagnosticsInstrumentation.Push('{{ object_name }}AfterUpdateTriggerHandler.mainEntry');
			/*AFTER UPDATE METHODS START*/
			
			/*AFTER UPDATE METHODS END*/
			DiagnosticsInstrumentation.Pop();
		}
	}
	public class SL_{{ object_name }}AfterDeleteTriggerHandler extends TriggerHandlerBase {
		public override void mainEntry(TriggerParameters tp) {
			DiagnosticsInstrumentation.Push('{{ object_name }}AfterDeleteTriggerHandler.mainEntry');
			/*AFTER DELETE METHODS START*/
			
			/*AFTER DELETE METHODS END*/
			DiagnosticsInstrumentation.Pop();
		}
	}
	public class SL_{{ object_name }}AfterUndeleteTriggerHandler extends TriggerHandlerBase {
		public override void mainEntry(TriggerParameters tp) {
			DiagnosticsInstrumentation.Push('{{ object_name }}AfterUndeleteTriggerHandler.mainEntry');
			/*AFTER UNDELETE METHODS START*/
			
			/*AFTER UNDELETE METHODS END*/
			DiagnosticsInstrumentation.Pop();
		}
	}
	
	public virtual override void beforeInsert(TriggerParameters tp) {
		if(!isBeforeInsertProcessing) {
			isBeforeInsertProcessing = true;
			execute(new SL_{{ object_name }}BeforeInsertTriggerHandler(), tp, TriggerParameters.TriggerEvent.beforeInsert);
			isBeforeInsertProcessing = false;
		}
		else execute(null, tp, TriggerParameters.TriggerEvent.beforeInsert);
	}
	public virtual override void beforeUpdate(TriggerParameters tp) {
		if(!isBeforeUpdateProcessing) {
			isBeforeUpdateProcessing = true;
			execute(new SL_{{ object_name }}BeforeUpdateTriggerHandler(), tp, TriggerParameters.TriggerEvent.beforeUpdate);
			isBeforeUpdateProcessing = false;
		}
		else execute(null, tp, TriggerParameters.TriggerEvent.beforeUpdate);
	}
	public virtual override void beforeDelete(TriggerParameters tp) {
		if(!isBeforeDeleteProcessing) {
			isBeforeDeleteProcessing = true;
			execute(new SL_{{ object_name }}BeforeDeleteTriggerHandler(), tp, TriggerParameters.TriggerEvent.beforeDelete);
			isBeforeDeleteProcessing = false;
		}
		else execute(null, tp, TriggerParameters.TriggerEvent.beforeDelete);
	}	
	public virtual override void afterInsert(TriggerParameters tp) {
		if(!isAfterInsertProcessing) {
			isAfterInsertProcessing = true;
			execute(new SL_{{ object_name }}AfterInsertTriggerHandler(), tp, TriggerParameters.TriggerEvent.afterInsert);
			isAfterInsertProcessing = false;
		}
		else execute(null, tp, TriggerParameters.TriggerEvent.afterInsert);
	}
	public virtual override void afterUpdate(TriggerParameters tp) {
		if(!isAfterUpdateProcessing) {
			isAfterUpdateProcessing = true;
			execute(new SL_{{ object_name }}AfterUpdateTriggerHandler(), tp, TriggerParameters.TriggerEvent.afterUpdate);
			isAfterUpdateProcessing = false;
		}
		else execute(null, tp, TriggerParameters.TriggerEvent.afterUpdate);
	}
	public virtual override void afterDelete(TriggerParameters tp) {
		if(!isAfterDeleteProcessing) {
			isAfterDeleteProcessing = true;
			execute(new SL_{{ object_name }}AfterDeleteTriggerHandler(), tp, TriggerParameters.TriggerEvent.afterDelete);
			isAfterDeleteProcessing = false;
		}
		else execute(null, tp, TriggerParameters.TriggerEvent.afterDelete);
	}
	public virtual override void afterUnDelete(TriggerParameters tp) {
		if(!isAfterUnDeleteProcessing) {
			isAfterUnDeleteProcessing = true;
			execute(new SL_{{ object_name }}AfterUnDeleteTriggerHandler(), tp, TriggerParameters.TriggerEvent.afterUndelete);
			isAfterUnDeleteProcessing = false;
		}
		else execute(null, tp, TriggerParameters.TriggerEvent.afterUndelete);
	}
}
