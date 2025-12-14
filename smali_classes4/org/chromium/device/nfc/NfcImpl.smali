.class public Lorg/chromium/device/nfc/NfcImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/mojom/Nfc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;,
        Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;,
        Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClient:Lorg/chromium/device/mojom/NfcClient;

.field private final mDelegate:Lorg/chromium/device/nfc/NfcDelegate;

.field private final mHasPermission:Z

.field private final mHostId:I

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcManager:Landroid/nfc/NfcManager;

.field private mOperationsSuspended:Z

.field private mPendingMakeReadOnlyOperation:Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

.field private mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

.field private mReaderCallbackHandler:Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;

.field private mRouter:Lorg/chromium/mojo/bindings/Router;

.field private mTagDiscoveredLastTimeMs:J

.field private mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWatchIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/chromium/device/nfc/NfcDelegate;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/chromium/device/nfc/NfcDelegate;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/Nfc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagDiscoveredLastTimeMs:J

    iput p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mHostId:I

    iput-object p2, p0, Lorg/chromium/device/nfc/NfcImpl;->mDelegate:Lorg/chromium/device/nfc/NfcDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mOperationsSuspended:Z

    if-eqz p3, :cond_0

    sget-object v1, Lorg/chromium/device/mojom/Nfc;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, p0, p3}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/InterfaceRequest;)Lorg/chromium/mojo/bindings/Router;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/device/nfc/NfcImpl;->mRouter:Lorg/chromium/mojo/bindings/Router;

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.NFC"

    invoke-virtual {p3, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mHasPermission:Z

    new-instance p3, Lcom/sec/terrace/a;

    const/16 v1, 0x8

    invoke-direct {p3, v1, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p1, p3}, Lorg/chromium/device/nfc/NfcDelegate;->trackActivityForHost(ILorg/chromium/base/Callback;)V

    const-string p1, "NfcImpl"

    const/4 p2, 0x0

    if-nez v0, :cond_2

    const-string p3, "NFC operations are not permitted."

    invoke-static {p1, p3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcManager:Landroid/nfc/NfcManager;

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "nfc"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/nfc/NfcManager;

    iput-object p3, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcManager:Landroid/nfc/NfcManager;

    if-nez p3, :cond_3

    const-string p3, "NFC is not supported."

    invoke-static {p1, p3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    :goto_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/device/nfc/NfcImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->lambda$disableReaderModeIfNeeded$0()V

    return-void
.end method

.method private checkIfReady()Lorg/chromium/device/mojom/NdefError;
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mHasPermission:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcManager:Landroid/nfc/NfcManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "NFC setting is disabled."

    invoke-direct {p0, v0, v1}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    const-string v1, "NFC is not supported."

    invoke-direct {p0, v0, v1}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    const-string v1, "The operation is not allowed."

    invoke-direct {p0, v0, v1}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object p0

    return-object p0
.end method

.method private completePendingMakeReadOnlyOperation(Lorg/chromium/device/mojom/NdefError;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingMakeReadOnlyOperation:Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;->complete(Lorg/chromium/device/mojom/NdefError;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingMakeReadOnlyOperation:Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->disableReaderModeIfNeeded()V

    return-void
.end method

.method private completePendingPushOperation(Lorg/chromium/device/mojom/NdefError;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->complete(Lorg/chromium/device/mojom/NdefError;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->disableReaderModeIfNeeded()V

    return-void
.end method

.method private createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;
    .locals 0

    new-instance p0, Lorg/chromium/device/mojom/NdefError;

    invoke-direct {p0}, Lorg/chromium/device/mojom/NdefError;-><init>()V

    iput p1, p0, Lorg/chromium/device/mojom/NdefError;->errorType:I

    iput-object p2, p0, Lorg/chromium/device/mojom/NdefError;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method private disableReaderMode()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mReaderCallbackHandler:Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mReaderCallbackHandler:Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private disableReaderModeIfNeeded()V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->hasActiveOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    return-void
.end method

.method private enableReaderModeIfNeeded()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mReaderCallbackHandler:Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->hasActiveOperations()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;

    invoke-direct {v0, p0}, Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;-><init>(Lorg/chromium/device/nfc/NfcImpl;)V

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mReaderCallbackHandler:Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x10f

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private hasActiveOperations()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingMakeReadOnlyOperation:Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$disableReaderModeIfNeeded$0()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->hasActiveOperations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->disableReaderMode()V

    :cond_0
    return-void
.end method

.method private notifyErrorToAllWatchers(Lorg/chromium/device/mojom/NdefError;)V
    .locals 1
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl;->mClient:Lorg/chromium/device/mojom/NfcClient;

    invoke-interface {p0, p1}, Lorg/chromium/device/mojom/NfcClient;->onError(Lorg/chromium/device/mojom/NdefError;)V

    :cond_0
    return-void
.end method

.method private notifyWatchers(Lorg/chromium/device/mojom/NdefMessage;)V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->integerCollectionToIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mClient:Lorg/chromium/device/mojom/NfcClient;

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {p0}, Lorg/chromium/device/nfc/NfcTagHandler;->serialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0, p1}, Lorg/chromium/device/mojom/NfcClient;->onWatch([ILjava/lang/String;Lorg/chromium/device/mojom/NdefMessage;)V

    :cond_0
    return-void
.end method

.method private pendingMakeReadOnlyOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/nfc/NfcImpl;->completePendingMakeReadOnlyOperation(Lorg/chromium/device/mojom/NdefError;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    :cond_0
    return-void
.end method

.method private pendingPushOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/device/nfc/NfcImpl;->completePendingPushOperation(Lorg/chromium/device/mojom/NdefError;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    :cond_0
    return-void
.end method

.method private processPendingMakeReadOnlyOperation()V
    .locals 5

    const-string v0, "NfcImpl"

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingMakeReadOnlyOperation:Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Lorg/chromium/device/nfc/NfcTagHandler;->isTagOutOfRange()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    return-void

    :cond_1
    const/4 v1, 0x5

    :try_start_0
    iget-object v3, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {v3}, Lorg/chromium/device/nfc/NfcTagHandler;->connect()V

    iget-object v3, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {v3}, Lorg/chromium/device/nfc/NfcTagHandler;->makeReadOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lorg/chromium/device/nfc/NfcImpl;->pendingMakeReadOnlyOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_2
    const-string v2, "Cannot make NFC tag read-only. The tag cannot be made read-only"

    invoke-static {v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Failed to make read-only because the tag cannot be made read-only"

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/device/nfc/NfcImpl;->pendingMakeReadOnlyOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot make NFC tag read-only: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to make read-only due to an IO error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->pendingMakeReadOnlyOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot make NFC tag read-only. Tag is lost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to make read-only because the tag is lost: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->pendingMakeReadOnlyOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private processPendingPushOperation()V
    .locals 5

    const-string v0, "NfcImpl"

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Lorg/chromium/device/nfc/NfcTagHandler;->isTagOutOfRange()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    return-void

    :cond_1
    const/4 v1, 0x5

    :try_start_0
    iget-object v3, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {v3}, Lorg/chromium/device/nfc/NfcTagHandler;->connect()V

    iget-object v3, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    iget-object v3, v3, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->ndefWriteOptions:Lorg/chromium/device/mojom/NdefWriteOptions;

    iget-boolean v3, v3, Lorg/chromium/device/mojom/NdefWriteOptions;->overwrite:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {v3}, Lorg/chromium/device/nfc/NfcTagHandler;->canAlwaysOverwrite()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "Cannot overwrite the NFC tag due to existing data on it."

    invoke-static {v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NDEFWriteOptions#overwrite does not allow overwrite."

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/device/nfc/NfcImpl;->pendingPushOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    iget-object v4, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    iget-object v4, v4, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->ndefMessage:Lorg/chromium/device/mojom/NdefMessage;

    invoke-static {v4}, Lorg/chromium/device/nfc/NdefMessageUtils;->toNdefMessage(Lorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/chromium/device/nfc/NfcTagHandler;->write(Landroid/nfc/NdefMessage;)V

    invoke-direct {p0, v2}, Lorg/chromium/device/nfc/NfcImpl;->pendingPushOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V
    :try_end_0
    .catch Lorg/chromium/device/nfc/InvalidNdefMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot write data to NFC tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to write due to an IO error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->pendingPushOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot write data to NFC tag. Tag is lost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to write because the tag is lost: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->pendingPushOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    goto :goto_2

    :catch_2
    const-string v1, "Cannot write data to NFC tag. Invalid NdefMessage."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "Cannot push the message because it\'s invalid."

    invoke-direct {p0, v0, v1}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->pendingPushOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private processPendingWatchOperations()V
    .locals 5

    const-string v0, "NfcImpl"

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mClient:Lorg/chromium/device/mojom/NfcClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mOperationsSuspended:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {v1}, Lorg/chromium/device/nfc/NfcTagHandler;->isTagOutOfRange()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    return-void

    :cond_1
    const/4 v1, 0x5

    :try_start_0
    iget-object v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {v2}, Lorg/chromium/device/nfc/NfcTagHandler;->connect()V

    iget-object v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    invoke-virtual {v2}, Lorg/chromium/device/nfc/NfcTagHandler;->read()Landroid/nfc/NdefMessage;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/chromium/device/mojom/NdefMessage;

    invoke-direct {v2}, Lorg/chromium/device/mojom/NdefMessage;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/chromium/device/mojom/NdefRecord;

    iput-object v3, v2, Lorg/chromium/device/mojom/NdefMessage;->data:[Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {p0, v2}, Lorg/chromium/device/nfc/NfcImpl;->notifyWatchers(Lorg/chromium/device/mojom/NdefMessage;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lorg/chromium/device/nfc/NdefMessageUtils;->toNdefMessage(Landroid/nfc/NdefMessage;)Lorg/chromium/device/mojom/NdefMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/device/nfc/NfcImpl;->notifyWatchers(Lorg/chromium/device/mojom/NdefMessage;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot read data from NFC tag. IO_ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read due to an IO error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->notifyErrorToAllWatchers(Lorg/chromium/device/mojom/NdefError;)V

    goto :goto_3

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot read data from NFC tag. Tag is lost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read because the tag is lost: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->notifyErrorToAllWatchers(Lorg/chromium/device/mojom/NdefError;)V

    goto :goto_3

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot read data from NFC tag. Cannot convert to NdefMessage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode the NdefMessage read from the tag: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->notifyErrorToAllWatchers(Lorg/chromium/device/mojom/NdefError;)V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public cancelMakeReadOnly()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "The make read-only operation is cancelled."

    invoke-direct {p0, v0, v1}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->completePendingMakeReadOnlyOperation(Lorg/chromium/device/mojom/NdefError;)V

    return-void
.end method

.method public cancelPush()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "The push operation is cancelled."

    invoke-direct {p0, v0, v1}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcImpl;->completePendingPushOperation(Lorg/chromium/device/mojom/NdefError;)V

    return-void
.end method

.method public cancelWatch(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->disableReaderModeIfNeeded()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mDelegate:Lorg/chromium/device/nfc/NfcDelegate;

    iget v1, p0, Lorg/chromium/device/nfc/NfcImpl;->mHostId:I

    invoke-interface {v0, v1}, Lorg/chromium/device/nfc/NfcDelegate;->stopTrackingActivityForHost(I)V

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->disableReaderMode()V

    return-void
.end method

.method public closeMojoConnection()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mRouter:Lorg/chromium/mojo/bindings/Router;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mRouter:Lorg/chromium/mojo/bindings/Router;

    :cond_0
    return-void
.end method

.method public makeReadOnly(Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->checkIfReady()Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mOperationsSuspended:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    const-string v0, "Cannot make read-only because NFC operations are suspended."

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingMakeReadOnlyOperation:Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

    if-eqz v0, :cond_2

    const-string v2, "Make read-only is cancelled due to a new make read-only request."

    invoke-direct {p0, v1, v2}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;->complete(Lorg/chromium/device/mojom/NdefError;)V

    :cond_2
    new-instance v0, Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

    invoke-direct {v0, p1}, Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;-><init>(Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;)V

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingMakeReadOnlyOperation:Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->enableReaderModeIfNeeded()V

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->processPendingMakeReadOnlyOperation()V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method

.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagDiscoveredLastTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/device/nfc/NfcImpl;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    iput-wide v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagDiscoveredLastTimeMs:J

    invoke-static {p1}, Lorg/chromium/device/nfc/NfcTagHandler;->create(Landroid/nfc/Tag;)Lorg/chromium/device/nfc/NfcTagHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/device/nfc/NfcImpl;->processPendingOperations(Lorg/chromium/device/nfc/NfcTagHandler;)V

    return-void
.end method

.method public processPendingOperations(Lorg/chromium/device/nfc/NfcTagHandler;)V
    .locals 2

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mTagHandler:Lorg/chromium/device/nfc/NfcTagHandler;

    if-nez p1, :cond_0

    const-string p1, "NfcImpl"

    const-string v0, "This tag is not supported."

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/device/nfc/NfcImpl;->notifyErrorToAllWatchers(Lorg/chromium/device/mojom/NdefError;)V

    invoke-direct {p0, p1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/device/nfc/NfcImpl;->pendingPushOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    invoke-direct {p0, p1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/device/nfc/NfcImpl;->pendingMakeReadOnlyOperationCompleted(Lorg/chromium/device/mojom/NdefError;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->processPendingWatchOperations()V

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->processPendingPushOperation()V

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->processPendingMakeReadOnlyOperation()V

    return-void
.end method

.method public push(Lorg/chromium/device/mojom/NdefMessage;Lorg/chromium/device/mojom/NdefWriteOptions;Lorg/chromium/device/mojom/Nfc$Push_Response;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->checkIfReady()Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Lorg/chromium/device/mojom/Nfc$Push_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mOperationsSuspended:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    const-string v0, "Cannot push the message because NFC operations are suspended."

    invoke-direct {p0, v1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/chromium/device/mojom/Nfc$Push_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    :cond_1
    invoke-static {p1}, Lorg/chromium/device/nfc/NdefMessageValidator;->isValid(Lorg/chromium/device/mojom/NdefMessage;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x3

    const-string p2, "Cannot push the message because it\'s invalid."

    invoke-direct {p0, p1, p2}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/chromium/device/mojom/Nfc$Push_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    if-eqz v0, :cond_3

    const-string v2, "Push is cancelled due to a new push request."

    invoke-direct {p0, v1, v2}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->complete(Lorg/chromium/device/mojom/NdefError;)V

    :cond_3
    new-instance v0, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;-><init>(Lorg/chromium/device/mojom/NdefMessage;Lorg/chromium/device/mojom/NdefWriteOptions;Lorg/chromium/device/mojom/Nfc$Push_Response;)V

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mPendingPushOperation:Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->enableReaderModeIfNeeded()V

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->processPendingPushOperation()V

    return-void
.end method

.method public resumeNfcOperations()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mOperationsSuspended:Z

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->enableReaderModeIfNeeded()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->disableReaderMode()V

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->enableReaderModeIfNeeded()V

    return-void
.end method

.method public setClient(Lorg/chromium/device/mojom/NfcClient;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl;->mClient:Lorg/chromium/device/mojom/NfcClient;

    return-void
.end method

.method public suspendNfcOperations()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mOperationsSuspended:Z

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->disableReaderMode()V

    invoke-virtual {p0}, Lorg/chromium/device/nfc/NfcImpl;->cancelPush()V

    invoke-virtual {p0}, Lorg/chromium/device/nfc/NfcImpl;->cancelMakeReadOnly()V

    return-void
.end method

.method public watch(ILorg/chromium/device/mojom/Nfc$Watch_Response;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->checkIfReady()Lorg/chromium/device/mojom/NdefError;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lorg/chromium/device/mojom/Nfc$Watch_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    const-string v0, "Cannot start because the received scan request is duplicate."

    invoke-direct {p0, p1, v0}, Lorg/chromium/device/nfc/NfcImpl;->createError(ILjava/lang/String;)Lorg/chromium/device/mojom/NdefError;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/chromium/device/mojom/Nfc$Watch_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/device/nfc/NfcImpl;->mWatchIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lorg/chromium/device/mojom/Nfc$Watch_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->enableReaderModeIfNeeded()V

    invoke-direct {p0}, Lorg/chromium/device/nfc/NfcImpl;->processPendingWatchOperations()V

    return-void
.end method
