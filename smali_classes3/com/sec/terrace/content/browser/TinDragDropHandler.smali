.class public Lcom/sec/terrace/content/browser/TinDragDropHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinDragDropHandler$UserDataFactoryLazyHolder;,
        Lcom/sec/terrace/content/browser/TinDragDropHandler$Delegate;,
        Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;,
        Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;,
        Lcom/sec/terrace/content/browser/TinDragDropHandler$AutoScrollDirection;,
        Lcom/sec/terrace/content/browser/TinDragDropHandler$ImageDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final IMAGE_DRAG_DROP_TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field static final IMAGE_OR_LINK_DRAG_LABEL:Ljava/lang/String; = "terrace-image-or-link-drag-label"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAutoScrollDelta:I

.field private mAutoScrollDirection:I

.field private mAutoScrollOffset:I

.field private mCanDoImageOrLinkLongPressDrag:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDelegate:Lcom/sec/terrace/content/browser/TinDragDropHandler$Delegate;

.field private mDragContentPositionRect:Landroid/graphics/RectF;

.field private mDragImageBitmap:Landroid/graphics/Bitmap;

.field private mDragStarted:Z

.field private mIsAutoScrollInProgress:Z

.field private mTopControlsStateChangedOnDragEnter:Z

.field private final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "com.android.systemui"

    const-string v6, "com.samsung.android.onetouch"

    const-string v0, "com.samsung.android.app.notes"

    const-string v1, "com.samsung.android.email.provider"

    const-string v2, "com.sec.android.app.myfiles"

    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.samsung.android.messaging"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->IMAGE_DRAG_DROP_TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragStarted:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragContentPositionRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/sec/terrace/content/browser/TinDragDropHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler$2;-><init>(Lcom/sec/terrace/content/browser/TinDragDropHandler;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    check-cast p1, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->lambda$clearDragImageContents$0(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/TinDragDropHandler;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragContentPositionRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/TinDragDropHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->resetAndEndDragDrop()V

    return-void
.end method

.method public static clearDragImageContents(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->revokeDragImageUriPermissions(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/terrace/content/browser/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/terrace/content/browser/c;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public static bridge synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->IMAGE_DRAG_DROP_TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method private static deleteDragImages(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->deleteDragImages(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete drag image file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TinDragDropHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static bridge synthetic e(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getDirectoryForDragImage(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Landroid/graphics/RectF;)Z
    .locals 1

    const/16 v0, 0x101

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->startDrag(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;ILandroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinDragDropHandler;
    .locals 2
    .param p0    # Lorg/chromium/content_public/browser/WebContents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const-class v0, Lcom/sec/terrace/content/browser/TinDragDropHandler;

    sget-object v1, Lcom/sec/terrace/content/browser/TinDragDropHandler$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;

    return-object p0
.end method

.method private getCurrentVisibleRect()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getCurrentVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static getDirectoryForDragImage(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "images"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Image Drag Folder cannot be created."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_2
    return-object v1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method private getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    return-object p0
.end method

.method private getSelectionRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private getTopControlsState()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getBrowserTopControlsState()I

    move-result p0

    return p0
.end method

.method private isIncognito()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result p0

    return p0
.end method

.method private isScrollInProgress()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$clearDragImageContents$0(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getDirectoryForDragImage(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "drag-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->deleteDragImages(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private resetAndEndDragDrop()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->resetAndEndDragDrop()V

    return-void
.end method

.method private resetTopControlsStateIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mTopControlsStateChangedOnDragEnter:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->updateBrowserControlsState(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mTopControlsStateChangedOnDragEnter:Z

    return-void
.end method

.method private static revokeDragImageUriPermissions(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".FileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "drag-images"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method private scrollBegin()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    int-to-float v4, v0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result p0

    int-to-float v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollBegin(JFFFF)V

    return-void
.end method

.method private scrollBy(II)V
    .locals 7

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sec/terrace/ui/base/TinEventForwarder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollBy(JFFFF)V

    return-void
.end method

.method private scrollEnd()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollEnd(J)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight()V

    return-void
.end method

.method private static startDrag(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;ILandroid/graphics/RectF;)Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Point;->set(II)V

    const-string v4, "TinDragDropHandler"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/sec/terrace/TinTerraceInternals;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/terrace/TinTerraceInternals;->performHapticFeedbackForDragStart(Landroid/view/View;)V

    :cond_0
    return p1
.end method

.method private startImageDrag(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Lcom/sec/terrace/content/browser/TinDragDropHandler$1;

    invoke-direct {v5, p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler$1;-><init>(Lcom/sec/terrace/content/browser/TinDragDropHandler;)V

    new-instance v0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->isIncognito()Z

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;-><init>(Lcom/sec/terrace/content/browser/TinDragDropHandler;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;ZLandroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateBrowserControlsState(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(IZ)V

    return-void
.end method


# virtual methods
.method public canDoImageOrLinkLongPressDrag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mCanDoImageOrLinkLongPressDrag:Z

    return p0
.end method

.method public cancelImageOrLinkDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mCanDoImageOrLinkLongPressDrag:Z

    return-void
.end method

.method public getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/ui/base/TinEventForwarder;

    return-object p0
.end method

.method public getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    return-object p0
.end method

.method public handleAutoScroll(II)Z
    .locals 7

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getCurrentVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v2

    int-to-float v3, v3

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDelta:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollOffset:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v2

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ge v5, p2, :cond_0

    iget v6, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollOffset:I

    add-int/2addr v5, v6

    if-le v5, p2, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDirection:I

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getContentHeightPixInt()I

    move-result v5

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v6

    add-int/2addr v6, v3

    if-le v5, v6, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, p2, :cond_1

    iget v5, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollOffset:I

    sub-int/2addr v3, v5

    if-ge v3, p2, :cond_1

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDirection:I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget p2, v0, Landroid/graphics/Rect;->left:I

    if-ge p2, p1, :cond_2

    iget v3, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollOffset:I

    add-int/2addr p2, v3

    if-le p2, p1, :cond_2

    iput v4, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDirection:I

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getContentWidthPixInt()I

    move-result p2

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result v1

    add-int/2addr v1, v2

    if-le p2, v1, :cond_3

    iget p2, v0, Landroid/graphics/Rect;->right:I

    if-le p2, p1, :cond_3

    iget v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollOffset:I

    sub-int/2addr p2, v0

    if-ge p2, p1, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDirection:I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->initiateAutoScroll()V

    return v4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->stopAutoScroll()V

    const/4 p0, 0x0

    return p0
.end method

.method public handleDragDrop(Landroid/view/DragEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->stopAutoScroll()V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDelegate:Lcom/sec/terrace/content/browser/TinDragDropHandler$Delegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler$Delegate;->onDragEntered()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getTopControlsState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    invoke-direct {p0, v2, v2}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->updateBrowserControlsState(IZ)V

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mTopControlsStateChangedOnDragEnter:Z

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->stopAutoScroll()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->resetTopControlsStateIfNeeded()V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->temporarilyHideSelectionHandles(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->getInstance()Lcom/sec/terrace/content/browser/TinImageDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->getImageDragSourceHTML()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->setImageDragSourceHTML(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragImageBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragImageBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-boolean p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragStarted:Z

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragStarted:Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->stopAutoScroll()V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->getInstance()Lcom/sec/terrace/content/browser/TinImageDragHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->getImageDragSourceHTML()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "2130"

    const-string v5, "201"

    const-string v6, "202"

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v5, v6

    :cond_3
    if-le v0, v2, :cond_4

    const-string p0, "3"

    goto :goto_0

    :cond_4
    const-string p0, "4"

    :goto_0
    invoke-static {v5, v4, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v5, v6

    :cond_6
    const-string p0, "0"

    invoke-static {v5, v4, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->handleAutoScroll(II)Z

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragStarted:Z

    :cond_7
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initiateAutoScroll()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mIsAutoScrollInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mChoreographer:Landroid/view/Choreographer;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mIsAutoScrollInProgress:Z

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->scrollBegin()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    const-string p0, "TinDragDropHandler"

    const-string v0, "Selection Drag Auto Scroll Starts"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isDragStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragStarted:Z

    return p0
.end method

.method public performAutoScroll()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mIsAutoScrollInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDirection:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDelta:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDelta:I

    :goto_0
    move v3, v2

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDelta:I

    neg-int v0, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDelta:I

    neg-int v0, v0

    goto :goto_0

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->scrollBy(II)V

    return-void
.end method

.method public prepareForImageOrLinkDrag(IIII)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mCanDoImageOrLinkLongPressDrag:Z

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragContentPositionRect:Landroid/graphics/RectF;

    return-void
.end method

.method public resetDragIfNeeded(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->isDragStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DragEvent;

    const-string v1, "TinDragDropHandler"

    const-string v2, "Send dummy ACTION_DRAG_ENDED to reset drag."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Truncating oversized query ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TinDragDropHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setDelegate(Lcom/sec/terrace/content/browser/TinDragDropHandler$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDelegate:Lcom/sec/terrace/content/browser/TinDragDropHandler$Delegate;

    return-void
.end method

.method public startDrag(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragImageBitmap:Landroid/graphics/Bitmap;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->startImageDrag(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/sec/terrace/R$dimen;->max_drag_view_screen_width_ratio:I

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result v3

    const/4 v4, 0x0

    const v5, 0x186a0

    const-string v6, "TinDragDropHandler"

    if-eqz v3, :cond_5

    iget-object p4, p3, Lorg/chromium/ui/dragdrop/DropDataAndroid;->gurl:Lorg/chromium/url/GURL;

    invoke-virtual {p4}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-le p4, v5, :cond_3

    const-string p1, "Drag not initiated as the url length exceeds Max length"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->resetAndEndDragDrop()V

    return-void

    :cond_3
    iget-object p4, p3, Lorg/chromium/ui/dragdrop/DropDataAndroid;->gurl:Lorg/chromium/url/GURL;

    invoke-virtual {p4}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p4

    const-string v3, "terrace-image-or-link-drag-label"

    invoke-static {v3, p4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p4

    sget v3, Lcom/sec/terrace/R$layout;->link_drag_view:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p3, Lorg/chromium/ui/dragdrop/DropDataAndroid;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Lcom/sec/terrace/R$id;->link_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p3, Lorg/chromium/ui/dragdrop/DropDataAndroid;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    :cond_4
    sget v3, Lcom/sec/terrace/R$id;->link_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v3, Lcom/sec/terrace/R$id;->link_url:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p3, Lorg/chromium/ui/dragdrop/DropDataAndroid;->gurl:Lorg/chromium/url/GURL;

    invoke-virtual {v4}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v2, v2, p2, v1}, Landroid/view/View;->layout(IIII)V

    new-instance p2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v3, p3, Lorg/chromium/ui/dragdrop/DropDataAndroid;->text:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "terrace-selection-drag-label"

    invoke-static {v5, v3, p4}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p4

    sget v5, Lcom/sec/terrace/R$layout;->selection_drag_view:I

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/sec/terrace/R$id;->drag_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v2, v2, p2, v1}, Landroid/view/View;->layout(IIII)V

    new-instance p2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mDragContentPositionRect:Landroid/graphics/RectF;

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getSelectionRect()Landroid/graphics/RectF;

    move-result-object v0

    :goto_3
    const/16 v1, 0x100

    invoke-static {p1, p4, p2, v1, v0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->startDrag(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;ILandroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "2"

    goto :goto_4

    :cond_7
    const-string p1, "0"

    :goto_4
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "202"

    goto :goto_5

    :cond_8
    const-string p0, "201"

    :goto_5
    const-string p2, "2185"

    invoke-static {p0, p2, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Link drag initiated from Framework"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    const-string p0, "Text selection drag initiated from Framework"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void

    :cond_a
    const-string p1, "Text or Link drag could not be initiated from Framework side"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->resetAndEndDragDrop()V

    return-void

    :cond_b
    :goto_7
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->resetAndEndDragDrop()V

    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mIsAutoScrollInProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mIsAutoScrollInProgress:Z

    iput v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;->mAutoScrollDirection:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->scrollEnd()V

    const-string p0, "TinDragDropHandler"

    const-string v0, "Selection Drag Auto Scroll Ends"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public temporarilyHideSelectionHandles(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setTextHandlesTemporarilyHidden(Z)V

    return-void
.end method
