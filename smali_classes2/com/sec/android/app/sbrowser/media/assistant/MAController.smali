.class public final Lcom/sec/android/app/sbrowser/media/assistant/MAController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/assistant/MAController$Companion;,
        Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;,
        Lcom/sec/android/app/sbrowser/media/assistant/MAController$MessageHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0003+,*B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\r\u0010\u0015\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\r\u0010\u0018\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0018\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001aR\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u0004\u0018\u00010!8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0011\u0010)\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\n\u00a8\u0006-"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/assistant/MAController;",
        "",
        "Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;",
        "mDelegate",
        "Landroid/os/Handler;",
        "mManagerHandler",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;Landroid/os/Handler;)V",
        "",
        "updateVisibilityForVAItems",
        "()Z",
        "Landroid/os/Message;",
        "receivedMsg",
        "Ldb/r;",
        "sendStartMessage",
        "(Landroid/os/Message;)V",
        "",
        "id",
        "getVisibility",
        "(I)Z",
        "shouldDimmed",
        "hideVAView",
        "()V",
        "showVAView",
        "removeAllMessages",
        "Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;",
        "Landroid/os/Handler;",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;",
        "mVAView",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;",
        "mControllerHandler",
        "mDidHide",
        "Z",
        "Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;",
        "getTerraceMediaPlayerClient",
        "()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;",
        "terraceMediaPlayerClient",
        "Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;",
        "getVisibleResultCallback",
        "()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;",
        "visibleResultCallback",
        "isVAShowing",
        "Companion",
        "Delegate",
        "MessageHandler",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mControllerHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDidHide:Z

.field private final mManagerHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->Companion:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->$stable:I

    const-string v0, "[MM]MAController"

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mDelegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mManagerHandler"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mManagerHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/assistant/MAController$MessageHandler;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$MessageHandler;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/MAController;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mControllerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    return-void
.end method

.method private static final _get_visibleResultCallback_$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/MAController;ZLandroid/graphics/Rect;)V
    .locals 5

    const-string v0, "videoRect"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDidHide:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->TAG:Ljava/lang/String;

    const-string p2, "VideoVisible FALSE"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->hideVAView()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getCurrentViewRect()Landroid/graphics/Rect;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoRect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contentViewRect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->updateVisibilityForVAItems()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->isVAShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->hideVAView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mControllerHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->registerHoverListener()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    int-to-double v1, v1

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    int-to-double v1, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    int-to-double v1, v1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/assistant/MAController;ZLandroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->_get_visibleResultCallback_$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/MAController;ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public static final synthetic access$sendStartMessage(Lcom/sec/android/app/sbrowser/media/assistant/MAController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->sendStartMessage(Landroid/os/Message;)V

    return-void
.end method

.method private final getTerraceMediaPlayerClient()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClient()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object p0

    return-object p0
.end method

.method private final getVisibility(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isVAGestureButtonEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isVANextButtonEnabled()Z

    move-result p0

    return p0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isSmartViewSupported(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isRotateButtonRequired(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    return v0

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isPopupModeSupported(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private final getVisibleResultCallback()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/media/b;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private final sendStartMessage(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mManagerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final shouldDimmed(I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isMSE()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAppPinned(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private final updateVisibilityForVAItems()Z
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->getAvailableItems()[Ljava/lang/Integer;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->getVisibility(I)Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->setEnabledById(IZ)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v3, v6

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->shouldDimmed(I)Z

    move-result v7

    invoke-virtual {v5, v4, v7}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->setDimmedById(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public final hideVAView()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDidHide:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->isVAShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->TAG:Ljava/lang/String;

    const-string v1, "hideVAView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->removeAllMessages()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->hide()V

    return-void
.end method

.method public final isVAShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mVAView:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeAllMessages()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mControllerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final showVAView()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->TAG:Ljava/lang/String;

    const-string v1, "showVAView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDidHide:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->mDelegate:Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->getTerraceMediaPlayerClient()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->getVisibleResultCallback()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->checkVideoVisible(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;)V

    :cond_1
    return-void
.end method
