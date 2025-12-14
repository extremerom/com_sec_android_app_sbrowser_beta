.class public Lorg/chromium/content_public/browser/LoadUrlParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/LoadUrlParams$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAdditionalNavigationParams:Lorg/chromium/content_public/browser/AdditionalNavigationParams;

.field private mBaseUrlForDataUrl:Ljava/lang/String;

.field private mCanLoadLocalResources:Z

.field private mDataUrlAsString:Ljava/lang/String;

.field private mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasUserGesture:Z

.field private mInitiatorOrigin:Lorg/chromium/url/Origin;

.field private mInputStartTimestamp:J

.field private mIntentReceivedTimestamp:J

.field private mIsPdf:Z

.field private mIsRendererInitiated:Z

.field private mLoadUrlType:I

.field private mNavigationHandleUserDataHost:Lorg/chromium/base/UserDataHost;

.field private mNavigationUIDataSupplier:Lorg/chromium/base/supplier/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPostData:Lorg/chromium/content_public/common/ResourceRequestBody;

.field private mReferrer:Lorg/chromium/content_public/common/Referrer;

.field private mShouldClearHistoryList:Z

.field private mShouldReplaceCurrentEntry:Z

.field private mTransitionType:I

.field private mUaOverrideOption:I

.field private mUrl:Ljava/lang/String;

.field private mVerbatimHeaders:Ljava/lang/String;

.field private mVirtualUrlForSpecialCases:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:Lorg/chromium/content_public/common/ResourceRequestBody;

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForSpecialCases:Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mDataUrlAsString:Ljava/lang/String;

    return-void
.end method

.method public static createLoadHttpPostParams(Ljava/lang/String;[B)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setLoadType(I)V

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    invoke-static {p1}, Lorg/chromium/content_public/common/ResourceRequestBody;->createFromBytes([B)Lorg/chromium/content_public/common/ResourceRequestBody;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setPostData(Lorg/chromium/content_public/common/ResourceRequestBody;)V

    return-object v0
.end method

.method private getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private verifyHeaders()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAdditionalNavigationParams()Lorg/chromium/content_public/browser/AdditionalNavigationParams;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mAdditionalNavigationParams:Lorg/chromium/content_public/browser/AdditionalNavigationParams;

    return-object p0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCanLoadLocalResources()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    return p0
.end method

.method public getDataUrlAsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mDataUrlAsString:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getExtraHeadersString()Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHasUserGesture()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mHasUserGesture:Z

    return p0
.end method

.method public getInitiatorOrigin()Lorg/chromium/url/Origin;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mInitiatorOrigin:Lorg/chromium/url/Origin;

    return-object p0
.end method

.method public getInputStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mInputStartTimestamp:J

    return-wide v0
.end method

.method public getIntentReceivedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIntentReceivedTimestamp:J

    return-wide v0
.end method

.method public getIsPdf()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsPdf:Z

    return p0
.end method

.method public getIsRendererInitiated()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    return p0
.end method

.method public getLoadUrlType()I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    return p0
.end method

.method public getNavigationUIDataSupplier()Lorg/chromium/base/supplier/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/supplier/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mNavigationUIDataSupplier:Lorg/chromium/base/supplier/Supplier;

    return-object p0
.end method

.method public getPostData()Lorg/chromium/content_public/common/ResourceRequestBody;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:Lorg/chromium/content_public/common/ResourceRequestBody;

    return-object p0
.end method

.method public getReferrer()Lorg/chromium/content_public/common/Referrer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    return-object p0
.end method

.method public getShouldClearHistoryList()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mShouldClearHistoryList:Z

    return p0
.end method

.method public getShouldReplaceCurrentEntry()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mShouldReplaceCurrentEntry:Z

    return p0
.end method

.method public getTransitionType()I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgentOverrideOption()I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    return p0
.end method

.method public getVerbatimHeaders()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    return-object p0
.end method

.method public getVirtualUrlForSpecialCases()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForSpecialCases:Ljava/lang/String;

    return-object p0
.end method

.method public setHasUserGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mHasUserGesture:Z

    return-void
.end method

.method public setInitiatorOrigin(Lorg/chromium/url/Origin;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mInitiatorOrigin:Lorg/chromium/url/Origin;

    return-void
.end method

.method public setIsRendererInitiated(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    return-void
.end method

.method public setLoadType(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    return-void
.end method

.method public setOverrideUserAgent(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    return-void
.end method

.method public setPostData(Lorg/chromium/content_public/common/ResourceRequestBody;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:Lorg/chromium/content_public/common/ResourceRequestBody;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setLoadType(I)V

    :cond_0
    return-void
.end method

.method public setReferrer(Lorg/chromium/content_public/common/Referrer;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    return-void
.end method

.method public setShouldClearHistoryList(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mShouldClearHistoryList:Z

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    return-void
.end method

.method public setVerbatimHeaders(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/LoadUrlParams;->verifyHeaders()V

    return-void
.end method

.method public takeNavigationHandleUserData()Lorg/chromium/base/UserDataHost;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mNavigationHandleUserDataHost:Lorg/chromium/base/UserDataHost;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mNavigationHandleUserDataHost:Lorg/chromium/base/UserDataHost;

    return-object v0
.end method
