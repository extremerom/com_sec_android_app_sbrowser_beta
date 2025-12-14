.class public Lcom/osp/app/signin/sasdk/common/MetaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/common/MetaManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MetaManager"


# instance fields
.field private mActualRequest:I

.field private mCurrentCustomTabBrowser:Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;

.field private mDomainResponseData:Lcom/osp/app/signin/sasdk/response/DomainResponseData;

.field private mEntryPointResponseData:Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager$InstanceHolder;->access$000()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mDomainResponseData:Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mEntryPointResponseData:Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mCurrentCustomTabBrowser:Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;

    return-void
.end method

.method public getActualRequest()I
    .locals 0

    iget p0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mActualRequest:I

    return p0
.end method

.method public getCustomTabBrowser()Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mCurrentCustomTabBrowser:Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;

    return-object p0
.end method

.method public getDomainResponseData()Lcom/osp/app/signin/sasdk/response/DomainResponseData;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mDomainResponseData:Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    return-object p0
.end method

.method public getEntryPointApiBaseUrl(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mEntryPointResponseData:Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    const-string v0, ""

    if-nez p0, :cond_0

    sget-object p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->TAG:Ljava/lang/String;

    const-string p1, "EntryPointResponaseData is null"

    invoke-static {p0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getChangePasswordURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getSignOutURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getConfirmPasswordURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getSignInURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getSignUpURI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEntryPointResponseData()Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mEntryPointResponseData:Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    return-object p0
.end method

.method public setActualRequest(I)V
    .locals 0

    iput p1, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mActualRequest:I

    return-void
.end method

.method public setCustomTabBrowser(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mCurrentCustomTabBrowser:Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;

    return-void
.end method

.method public setDomainResponseData(Landroid/content/Context;Lcom/osp/app/signin/sasdk/response/DomainResponseData;)V
    .locals 2

    sget-object v0, Lcom/osp/app/signin/sasdk/common/MetaManager;->TAG:Ljava/lang/String;

    const-string v1, "setDomainResponseData"

    invoke-static {v0, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mDomainResponseData:Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    invoke-virtual {p2, p1}, Lcom/osp/app/signin/sasdk/response/DomainResponseData;->setupSpecificDomainUrlIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public setEntryPointResponseData(Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;)V
    .locals 2

    sget-object v0, Lcom/osp/app/signin/sasdk/common/MetaManager;->TAG:Ljava/lang/String;

    const-string v1, "setEntryPointResponseData"

    invoke-static {v0, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/common/MetaManager;->mEntryPointResponseData:Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    return-void
.end method
