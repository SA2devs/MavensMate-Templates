trigger {{ api_name }} on {{ object_name }} (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
	SL_TriggerFactory.createTriggerHandler({{ object_name }}.sObjectType);
}