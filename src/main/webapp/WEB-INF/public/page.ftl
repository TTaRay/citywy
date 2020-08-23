<#if page??>
    <#if page.getPages() gt 1>
        <nav class="pagination" style="text-align:center;">
    		<#if page.getPageNum() gt 1>
    		<a href="${url?if_exists}<#if page.getPageNum() gte 3>p${page.getPageNum()-1}.htm</#if>" class="pagination__page pagination__icon pagination__page--next"><i class="ui-arrow-left"></i></a>
    		</#if>
    		<#if page.getPages() gt 0>
    	        <#--总页数大于8-->
    	        <#if page.getPages() gt 8 >
    	        	<#--当前页小于6-->
    	        	<#if page.getPageNum() lt 5 >
    	        		<#list 1..5 as i>
    	        		<a href="${url?if_exists}<#if i!=1>p${i}.htm</#if>" class="pagination__page <#if page.getPageNum()==i>pagination__page--current</#if>">${i}</a>
    					</#list>
    					<a href="javascript:;" class="pagination__page">…</a>
    					<#list page.getPages()-1..page.getPages() as j>
    					<a href="${url?if_exists}p${j}.htm" class="pagination__page <#if page.getPageNum()==j>pagination__page--current</#if>">${j}</a>
    					</#list>
    				<#--当前页大于等于‘6’小于‘总-4’-->
    				<#elseif page.getPageNum() gte 5 && page.getPageNum() lt page.getPages()-4>
    					<a href="${url?if_exists}" class="pagination__page <#if page.getPageNum()==1>pagination__page--current</#if>">1</a>
    					<a href="javascript:;" class="pagination__page">…</a>
    					<#list page.getPageNum()-1..page.getPageNum()+2 as a>
    					<a href="${url?if_exists}p${a}.htm" class="pagination__page <#if page.getPageNum()==a>pagination__page--current</#if>">${a}</a>
    					</#list>
    					<a href="javascript:;" class="pagination__page">…</a>
    					<a href="${url?if_exists}p${page.getPages()}.htm" class="pagination__page">${page.getPages()}</a>
    				<#--当前页大于等于‘总-4’-->
    				<#elseif page.getPageNum() gte page.getPages()-4>
    					<a href="${url?if_exists}" class="pagination__page <#if page.getPageNum()==1>pagination__page--current</#if>">1</a>
    					<a href="javascript:;" class="pagination__page">…</a>
    					<#list page.getPages()-5..page.getPages() as b>
    					<a href="${url?if_exists}p${b}.htm" class="pagination__page <#if page.getPageNum()==b>pagination__page--current</#if>">${b}</a>
    					</#list>
    				</#if>
    			<#--总页数小于8-->
    			<#else>
    				<#list 1..page.getPages() as c>
    				<a href="${url?if_exists}<#if c!=1>p${c}.htm</#if>" class="pagination__page <#if page.getPageNum()==c>pagination__page--current</#if>">${c}</a>
    				</#list>
    			</#if>
    		<#else>
    		<a href="${url?if_exists}">1</a>
    		</#if>
    		<#if page.getPageNum() lt page.getPages()>
    		<a href="${url?if_exists}p${page.getPageNum()+1}.htm" class="pagination__page pagination__icon pagination__page--next"><i class="ui-arrow-right"></i></a>
    		</#if>
        </nav>
    </#if>
</#if>