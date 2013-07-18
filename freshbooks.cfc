<cfcomponent hint="freshbooks" output="false" extends="coldbox.system.Plugin" cache="true">

	<cffunction name="init" access="public" returnType="freshbooks" output="false" hint="Constructor">
		<cfscript>
			// Setup Plugin
			setPluginName("Freshbooks API Wrapper");
			setPluginVersion("1.0");
			setPluginDescription("A XML wrapper to the Freshbooks API service");
			setPluginAuthor("Jeremy R DeYoung");
			setPluginAuthorURL("http://www.lunarfly.com");

			return this;
		</cfscript>
	</cffunction>

	<!--- API:callback methods (todo: create,verify,resendToken,delete ) (list) --->
    <cffunction name="callbackList" output="false" access="public" returntype="any"
				description="Returns a list of expense categories.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "callback.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>

	<!--- API:category methods (todo: create,update,get,delete ) (list) 
		Staff have access to the get, list and create API calls listed below if the Expenses tab is enabled for 
		staff. Staff cannot delete or update Categories.
		--->
    <cffunction name="categoryList" output="false" access="public" returntype="any">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "category.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:client methods (todo: create,update,get,delete ) (list) 
		Staff have access to the API calls listed below if the Clients tab is enabled for staff. Each staff 
		member can create clients, and view and edit clients that they are assigned to.
		--->
    <cffunction name="clientList" output="false" access="public" returntype="any"
				description="Returns a list of client summaries.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "client.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:estimate methods (todo: create,update,get,delete,sendByEmail ) (list) 
		Staff have access to the API calls listed below if the Estimates tab is enabled for staff. Staff 
		users can only access estimates that belong to clients they are assigned to.
		--->
    <cffunction name="estimateList" output="false" access="public" returntype="any"
				description="Returns a list of estimates.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "estimate.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:expense methods (todo: create,update,get,delete ) (list) 
		Staff have access to the API calls listed below, but they can only access expenses that belong 
		to them or are assigned to clients they are assigned to.
		--->
    <cffunction name="expenseList" output="false" access="public" returntype="any"
				description="Returns a list of expense summaries.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "expense.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:gateway methods (list) 
		Staff have access to the list API call
		--->
    <cffunction name="gatewayList" output="false" access="public" returntype="any"
				description="Returns a list of payment gateways enabled in your FreshBooks account that can process credit card transactions.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "gateway.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:invoice methods (todo: create,update,get,delete,sendByEmail,sendBySnailMail,lines.add,lines.delete,lines.update) (list) 
		Staff have access to the API calls listed below if the Invoices tab is enabled for staff. Staff users 
		can only access invoices that belong to clients they are assigned to.
		--->
    <cffunction name="invoiceList" output="false" access="public" returntype="any"
				description="Returns a list of invoice summaries.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "invoice.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:item methods (todo: create,update,get,delete ) (list) --->
    <cffunction name="itemList" output="false" access="public" returntype="any"
				description="Returns a list of items.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "item.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:language methods (list) 
		Staff have access to the list API call.
		--->
    <cffunction name="languageList" output="false" access="public" returntype="any" 
		description="The Language API provides access to the list of languages available in the application.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "language.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:payment methods (todo: create,update,get,delete ) (list) 
		Staff have access to the API calls listed below if the Invoices tab is enabled for staff. Staff users 
		can only access payments that belong to clients they are assigned to.
		--->
    <cffunction name="paymentList" output="false" access="public" returntype="any" 
				description="Returns a list of recorded payments.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "payment.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- payment methods (todo: create,update,get,delete ) (list) 
		Staff have access to the API calls listed below if the Time Tracking tab is enabled for staff. Each 
		staff member can view all projects to which he or she is assigned. Each staff member can edit only 
		those projects on which he or she is the Project Manager. Limited information is returned about projects 
		that the staff member is assigned to, but not the manager of.
		--->
    <cffunction name="projectList" output="false" access="public" returntype="any" 
				description="Returns a list of projects.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "project.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:receipt methods (todo: create,update,get,delete ) 
		Receipts should always be linked with one expense.
		--->
    
	<!--- API:recurring methods (todo: create,update,get,delete,lines.add,lines.delete,lines.update ) (list) 
		The Recurring Profile API allows you to create recurring profiles in the FreshBooks application.
		--->
    <cffunction name="recurringList" output="false" access="public" returntype="any" 
				description="Returns a list of recurring profile summaries.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "recurring.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:staff methods (todo: current,get ) (list) 
		Staff have access to the API calls listed below, but only for their own staff_id.
		--->
    <cffunction name="staffList" output="false" access="public" returntype="any" 
				description="Returns a list of staff.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "staff.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:system methods (todo: current )
		Admin users can query system.current to retrieve system information
		--->
    
	<!--- API:task methods (todo: create,update,get,delete ) (list) 
		Staff have access to the API calls listed below if the Time Tracking tab 
		is enabled for staff. You can enable or disable the Time Tracking tab under 
		Settings->Permissions->Staff Permissions. Please note that the ‘project_id’ 
		filter for task.list would only work for staff if they are assigned to the 
		project.
		--->
    <cffunction name="taskList" output="false" access="public" returntype="any" 
				description="Returns a list of tasks.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "task.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:tax methods (todo: current,update,get,delete ) (list) --->
    <cffunction name="taxList" output="false" access="public" returntype="any" 
				description="Returns a list of taxes.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "tax.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>
    
	<!--- API:time_entry methods (todo: current,update,get,delete ) (list) 
		Staff have access to the API calls listed below if the Time Tracking tab is 
		enabled for staff. Each staff member can only create time entries against projects 
		to which he or she is assigned.
		--->
    <cffunction name="time_entryList" output="false" access="public" returntype="any" 
				description="Returns a list of timesheet entries.">
		<cfscript>
			var results = {};
			arguments.httpMethod = "post";
			arguments.requestMethod = "time_entry.list";
			results = sendAndReceive(argumentCollection=arguments);
			return results;
		</cfscript>
    </cffunction>


	<!--- Freshbooks API URL --->
    <cffunction name="setAPIURL" output="false" access="public" returntype="void" hint="Set the Freshbooks API URL">
    	<cfargument name="apiURL" type="string" required="true" default="" hint="The Freshbooks API URL"/>
		<cfscript>
			instance.apiURL = arguments.apiURL;
		</cfscript>
    </cffunction>
    <cffunction name="getAPIURL" output="false" access="public" returntype="string" hint="Set the Freshbooks API URL">

		<cfreturn instance.apiURL />
    </cffunction>


	<!--- Freshbooks API Token --->
    <cffunction name="setAPIToken" output="false" access="public" returntype="void" hint="Set the Freshbooks API Token">
    	<cfargument name="token" type="string" required="true" default="" hint="The Freshbooks API Token"/>
		<cfscript>
			instance.token = arguments.token;
		</cfscript>
    </cffunction>
    <cffunction name="getAPIToken" output="false" access="public" returntype="string" hint="Set the Freshbooks API Token">

		<cfreturn instance.token />
    </cffunction>


	<!--- Private Functions --->
    <cffunction name="sendAndReceive" output="false" access="private" returntype="any">
		<cfscript>
			var httpService = new http();
			var argumentsList = StructKeyList(arguments);
			var httpURL = this.getAPIURL();
			var httpMethod = arguments.httpMethod;
			var requestMethod = arguments.requestMethod;
			var returnFormat = arguments.returnFormat;
			var returnFields = arguments.returnFields;
			var xmlDoc = xmlNew(true);

			xmlDoc.xmlRoot = xmlElemNew(xmlDoc,"request");
			xmlDoc.xmlRoot.XmlAttributes['method'] = requestMethod;

			for(var i=1;i<=ListLen(argumentsList);i++)
			{
				if(!ListFindNoCase("httpMethod,requestMethod,returnFormat,returnType,returnFields",ListGetAt(argumentsList,i)))
				{
					xmlDoc.xmlRoot[ListGetAt(argumentsList,i)] = xmlElemNew(xmlDoc,ListGetAt(argumentsList,i));
					xmlDoc.xmlRoot[ListGetAt(argumentsList,i)].xmlText = arguments[ListGetAt(argumentsList,i)];
				}
			}

			httpService.setUsername(this.getAPIToken());
			httpService.setPassword("X");
			httpService.addParam(type="header",name="Content-Type",value="application/xml");
			httpService.addParam(type="body",value=toString(xmlDoc));
			httpService.setMethod(httpMethod);
		    httpService.setCharset("utf-8");
		    httpService.setUrl(httpURL);
			var result = httpService.send().getPrefix().filecontent;

			switch(returnFormat)
			{
				case 'query':
					return convertQuery(xmlParse(result),returnFields);
				default:
					return results;
			}
		</cfscript>
    </cffunction>

    <cffunction name="convertQuery" output="false" access="private" returntype="query">
    	<cfargument name="xmlDoc" type="xml" required="true" hint="XML Document">
    	<cfargument name="fields" type="string" required="true" hint="Fields to Return">

    	<cfscript>
    	var myDoc = xmlDoc.xmlRoot.xmlChildren[1];
		var pDoc = "";

		var query = queryNew(arguments.fields);
		QueryAddRow(query,arrayLen(myDoc.xmlChildren));
		for(var i=1;i<=arrayLen(myDoc.xmlChildren);i++)
		{
			pDoc = myDoc.xmlChildren[i];
			for(var f=1;f<=ListLen(arguments.fields);f++)
			{
				QuerySetCell(query,ListGetAt(arguments.fields,f),pDoc[ListGetAt(arguments.fields,f)].xmlText,i);
			}
		}

		return query;
    	</cfscript>
    </cffunction>

</cfcomponent>
