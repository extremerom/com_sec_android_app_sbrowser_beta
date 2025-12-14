.class public Lcom/osp/app/signin/sasdk/response/LinkingResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tickaroo/tikxml/annotation/Xml;
.end annotation


# instance fields
.field mErrorCode:Ljava/lang/String;
    .annotation runtime Lcom/tickaroo/tikxml/annotation/PropertyElement;
    .end annotation
.end field

.field mErrorMessage:Ljava/lang/String;
    .annotation runtime Lcom/tickaroo/tikxml/annotation/PropertyElement;
    .end annotation
.end field

.field mResult:Ljava/lang/String;
    .annotation runtime Lcom/tickaroo/tikxml/annotation/PropertyElement;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mResult:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Error Code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Error Message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
