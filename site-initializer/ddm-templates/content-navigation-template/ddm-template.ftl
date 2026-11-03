<#-- ================= MAIN NAVIGATION GROUP ================= -->

<h2>Main Navigation Group</h2>
<hr>

<#if (navigationGroup.key.getData())??>
    <h3>Key</h3>
    <p>${navigationGroup.key.getData()}</p>
</#if>

<#if (navigationGroup.navigationTitle.getData())??>
    <h3>Title</h3>
    <p>${navigationGroup.navigationTitle.getData()}</p>
</#if>

<#if (navigationGroup.navigationSubTitle.getData())??>
    <h3>Sub Title</h3>
    <p>${navigationGroup.navigationSubTitle.getData()}</p>
</#if>

<#if (navigationGroup.IconClassPath.getData())??>
    <h3>Icon Class Path</h3>
    <p>${navigationGroup.IconClassPath.getData()}</p>
</#if>

<#if (navigationGroup.IconUpload.getData())?? 
      && navigationGroup.IconUpload.getData() != "">
    <h3>Icon</h3>
    <img
        alt="${navigationGroup.IconUpload.getAttribute("alt")}"
        data-fileentryid="${navigationGroup.IconUpload.getAttribute("fileEntryId")}"
        src="${navigationGroup.IconUpload.getData()}"
        width="40"
        height="auto" />
</#if>

<hr>



<#-- ================= SUB NAVIGATION GROUP ================= -->

<#if navigationGroup.subNavigationGroup.getSiblings()?has_content>

    <h2>Sub Navigation Group</h2>
    <hr>

    <#list navigationGroup.subNavigationGroup.getSiblings() 
           as cur_navigationGroup_subNavigationGroup>

        <#if (cur_navigationGroup_subNavigationGroup.subKey.getData())??>
            <h4>Sub Key</h4>
            <p>${cur_navigationGroup_subNavigationGroup.subKey.getData()}</p>
        </#if>

        <#if (cur_navigationGroup_subNavigationGroup.subNaviagtionTitle.getData())??>
            <h4>Sub Title</h4>
            <p>${cur_navigationGroup_subNavigationGroup.subNaviagtionTitle.getData()}</p>
        </#if>

        <#if (cur_navigationGroup_subNavigationGroup.subNaviagtionSubTitle.getData())??>
            <h4>Sub Sub Title</h4>
            <p>${cur_navigationGroup_subNavigationGroup.subNaviagtionSubTitle.getData()}</p>
        </#if>

        <#if (cur_navigationGroup_subNavigationGroup.subIconClassPath.getData())??>
            <h4>Sub Icon Class Path</h4>
            <p>${cur_navigationGroup_subNavigationGroup.subIconClassPath.getData()}</p>
        </#if>

        <#if (cur_navigationGroup_subNavigationGroup.subIconUpload.getData())?? 
              && cur_navigationGroup_subNavigationGroup.subIconUpload.getData() != "">
            <h4>Sub Icon</h4>
            <img
                alt="${cur_navigationGroup_subNavigationGroup.subIconUpload.getAttribute("alt")}"
                data-fileentryid="${cur_navigationGroup_subNavigationGroup.subIconUpload.getAttribute("fileEntryId")}"
                src="${cur_navigationGroup_subNavigationGroup.subIconUpload.getData()}"
                width="30"
                height="auto" />
        </#if>

        <hr>

    </#list>

</#if>