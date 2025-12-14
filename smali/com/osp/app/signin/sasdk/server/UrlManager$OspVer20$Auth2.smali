.class public Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$Auth2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auth2"
.end annotation


# static fields
.field private static final URL:Ljava/lang/String; = "auth2.samsungosp.com"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Auth2 class can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBaseUrlForAPI(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getDomainResponseData()Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    move-result-object v0

    const-string v1, "UrlManager"

    const-string v2, ""

    if-nez v0, :cond_0

    const-string p0, "DomainResponseData is null. checkDomain have to be called first"

    invoke-static {v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/16 v0, 0x66

    if-eq p0, v0, :cond_2

    const/16 v0, 0x70

    if-eq p0, v0, :cond_2

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_2

    const-string p0, "Not supported service type"

    invoke-static {v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getDomainResponseData()Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->getAuthServerUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getDomainResponseData()Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->getIdmServerUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseUrlForRequestDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "https://auth2.samsungosp.com"

    return-object v0
.end method
