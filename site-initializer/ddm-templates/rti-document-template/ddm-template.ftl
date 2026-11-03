<div class="card mb-3">
    <div class="card-body">

        <h4 class="card-title">
            ${title.getData()}
        </h4>

        <#if uploadDocument.getData()?has_content>
            <p class="mb-0">
                <a class="btn btn-primary" href="${uploadDocument.getData()}" target="_blank">
                    View PDF
                </a>
            </p>
        </#if>

    </div>
</div>