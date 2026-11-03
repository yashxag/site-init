<#ftl output_format="HTML" auto_esc=true>
<article class="card mb-3">
    <div class="card-body">
        <#if (heading.getData())?has_content>
            <h2 class="card-title">${heading.getData()}</h2>
        </#if>

        <#if (description.getData())?has_content>
            <p>${description.getData()}</p>
        </#if>

        <#if subDescriptionGroup??>
            <#list subDescriptionGroup.getSiblings() as group>
                <#if (group.subHeading.getData())?has_content>
                    <h3>${group.subHeading.getData()}</h3>
                </#if>

                <#if (group.subDescription.getData())?has_content>
                    <div>${group.subDescription.getData()?no_esc}</div>
                </#if>
            </#list>
        </#if>

        <#if (additionalDescription.getData())?has_content>
            <p>${additionalDescription.getData()}</p>
        </#if>

        <#if uploadMedia??>
            <#list uploadMedia.getSiblings() as media>
                <#if (media.getData())?has_content>
                    <p><a href="${media.getData()}">${languageUtil.get(locale, "download")} ${media?counter}</a></p>
                </#if>
            </#list>
        </#if>
    </div>
</article>
