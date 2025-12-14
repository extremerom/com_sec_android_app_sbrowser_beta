.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;
.super Lm/n;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001EB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u001f\u0010 \u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0004J\u000f\u0010\'\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u0019\u0010*\u001a\u00020\u00052\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0015\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008,\u0010\u0004J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008.\u0010%J!\u00103\u001a\u00020\u00052\u0008\u00100\u001a\u0004\u0018\u00010/2\u0006\u00102\u001a\u000201H\u0016\u00a2\u0006\u0004\u00083\u00104R\u0016\u00106\u001a\u0002058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u00109\u001a\u0002088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010;\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010=\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u001b\u0010D\u001a\u00020?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\u00a8\u0006F"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;",
        "Lm/n;",
        "Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;",
        "<init>",
        "()V",
        "Ldb/r;",
        "setNavigationBarTransparent",
        "Lcom/github/chrisbanes/photoview/PhotoView;",
        "photoView",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "getZoomedAreaFromBitmap",
        "(Lcom/github/chrisbanes/photoview/PhotoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;",
        "getCurrentWallpaperBitmap",
        "()Landroid/graphics/Bitmap;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource;",
        "imageSource",
        "setWallpaperImageSource",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource;)V",
        "image",
        "setWallpaperImageBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "createMainLayout",
        "",
        "url",
        "loadImageByUrl",
        "(Ljava/lang/String;)V",
        "onSuccess",
        "onLoading",
        "Landroid/net/Uri;",
        "uri",
        "categoryName",
        "loadBitmapFromUriAndSetToViewModel",
        "(Landroid/net/Uri;Ljava/lang/String;)V",
        "",
        "withToast",
        "exitMultiWindowModeIfNeeded",
        "(Z)V",
        "showNetworkErrorIfNeeded",
        "onDestroy",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "hasFocus",
        "onWindowFocusChanged",
        "Landroid/app/Activity;",
        "p0",
        "",
        "p1",
        "onActivityStateChange",
        "(Landroid/app/Activity;I)V",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;",
        "Landroid/view/View;",
        "quickAccessMainLayout",
        "Landroid/view/View;",
        "isMainLayoutInitialized",
        "Z",
        "prevLanguage",
        "Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;",
        "viewModel$delegate",
        "Ldb/f;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;",
        "viewModel",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

.field private isMainLayoutInitialized:Z

.field private prevLanguage:Ljava/lang/String;

.field private quickAccessMainLayout:Landroid/view/View;

.field private final viewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lm/n;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->viewModel$delegate:Ldb/f;

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onLoading(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->onLoading()V

    return-void
.end method

.method public static final synthetic access$onSuccess(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->onSuccess()V

    return-void
.end method

.method public static final synthetic access$setWallpaperImageBitmap(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->setWallpaperImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$setWallpaperImageSource(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->setWallpaperImageSource(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource;)V

    return-void
.end method

.method public static final synthetic access$showNetworkErrorIfNeeded(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->showNetworkErrorIfNeeded()V

    return-void
.end method

.method private final createMainLayout(Landroid/graphics/Bitmap;)V
    .locals 12

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->isMainLayoutInitialized:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->quickAccessPreviewLayout:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/InterceptTouchPreview;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->quickAccessMainLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->isMainLayoutInitialized:Z

    goto :goto_0

    :cond_0
    const-string p0, "quickAccessMainLayout"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->isSolidColorBitmap(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->wallpaperPreviewBackground:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v4

    const-string v6, "getColor(...)"

    invoke-static {v4, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->isColorLight(Landroid/graphics/Color;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v10, v5

    goto :goto_2

    :cond_5
    move v10, v1

    :goto_2
    sget-object v0, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/wallpaper/DetectThemeByWallpaperUtil;->isLightThemedBitmap(Landroid/graphics/Bitmap;)Z

    move-result v11

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.common.AppContainerOwner"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/common/AppContainerOwner;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/AppContainerOwner;->getAppContainer()Lcom/sec/android/app/sbrowser/common/AppContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/AppContainer;->getViewFactoryContainer()Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;->getQuickAccessMainLayoutFactory()Lcom/sec/android/app/sbrowser/common/di/QuickAccessMainViewFactory;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v7, p0

    invoke-interface/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/common/di/QuickAccessMainViewFactory;->create(Landroid/content/Context;ZZZZ)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->quickAccessMainLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->quickAccessPreviewLayout:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/InterceptTouchPreview;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->isMainLayoutInitialized:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void

    :cond_6
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3
.end method

.method private final exitMultiWindowModeIfNeeded(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const-string v1, "QuickAccessWallpaperPreviewActivity"

    if-eqz v0, :cond_0

    const-string p0, "Do not exit multi window mode in GED device"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Do not exit multi window mode in dex mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->exitMultiWindowMode(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoActivity;->semExitMultiWindowMode(Landroid/app/Activity;)Z
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exitMultiWindowMode() failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->moveOtherTasksToBack(I)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->onCreate$lambda$7(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->onCreate$lambda$4(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getCurrentWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "qa_images"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImageFileUtil;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;->getFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-static {v2, v3}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "decodeStream(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->viewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    return-object p0
.end method

.method private final getZoomedAreaFromBitmap(Lcom/github/chrisbanes/photoview/PhotoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x0

    aget p0, v0, p0

    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-float v2, v2

    div-float/2addr v2, p0

    float-to-int v2, v2

    neg-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v3, v3

    div-float/2addr v3, p0

    float-to-int p0, v3

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_0

    move p0, v1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {p2, v2, v0, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "QuickAccessWallpaperPreviewActivity"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic h()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->viewModel_delegate$lambda$0()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->onCreate$lambda$5(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method private final loadBitmapFromUriAndSetToViewModel(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/net/Uri;Ljava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private final loadImageByUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "QuickAccessWallpaperPreviewActivity"

    const-string v1, "download image initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LW3/j;

    new-instance v1, LW3/l;

    invoke-direct {v1}, LW3/l;-><init>()V

    sget-object v2, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->getProfile()Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LW3/l;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, LW3/l;->b()LW3/n;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LW3/j;-><init>(Ljava/lang/String;LW3/n;)V

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p1

    iget-object p1, p1, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/j;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/j;->g(Landroidx/fragment/app/J;)Lcom/bumptech/glide/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadImageByUrl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadImageByUrl$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p1, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static final onCreate$lambda$4(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "107"

    const-string v0, "5057"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$5(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->wallpaperPreviewBackground:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {p1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->wallpaperPreviewBackground:Lcom/github/chrisbanes/photoview/PhotoView;

    const-string v1, "wallpaperPreviewBackground"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getZoomedAreaFromBitmap(Lcom/github/chrisbanes/photoview/PhotoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->storeNewWallpaperImage(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->getCategoryName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "107"

    const-string v0, "5056"

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private static final onCreate$lambda$7(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "QuickAccessWallpaperPreviewActivity"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessNativePage(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p0, "Wallpaper store failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "wallpaperStoreResultEventLiveData is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final onLoading()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->doneButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final onSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->doneButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setNavigationBarTransparent()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x200

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private final setWallpaperImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->createMainLayout(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->wallpaperPreviewBackground:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->wallpaperBackground:Landroid/widget/ImageView;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->addBlurEffect(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setWallpaperImageSource(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$BitmapSource;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$BitmapSource;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$BitmapSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->setWallpaperImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->onSuccess()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$UrlSource;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$UrlSource;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$UrlSource;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->loadImageByUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method private final showNetworkErrorIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "QuickAccessWallpaperPreviewActivity"

    const-string v1, "No network connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140ee8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static final viewModel_delegate$lambda$0()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->prevLanguage:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "prevLanguage"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getCurrentWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->setWallpaperImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    const/4 v0, 0x0

    const-string v2, "binding"

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->doneButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->setNavigationBarTransparent()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/n;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSetting(Landroid/content/Intent;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->exitMultiWindowModeIfNeeded(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "extra_key_qa_wallpaper_category_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_key_qa_wallpaper_image_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->fetchSelectedWallpaperImageFromUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_key_qa_wallpaper_gallery_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->loadBitmapFromUriAndSetToViewModel(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_key_qa_wallpaper_color_byte_array"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    invoke-static {v4, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->changePreviewWithBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->addPreviewPathInstanceQueue(Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setWallpaperPreviewVisibility(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->prevLanguage:Ljava/lang/String;

    invoke-static {p0, p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->wallpapersButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/a;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessWallpaperPreviewActivityBinding;->doneButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/a;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$onCreate$6;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$onCreate$6;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p1, v0, v0, v1, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->getWallpaperStoreResultEventLiveData()Landroidx/lifecycle/S;

    move-result-object p1

    new-instance v0, LC9/b;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lm/n;->onDestroy()V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setWallpaperPreviewVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->clearPreviewPathInstanceQueue()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSetting(Landroid/content/Intent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->exitMultiWindowModeIfNeeded(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, LI3/c;

    invoke-direct {v2, v1}, LI3/c;-><init>(Landroid/view/View;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v1, v3, :cond_0

    new-instance v1, Lf1/A0;

    invoke-direct {v1, v0, v2}, Lf1/z0;-><init>(Landroid/view/Window;LI3/c;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_1

    new-instance v1, Lf1/z0;

    invoke-direct {v1, v0, v2}, Lf1/z0;-><init>(Landroid/view/Window;LI3/c;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lf1/x0;

    invoke-direct {v1, v0, v2}, Lf1/x0;-><init>(Landroid/view/Window;LI3/c;)V

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LG5/W2;->c(Landroid/view/Window;Z)V

    invoke-virtual {v1, v0}, LG5/Y2;->d(I)V

    const/4 p0, 0x2

    invoke-virtual {v1, p0}, LG5/Y2;->g(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, LG5/W2;->c(Landroid/view/Window;Z)V

    invoke-virtual {v1, v0}, LG5/Y2;->h(I)V

    :goto_1
    return-void
.end method
