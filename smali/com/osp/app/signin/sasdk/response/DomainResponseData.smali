.class public Lcom/osp/app/signin/sasdk/response/DomainResponseData;
.super Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DomainResponseData (Global)"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public setupSpecificDomainUrlIfNeeded(Landroid/content/Context;)V
    .locals 0

    const-string p0, "DomainResponseData (Global)"

    const-string p1, "setupSpecificDomainUrlIfNeeded"

    invoke-static {p0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
