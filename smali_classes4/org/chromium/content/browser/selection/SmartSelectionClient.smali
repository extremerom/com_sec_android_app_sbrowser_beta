.class public Lorg/chromium/content/browser/selection/SmartSelectionClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/SelectionClient;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;,
        Lorg/chromium/content/browser/selection/SmartSelectionClient$RequestType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

.field private mNativeSmartSelectionClient:J

.field private mProvider:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

.field private mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

.field private final mSurroundingTextReceivedListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/content_public/browser/SelectionClient$SurroundingTextCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mSurroundingTextReceivedListeners:Lorg/chromium/base/ObserverList;

    invoke-static {p1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->create(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    invoke-static {}, Lorg/chromium/content/browser/selection/SmartSelectionClientJni;->get()Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;->init(Lorg/chromium/content/browser/selection/SmartSelectionClient;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mNativeSmartSelectionClient:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SmartSelectionClient;
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/selection/SmartSelectionClient;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/selection/SmartSelectionClient;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SmartSelectionClient;
    .locals 2

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lf1/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-class v1, Lorg/chromium/content/browser/selection/SmartSelectionClient;

    invoke-interface {p1, v1, v0}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/selection/SmartSelectionClient;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/selection/SmartSelectionClient;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->setCallback(Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method private onNativeSideDestroyed(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mNativeSmartSelectionClient:J

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mProvider:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->cancelAllRequests()V

    return-void
.end method

.method private onSurroundingTextReceived(ILjava/lang/String;II)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mSurroundingTextReceivedListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/SelectionClient$SurroundingTextCallback;

    invoke-interface {v1, p2, p3, p4}, Lorg/chromium/content_public/browser/SelectionClient$SurroundingTextCallback;->onSurroundingTextReceived(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->textHasValidSelection(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

    new-instance p1, Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-direct {p1}, Lorg/chromium/content_public/browser/SelectionClient$Result;-><init>()V

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;->onClassified(Lorg/chromium/content_public/browser/SelectionClient$Result;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mProvider:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->sendSuggestAndClassifyRequest(Ljava/lang/CharSequence;II)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mProvider:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    invoke-virtual {p0, p2, p3, p4}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->sendClassifyRequest(Ljava/lang/CharSequence;II)V

    :goto_1
    return-void
.end method

.method private requestSurroundingText(I)V
    .locals 8

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mNativeSmartSelectionClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->onSurroundingTextReceived(ILjava/lang/String;II)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/selection/SmartSelectionClientJni;->get()Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mNativeSmartSelectionClient:J

    const/16 v6, 0xf0

    move-object v5, p0

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;->requestSurroundingText(JLorg/chromium/content/browser/selection/SmartSelectionClient;II)V

    return-void
.end method

.method private setCallback(Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

    new-instance v0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;-><init>(Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;)V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mProvider:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    return-void
.end method

.method private textHasValidSelection(Ljava/lang/String;II)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancelAllRequests()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mNativeSmartSelectionClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/selection/SmartSelectionClientJni;->get()Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mNativeSmartSelectionClient:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;->cancelAllRequests(JLorg/chromium/content/browser/selection/SmartSelectionClient;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mProvider:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->cancelAllRequests()V

    return-void
.end method

.method public getSelectionEventProcessor()Lorg/chromium/content_public/browser/SelectionEventProcessor;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    return-object p0
.end method

.method public isSmartClassificationTaskInProgress()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->mProvider:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->isSmartClassificationTaskInProgress()Z

    move-result p0

    return p0
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSelectionEvent(IFF)V
    .locals 0

    return-void
.end method

.method public requestSelectionPopupUpdates(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->requestSurroundingText(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public selectAroundCaretAck(Lorg/chromium/content_public/browser/SelectAroundCaretResult;)V
    .locals 0

    return-void
.end method
