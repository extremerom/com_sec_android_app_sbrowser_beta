.class public final Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$Companion;,
        Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 ^2\u00020\u0001:\u0002^_B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\nJ)\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001b\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ;\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001e2\u0006\u0010\u001b\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010!JC\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001e2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010$J;\u0010%\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001e2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u001b\u0010\'\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u001b\u0010)\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008)\u0010(J+\u0010*\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008*\u0010+J#\u0010-\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010,\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008-\u0010.J#\u0010/\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010,\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008/\u0010.J3\u00100\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010,\u001a\u00020\u000f2\u0010\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00082\u0010\nJ\u000f\u00103\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00083\u0010\nJ\u0019\u00104\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u00084\u00105J\u0017\u00107\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u00087\u0010\u0015J\u0019\u0010:\u001a\u00020\u00082\u0008\u00109\u001a\u0004\u0018\u000108H\u0007\u00a2\u0006\u0004\u0008:\u0010;J\u0019\u0010=\u001a\u0004\u0018\u00010\u00192\u0006\u0010<\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u0019\u0010?\u001a\u00020\u000f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u0019\u0010A\u001a\u00020\u000f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0004\u0008A\u0010@J!\u0010C\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u00122\u0008\u0010B\u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u0019\u0010F\u001a\u0004\u0018\u00010\u00192\u0006\u0010E\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008F\u0010>J\u0017\u0010G\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008I\u0010\u0011J\u001b\u0010J\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u001b\u0010L\u001a\u0004\u0018\u00010\u001f2\u0008\u0010B\u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008L\u0010MJ/\u0010P\u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010O\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010S\u001a\u00020RH\u0002\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010V\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008V\u0010WR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010XR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010YR\u001a\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u000b0Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010]\u00a8\u0006`"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;",
        "Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;",
        "mainViewInterface",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V",
        "Ldb/r;",
        "onDestroy",
        "()V",
        "Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;",
        "listener",
        "addListener",
        "(Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;)V",
        "",
        "isBitmapManagerInitialized",
        "()Z",
        "",
        "instanceId",
        "initializeBitmapManagerIfNeeded",
        "(I)V",
        "isBitmapCacheAvailable",
        "initializeBitmapCacheIfNeeded",
        "requestType",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
        "tab",
        "readbackPreference",
        "captureTabAsync",
        "(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V",
        "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;",
        "Landroid/graphics/Bitmap;",
        "callback",
        "(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V",
        "",
        "timeout",
        "(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V",
        "captureNativeTabAsync",
        "(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;J)V",
        "getFullscreenBitmapFromCache",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Landroid/graphics/Bitmap;",
        "getFullscreenBitmapFromMemCache",
        "getFullscreenBitmapFromDiskCache",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V",
        "isLite",
        "getThumbnailBitmapFromCache",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)Landroid/graphics/Bitmap;",
        "getThumbnailBitmapFromMemCache",
        "getThumbnailBitmapFromDiskCache",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V",
        "clearAllBitmapCache",
        "cleanUnusedBitmapsFromCache",
        "removeBitmapFromAllMemCache",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V",
        "level",
        "onTrimMemory",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;",
        "bitmapManager",
        "setBitmapManager",
        "(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)V",
        "tabId",
        "getTabById",
        "(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
        "isValidTab",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z",
        "isNativePage",
        "bitmap",
        "storeBitmap",
        "(ILandroid/graphics/Bitmap;)V",
        "instantTabId",
        "getOriginalTab",
        "isInstantTab",
        "(I)Z",
        "isInstantTabOnLeft",
        "getTabForBitmapCapture",
        "(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
        "createCopiedBitmap",
        "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;",
        "originalBitmap",
        "instantBitmap",
        "makeSplitViewBitmap",
        "(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;",
        "createBitmapManagerDelegate",
        "()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;",
        "createBitmapManagerCallback",
        "()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;",
        "",
        "listenerList",
        "Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;",
        "Companion",
        "TimeoutBitmapCallback",
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

.field private static final CAPTURE_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->Companion:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->$stable:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->CAPTURE_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainViewInterface"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->listenerList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->captureTabAsync$lambda$1(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$getListenerList$p(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->listenerList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMainViewInterface$p(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static final synthetic access$getTabById(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->getTabById(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isValidTab(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->captureNativeTabAsync$lambda$3(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->captureNativeTabAsync$lambda$4(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final captureNativeTabAsync$lambda$3(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "[captureNativeTabAsync] result for "

    const-string v1, ", requestType : "

    const-string v2, ", bitmap : "

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__MainViewBitmapManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2, p4}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p3, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->storeBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final captureNativeTabAsync$lambda$4(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "[captureNativeTabAsync] result for "

    const-string v1, ", requestType : "

    const-string v2, ", bitmap : "

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__MainViewBitmapManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->storeBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final captureTabAsync$lambda$0(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "[captureTabAsync] result for "

    const-string v1, ", requestType : "

    const-string v2, ", bitmap : "

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__MainViewBitmapManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2, p4}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p3, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->storeBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final captureTabAsync$lambda$1(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "[captureTabAsync] result for "

    const-string v1, ", requestType : "

    const-string v2, ", bitmap : "

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__MainViewBitmapManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->storeBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private final createBitmapManagerCallback()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)V

    return-object v0
.end method

.method private final createBitmapManagerDelegate()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)V

    return-object v0
.end method

.method private final createCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[createCopiedBitmap] failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__MainViewBitmapManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object p0
.end method

.method public static synthetic d(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->captureTabAsync$lambda$0(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final getOriginalTab(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private final getTabById(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private final getTabForBitmapCapture(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_1
    if-lez p0, :cond_6

    if-gtz v0, :cond_5

    goto :goto_2

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    const-string p1, "[getTabForBitmapCapture] invalid size "

    const-string v0, "si__MainViewBitmapManager"

    invoke-static {p0, p1, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private final isInstantTab(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isInstantTab(I)Z

    move-result p0

    return p0
.end method

.method private final isInstantTabOnLeft()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isInstantTabOnLeft()Z

    move-result p0

    return p0
.end method

.method private final isNativePage(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final makeSplitViewBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0713de

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, 0x7f060bfc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    if-eqz p4, :cond_1

    move-object p1, p3

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, p3

    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    int-to-float p0, p1

    invoke-virtual {v1, p2, p0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private final storeBitmap(ILandroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->storeBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isInstantTab(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->getOriginalTab(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isInstantTabOnLeft()Z

    move-result v2

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->makeSplitViewBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->storeBitmap(ILandroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->listenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public captureNativeTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;J)V
    .locals 16
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v4, p3

    move-wide/from16 v8, p4

    const-string v10, "si__MainViewBitmapManager"

    const-string v11, "[captureNativeTabAsync] request for "

    const-string v12, ", with timeout "

    move-object/from16 v13, p2

    :try_start_0
    invoke-direct {v0, v13}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p2 .. p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v14

    new-instance v15, Lcom/sec/android/app/sbrowser/main_view/y;

    const/4 v6, 0x1

    move-object v1, v15

    move v2, v14

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/main_view/y;-><init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)V

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-lez v1, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;

    new-instance v3, Lcom/sec/android/app/sbrowser/main_view/z;

    const/4 v4, 0x1

    invoke-direct {v3, v14, v7, v0, v4}, Lcom/sec/android/app/sbrowser/main_view/z;-><init>(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)V

    invoke-direct {v2, v8, v9, v15, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;-><init>(JLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    move-object v15, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->captureBitmapIfReady(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[captureNativeTabAsync] failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V
    .locals 1
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    return-void
.end method

.method public captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V
    .locals 7
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V

    return-void
.end method

.method public captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V
    .locals 13
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;JI)V"
        }
    .end annotation

    move-object v6, p0

    move v7, p1

    move-object/from16 v3, p3

    move-wide/from16 v8, p4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->getTabForBitmapCapture(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    invoke-interface {v3, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {v10}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v10}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isNativePage(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p0

    move v1, p1

    move-object v2, v10

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->captureNativeTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;J)V

    return-void

    :cond_4
    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v11

    new-instance v12, Lcom/sec/android/app/sbrowser/main_view/y;

    const/4 v5, 0x0

    move-object v0, v12

    move v1, v11

    move v2, p1

    move-object/from16 v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/y;-><init>(IILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)V

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_5

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/z;

    const/4 v3, 0x0

    invoke-direct {v2, v11, p1, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/z;-><init>(IILcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)V

    invoke-direct {v1, v8, v9, v12, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;-><init>(JLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    move-object v12, v1

    :cond_5
    if-lez v0, :cond_6

    const-string v0, ", with timeout "

    invoke-static {v8, v9, v0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    :goto_0
    const-string v1, "[captureTabAsync] request for "

    const-string v2, ", requestType : "

    invoke-static {v11, p1, v1, v2, v0}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewBitmapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_1
    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getVisibleContentHeight()I

    move-result v1

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v11}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isInstantTab(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v6, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->mainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getVisibleContentHeight()I

    move-result v1

    :cond_8
    move v5, v0

    move v6, v1

    sget-object v7, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->CAPTURE_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v10

    move-object v8, v12

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    return-void
.end method

.method public cleanUnusedBitmapsFromCache()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->cleanUnusedBitmapsFromCache()V

    return-void
.end method

.method public clearAllBitmapCache()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->clearAllBitmapCache()V

    return-void
.end method

.method public getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFullscreenBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getFullscreenBitmapFromDiskCache(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getFullscreenBitmapFromMemCache(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getThumbnailBitmapFromCache(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            "Z",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getThumbnailBitmapFromDiskCache(IZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getThumbnailBitmapFromMemCache(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initializeBitmapCacheIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "si__MainViewBitmapManager"

    const-string v1, "[initializeBitmapCacheIfNeeded]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->initializeBitmapCacheIfNeeded()V

    return-void
.end method

.method public initializeBitmapManagerIfNeeded(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__MainViewBitmapManager"

    const-string v1, "[initializeBitmapManager]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createBitmapManagerDelegate()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createBitmapManagerCallback()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;

    move-result-object v6

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;-><init>(Landroid/content/Context;ILcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;LNc/x;ILtb/f;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    return-void
.end method

.method public isBitmapCacheAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBitmapManagerInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->onTrimMemory(I)V

    return-void
.end method

.method public removeBitmapFromAllMemCache(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isBitmapManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->isValidTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->removeBitmapFromAllMemCache(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setBitmapManager(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->bitmapManager:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    return-void
.end method
