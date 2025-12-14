.class public Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents;
.implements Lorg/chromium/content_public/browser/WebContentsObserver$Observable;
.implements Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;
.implements Lorg/chromium/content/browser/WindowEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;,
        Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;,
        Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;,
        Lorg/chromium/content/browser/webcontents/WebContentsImpl$DanglingPointerException;,
        Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParcelClassLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/chromium/content_public/browser/WebContents;",
            ">;"
        }
    .end annotation
.end field

.field private static sParcelableUUID:Ljava/util/UUID;


# instance fields
.field private mEventForwarder:Lorg/chromium/ui/base/EventForwarder;

.field private final mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInternalsHolder:Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

.field private mMediaSession:Lorg/chromium/content/browser/MediaSessionImpl;
    .annotation build Lorg/chromium/build/annotations/DoNotInline;
    .end annotation
.end field

.field private mNativeDestroyThrowable:Ljava/lang/Throwable;

.field protected mNativeWebContentsAndroid:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

.field private mProductVersion:Ljava/lang/String;

.field private mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

.field private mSmartClipCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

.field private mStylusWritingHandler:Lorg/chromium/content_public/browser/StylusWritingHandler;

.field private mTearDownDialogOverlaysHandlers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLorg/chromium/content_public/browser/NavigationController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mFrames:Ljava/util/List;

    iput-wide p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    iput-object p3, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)Lorg/chromium/content_public/browser/StylusWritingHandler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mStylusWritingHandler:Lorg/chromium/content_public/browser/StylusWritingHandler;

    return-object p0
.end method

.method private static addRenderFrameHostToArray([Lorg/chromium/content_public/browser/RenderFrameHost;ILorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    aput-object p2, p0, p1

    return-void
.end method

.method private static addToBitmapList(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public static create(JLorg/chromium/content_public/browser/NavigationController;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method private static createBitmapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static createRenderFrameHostArray(I)[Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Lorg/chromium/content_public/browser/RenderFrameHost;

    return-object p0
.end method

.method private static createSize(II)Landroid/graphics/Rect;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static createSizeAndAddToList(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;II)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createSizeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getNativePointer()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    return-wide v0
.end method

.method private getSelectionPopupController()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method private getUserDataHost()Lorg/chromium/base/UserDataHost;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mInternalsHolder:Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents$InternalsHolder;->get()Lorg/chromium/content_public/browser/WebContentsInternals;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;->userDataHost:Lorg/chromium/base/UserDataHost;

    return-object p0
.end method

.method private onDownloadImageFinished(Lorg/chromium/content_public/browser/ImageDownloadCallback;IILorg/chromium/url/GURL;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/ImageDownloadCallback;",
            "II",
            "Lorg/chromium/url/GURL;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface/range {p1 .. p6}, Lorg/chromium/content_public/browser/ImageDownloadCallback;->onFinishDownloadImage(IILorg/chromium/url/GURL;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    return-void
.end method

.method private static onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;IIIILorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p6, p0, p1, v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method private static reportDanglingPtrToBrowserContext(Ljava/lang/Throwable;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$DanglingPointerException;

    const-string v1, "Dangling pointer to BrowserContext in WebContents"

    invoke-direct {v0, v1, p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$DanglingPointerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lorg/chromium/base/JavaExceptionReporter;->reportException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final setMediaSession(Lorg/chromium/content/browser/MediaSessionImpl;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mMediaSession:Lorg/chromium/content/browser/MediaSessionImpl;

    return-void
.end method

.method private setViewAndroidDelegate(Lorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mInternalsHolder:Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents$InternalsHolder;->get()Lorg/chromium/content_public/browser/WebContentsInternals;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;

    iput-object p1, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;->viewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setViewAndroidDelegate(JLorg/chromium/ui/base/ViewAndroidDelegate;)V

    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    return-void
.end method

.method public addTearDownDialogOverlaysHandler(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mTearDownDialogOverlaysHandlers:Lorg/chromium/base/ObserverList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mTearDownDialogOverlaysHandlers:Lorg/chromium/base/ObserverList;

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mTearDownDialogOverlaysHandlers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustSelectionByCharacterOffset(IIZ)V
    .locals 6

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->adjustSelectionByCharacterOffset(JIIZ)V

    return-void
.end method

.method public checkNotDestroyed()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native WebContents already destroyed"

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeDestroyThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clearNativePtr()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clearNativePtr"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeDestroyThrowable:Ljava/lang/Throwable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    iget-object v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->webContentsDestroyed()V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    :cond_0
    return-void
.end method

.method public collapseSelection()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->collapseSelection(J)V

    return-void
.end method

.method public copy()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->copy(J)V

    return-void
.end method

.method public createMessageChannel()[Lorg/chromium/content/browser/AppWebMessagePort;
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/AppWebMessagePort;->createPair()[Lorg/chromium/content/browser/AppWebMessagePort;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createMessageChannel()[Lorg/chromium/content_public/browser/MessagePort;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->createMessageChannel()[Lorg/chromium/content/browser/AppWebMessagePort;

    move-result-object p0

    return-object p0
.end method

.method public createObject(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p2, p0}, Lorg/chromium/content_public/browser/WebContents$UserDataFactory;->create(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/UserData;

    return-object p0
.end method

.method public cut()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->cut(J)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public downloadImage(Lorg/chromium/url/GURL;ZIZLorg/chromium/content_public/browser/ImageDownloadCallback;)I
    .locals 8

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->downloadImage(JLorg/chromium/url/GURL;ZIZLorg/chromium/content_public/browser/ImageDownloadCallback;)I

    move-result p0

    return p0
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->evaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public evaluateJavaScriptForTests(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->evaluateJavaScriptForTests(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->exitFullscreen(J)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEventForwarder()Lorg/chromium/ui/base/EventForwarder;
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mEventForwarder:Lorg/chromium/ui/base/EventForwarder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getOrCreateEventForwarder(J)Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mEventForwarder:Lorg/chromium/ui/base/EventForwarder;

    new-instance v1, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/EventForwarder;->setStylusWritingDelegate(Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mEventForwarder:Lorg/chromium/ui/base/EventForwarder;

    return-object p0
.end method

.method public getFullscreenVideoSize()Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getFullscreenVideoSize(J)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLastCommittedUrl()Lorg/chromium/url/GURL;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getLastCommittedURL(J)Lorg/chromium/url/GURL;

    move-result-object p0

    return-object p0
.end method

.method public getMainFrame()Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getMainFrame(J)Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object p0
.end method

.method public getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getUserDataHost()Lorg/chromium/base/UserDataHost;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "WebContentsImpl"

    const-string p2, "UserDataHost can\'t be found"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/chromium/base/UserDataHost;->getUserData(Ljava/lang/Class;)Lorg/chromium/base/UserData;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->createObject(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/chromium/base/UserDataHost;->setUserData(Ljava/lang/Class;Lorg/chromium/base/UserData;)Lorg/chromium/base/UserData;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/UserData;

    return-object p0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mProductVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    return-object p0
.end method

.method public getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v2, v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getRenderWidgetHostView(J)Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mStylusWritingHandler:Lorg/chromium/content_public/browser/StylusWritingHandler;

    return-object p0
.end method

.method public getStylusWritingImeCallback()Lorg/chromium/content_public/browser/StylusWritingImeCallback;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getStylusWritingImeCallback()Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p0

    return-object p0
.end method

.method public getThemeColor()I
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getThemeColor(J)I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getTitle(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getTopLevelNativeWindow(J)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    return-object p0
.end method

.method public getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mInternalsHolder:Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents$InternalsHolder;->get()Lorg/chromium/content_public/browser/WebContentsInternals;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;->viewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    return-object p0
.end method

.method public getVirtualKeyboardMode()I
    .locals 3
    .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getVirtualKeyboardMode(J)I

    move-result p0

    return p0
.end method

.method public getVisibility()I
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getVisibility(J)I

    move-result p0

    return p0
.end method

.method public getVisibleUrl()Lorg/chromium/url/GURL;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->getVisibleURL(J)Lorg/chromium/url/GURL;

    move-result-object p0

    return-object p0
.end method

.method public handleDirectpaste(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->handleDirectPaste(JLorg/chromium/content/browser/webcontents/WebContentsImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleKeyLongPress()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->handleKeyLongPress(J)Z

    move-result p0

    return p0
.end method

.method public hasActiveEffectivelyFullscreenVideo()Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->hasActiveEffectivelyFullscreenVideo(J)Z

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->isBeingDestroyed(J)Z

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

.method public isIncognito()Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->isIncognito(J)Z

    move-result p0

    return p0
.end method

.method public isPictureInPictureAllowedForFullscreenVideo()Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->isPictureInPictureAllowedForFullscreenVideo(J)Z

    move-result p0

    return p0
.end method

.method public notifyRendererPreferenceUpdate()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->notifyRendererPreferenceUpdate(J)V

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->setDeviceScaleFactor(F)V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {p1, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->onScaleFactorChanged(J)V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 p1, -0x5a

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Display.getRotation() shouldn\'t return that value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 p1, 0xb4

    goto :goto_0

    :cond_3
    const/16 p1, 0x5a

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->sendOrientationChangeEvent(JI)V

    return-void
.end method

.method public paste()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->paste(J)V

    return-void
.end method

.method public pasteAsPlainText()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->pasteAsPlainText(J)V

    return-void
.end method

.method public postMessageToMainFrame(Lorg/chromium/content_public/browser/MessagePayload;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 7

    if-eqz p4, :cond_2

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    invoke-interface {v2}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/chromium/content_public/browser/MessagePort;->isTransferred()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/chromium/content_public/browser/MessagePort;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Port is already started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Port is already closed or transferred"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v0, "*"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p3, ""

    :cond_3
    move-object v5, p3

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->postMessageToMainFrame(JLorg/chromium/content_public/browser/MessagePayload;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V

    return-void
.end method

.method public removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    return-void
.end method

.method public removeTearDownDialogOverlaysHandler(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mTearDownDialogOverlaysHandlers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUserData(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getUserDataHost()Lorg/chromium/base/UserDataHost;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/base/UserDataHost;->removeUserData(Ljava/lang/Class;)Lorg/chromium/base/UserData;

    return-void
.end method

.method public renderFrameCreated(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mFrames:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public renderFrameDeleted(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mFrames:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public replace(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->replace(JLjava/lang/String;)V

    return-void
.end method

.method public requestAccessibilitySnapshot(Landroid/view/ViewStructure;Ljava/lang/Runnable;)V
    .locals 6

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    new-instance v4, Lorg/chromium/content/browser/accessibility/ViewStructureBuilder;

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    invoke-direct {v4, v0}, Lorg/chromium/content/browser/accessibility/ViewStructureBuilder;-><init>(Lorg/chromium/content/browser/RenderCoordinatesImpl;)V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->requestAccessibilitySnapshot(JLandroid/view/ViewStructure;Lorg/chromium/content/browser/accessibility/ViewStructureBuilder;Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;)V
    .locals 0

    const-string p0, ""

    invoke-interface {p2, p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;->run(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestSmartClipExtract(IIII)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mSmartClipCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    sub-int v6, p2, v0

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    iget-object v4, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mSmartClipCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    move v5, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->requestSmartClipExtract(JLorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;IIII)V

    return-void
.end method

.method public scrollFocusedEditableNodeIntoView()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->scrollFocusedEditableNodeIntoView(J)V

    return-void
.end method

.method public selectAll()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->selectAll(J)V

    return-void
.end method

.method public setDelegates(Ljava/lang/String;Lorg/chromium/ui/base/ViewAndroidDelegate;Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content_public/browser/WebContents$InternalsHolder;)V
    .locals 1
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mProductVersion:Ljava/lang/String;

    iget-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mInternalsHolder:Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents$InternalsHolder;->get()Lorg/chromium/content_public/browser/WebContentsInternals;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;-><init>(I)V

    :goto_0
    iput-object p5, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mInternalsHolder:Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

    invoke-interface {p5, p1}, Lorg/chromium/content_public/browser/WebContents$InternalsHolder;->set(Lorg/chromium/content_public/browser/WebContentsInternals;)V

    iget-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    if-nez p1, :cond_1

    new-instance p1, Lorg/chromium/content/browser/RenderCoordinatesImpl;

    invoke-direct {p1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mInitialized:Z

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setViewAndroidDelegate(Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    invoke-virtual {p0, p4}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setTopLevelNativeWindow(Lorg/chromium/ui/base/WindowAndroid;)V

    if-nez p3, :cond_2

    new-instance p3, Lorg/chromium/content/browser/webcontents/EmptyInternalAccessDelegate;

    invoke-direct {p3}, Lorg/chromium/content/browser/webcontents/EmptyInternalAccessDelegate;-><init>()V

    :cond_2
    invoke-static {p0}, Lorg/chromium/content/browser/ViewEventSinkImpl;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ViewEventSinkImpl;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/chromium/content/browser/ViewEventSinkImpl;->setAccessDelegate(Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;)V

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p1

    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/ui/display/DisplayAndroid;->getDipScale()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->setDeviceScaleFactor(F)V

    :cond_3
    invoke-static {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    return-void
.end method

.method public setFocus(Z)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setFocus(JZ)V

    return-void
.end method

.method public setHasPersistentVideo(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setHasPersistentVideo(JZ)V

    return-void
.end method

.method public setImportance(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setImportance(JI)V

    return-void
.end method

.method public setOverscrollRefreshHandler(Lorg/chromium/ui/OverscrollRefreshHandler;)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setOverscrollRefreshHandler(JLorg/chromium/ui/OverscrollRefreshHandler;)V

    return-void
.end method

.method public setSize(II)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setSize(JII)V

    return-void
.end method

.method public setSmartClipResultHandler(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mSmartClipCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mSmartClipCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    return-void
.end method

.method public setStylusWritingHandler(Lorg/chromium/content_public/browser/StylusWritingHandler;)V
    .locals 4

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mStylusWritingHandler:Lorg/chromium/content_public/browser/StylusWritingHandler;

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mStylusWritingHandler:Lorg/chromium/content_public/browser/StylusWritingHandler;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setStylusHandwritingEnabled(JZ)V

    return-void
.end method

.method public setTopLevelNativeWindow(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->setTopLevelNativeWindow(JLorg/chromium/ui/base/WindowAndroid;)V

    invoke-static {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->onTopLevelNativeWindowChanged(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->stop(J)V

    return-void
.end method

.method public suspendMediaSession()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mMediaSession:Lorg/chromium/content/browser/MediaSessionImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/MediaSessionImpl;->suspend()V

    :cond_0
    return-void
.end method

.method public updateWebContentsVisibility(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->checkNotDestroyed()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getSelectionPopupController()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->restoreSelectionPopupsIfNecessary()V

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getSelectionPopupController()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hidePopupsAndPreserveSelection()V

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;->get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;->updateWebContentsVisibility(JI)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "version"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Landroid/os/ParcelUuid;

    sget-object v1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const-string v1, "processguard"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "webcontents"

    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
