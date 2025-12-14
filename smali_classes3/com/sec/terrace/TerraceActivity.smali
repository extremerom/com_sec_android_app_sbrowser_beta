.class public Lcom/sec/terrace/TerraceActivity;
.super Lm/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceActivity$WindowFocusListener;
    }
.end annotation


# instance fields
.field private mActiveTerrace:Lcom/sec/terrace/Terrace;

.field protected mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

.field private mExtensionsViewLaunched:Z

.field private mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

.field private mInsetObserver:Lorg/chromium/ui/InsetObserver;

.field private mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

.field private mMainDisplayIsRemoved:Z

.field private mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

.field protected mTerraceStylusWritingController:Lcom/sec/terrace/TerraceStylusWritingController;

.field private mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

.field private mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

.field private mWindowFocusListener:Lcom/sec/terrace/TerraceActivity$WindowFocusListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsViewLaunched:Z

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mMainDisplayIsRemoved:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowFocusListener:Lcom/sec/terrace/TerraceActivity$WindowFocusListener;

    return-void
.end method

.method private applyWindowInsetsListener()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/TerraceActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceActivity$2;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private createInsetObserver()Lorg/chromium/ui/InsetObserver;
    .locals 2

    new-instance v0, Lorg/chromium/ui/InsetObserver;

    new-instance v1, Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/chromium/ui/base/ImmutableWeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lorg/chromium/ui/InsetObserver;-><init>(Lorg/chromium/ui/base/ImmutableWeakReference;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/sec/terrace/TerraceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->lambda$recreateActivityByDisplayRemoved$0()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    return-object p0
.end method

.method private hasLocaleChanged(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v2, "locale"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[TerraceActivity][hasLocaleChanged] localeString = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TerraceActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    return-object p0
.end method

.method private initializeCompositorContent()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationBottomInsetSupplier()Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getInsetObserver()Lorg/chromium/ui/InsetObserver;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/InsetObserver;->getSupplierForKeyboardInset()Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->setKeyboardInsetSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)V

    :cond_0
    return-void
.end method

.method private initializeCompositorView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/compositor/TinCompositorView;

    new-instance v1, Lcom/sec/terrace/TerraceActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/TerraceActivity$1;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;)V

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->initNativeCompositor(ZLorg/chromium/ui/base/WindowAndroid;)V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setRootView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getActiveSurfaceView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->setAnimationPlaceholderView(Landroid/view/View;)V

    return-void
.end method

.method private initializeDisplayListener()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-le v0, v1, :cond_1

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/terrace/TerraceActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/terrace/TerraceActivity$5;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    iput-object v1, p0, Lcom/sec/terrace/TerraceActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method private isSoftInputAdjustResize()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/ActivityWindowAndroid;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V
    .locals 0

    iput-object p0, p1, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/terrace/TerraceActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mMainDisplayIsRemoved:Z

    return-void
.end method

.method private synthetic lambda$recreateActivityByDisplayRemoved$0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/terrace/TerraceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->initializeCompositorView()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/terrace/TerraceActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->isSoftInputAdjustResize()Z

    move-result p0

    return p0
.end method

.method private recreateActivityByDisplayRemoved()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mMainDisplayIsRemoved:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->k(Lcom/sec/terrace/TerraceActivity;)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->k(Lcom/sec/terrace/TerraceActivity;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :cond_1
    if-eq v0, v1, :cond_2

    const-string v2, "Recreate Activity because display is removed and display of WindowAndroid("

    const-string v3, ") is different from that of context("

    const-string v4, ")"

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerraceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mMainDisplayIsRemoved:Z

    :cond_3
    return-void
.end method

.method private unregisterDisplayListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_1

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/TerraceActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :cond_1
    return-void
.end method

.method private updateAcceptLanguages()V
    .locals 11

    invoke-static {}, Lorg/chromium/base/LocaleUtils;->getDefaultLocaleListString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TerraceActivity][updateAcceptLanguages] localeString = "

    const-string v2, "TerraceActivity"

    invoke-static {v1, v0, v2}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/terrace/TerraceActivity;->hasLocaleChanged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->resetAcceptLanguages(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/terrace/TerraceActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/terrace/TerraceActivity$6;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public backPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public closeExtensionPopup()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsViewLaunched:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->closePopup()V

    :cond_1
    return-void
.end method

.method public createActivityDelegate()Lcom/sec/terrace/TerraceActivityDelegate;
    .locals 1

    new-instance v0, Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceActivityDelegate;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    return-object v0
.end method

.method public dismissExtensionsRenderView()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsViewLaunched:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsViewLaunched:Z

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->show()V

    :cond_1
    return-void
.end method

.method public exitWebXrSession()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endActiveSession()Z

    move-result p0

    return p0
.end method

.method public getActiveTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public getInsetObserver()Lorg/chromium/ui/InsetObserver;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mInsetObserver:Lorg/chromium/ui/InsetObserver;

    return-object p0
.end method

.method public getRenderView()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTerraceClient()Lcom/sec/terrace/Terrace$TerraceClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    return-object p0
.end method

.method public getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mTerraceStylusWritingController:Lcom/sec/terrace/TerraceStylusWritingController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/TerraceStylusWritingController;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceStylusWritingController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mTerraceStylusWritingController:Lcom/sec/terrace/TerraceStylusWritingController;

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mTerraceStylusWritingController:Lcom/sec/terrace/TerraceStylusWritingController;

    return-object p0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsViewLaunched:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    return-object p0
.end method

.method public isActiveTerraceAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExtensionsViewLaunched()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsViewLaunched:Z

    return p0
.end method

.method public notifyCurrentTerraceActivityChanged()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceHelper;->setCurrentTerraceActivity(Lcom/sec/terrace/TerraceActivity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/ui/base/IntentRequestTracker;->onActivityResult(IILandroid/content/Intent;)Z

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->getInstance()Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->isLocationRequestCode(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->getInstance()Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->onCallbackReceived(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->notifyCurrentTerraceActivityChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onConfigurationChanged, hardKeyboardHidden : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Keyboard Type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const-string v0, "TerraceActivity"

    invoke-static {p0, p1, v0}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onContextMenuClosed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->applyWindowInsetsListener()V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->createActivityDelegate()Lcom/sec/terrace/TerraceActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/TerraceApplication;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceApplication;->initCommandLine()V

    :cond_0
    invoke-static {p0}, Lorg/chromium/ui/base/IntentRequestTracker;->createFromActivity(Landroid/app/Activity;)Lorg/chromium/ui/base/IntentRequestTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->createInsetObserver()Lorg/chromium/ui/InsetObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mInsetObserver:Lorg/chromium/ui/InsetObserver;

    new-instance v0, Lcom/sec/terrace/TerraceActivity$3;

    iget-object v5, p0, Lcom/sec/terrace/TerraceActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getInsetObserver()Lorg/chromium/ui/InsetObserver;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/terrace/TerraceActivity$3;-><init>(Lcom/sec/terrace/TerraceActivity;Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    iput-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/IntentRequestTracker;->restoreInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/terrace/browser/TinSystemColors;->setFromResources()V

    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setShouldGetReadbackViewFromWindowAndroid()V

    new-instance p1, Lcom/sec/terrace/TerraceActivity$4;

    invoke-direct {p1, p0}, Lcom/sec/terrace/TerraceActivity$4;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    iput-object p1, p0, Lcom/sec/terrace/TerraceActivity;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->notifyCurrentTerraceActivityChanged()V

    return-void
.end method

.method public onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
    .locals 0

    const-string p0, "TerraceActivity"

    const-string p1, "onCreateTerraceForNewContents is not overriden"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivityDelegate;->onDestroy()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->close()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->shutDown()V

    iput-object v1, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    :cond_1
    iput-object v1, p0, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getKeyboardDelegate()Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->unregisterKeyboardVisibilityCallbacks()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/TerraceActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    :cond_2
    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->unregisterDisplayListener()V

    iput-object v1, p0, Lcom/sec/terrace/TerraceActivity;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceStylusWritingController;->unregisterStylusWritingObserver()V

    iput-object v1, p0, Lcom/sec/terrace/TerraceActivity;->mTerraceStylusWritingController:Lcom/sec/terrace/TerraceStylusWritingController;

    invoke-static {}, Lcom/sec/terrace/browser/TinClipboardUtils;->unregisterClipboardEventListener()V

    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->updateAcceptLanguages()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivityDelegate;->onNativeInitializationSuccess()V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->onNativeInitializationSuccess()V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->initializeCompositorView()V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->initializeCompositorContent()V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->initializeDisplayListener()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/p;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->notifyCurrentTerraceActivityChanged()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivityDelegate;->onPause()V

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onPause()V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->onAppEnterBackground()V

    :cond_1
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lm/n;->onPostCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostInflation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onPostInflation()V

    return-void
.end method

.method public onPreInflation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onPreInflation()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->handlePermissionResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;->recreateActivityByDisplayRemoved()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivityDelegate;->onResume()V

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActiveTerrace:Lcom/sec/terrace/Terrace;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->notifyRendererPreferenceUpdate()V

    :cond_0
    return-void
.end method

.method public onSplitModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->onSplitModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lm/n;->onStart()V

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lm/n;->onStop()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivityDelegate;->onStop()V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->sendStatusLogsForAccumulatedStats()V

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->clearDragImageContents(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;->clearSmartClipImages()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->notifyCurrentTerraceActivityChanged()V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->onUserInteraction(Landroid/app/Activity;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity;->mActivityDelegate:Lcom/sec/terrace/TerraceActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;->onWindowFocusChanged(Z)V

    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/Clipboard;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity;->mWindowFocusListener:Lcom/sec/terrace/TerraceActivity$WindowFocusListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceActivity$WindowFocusListener;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentCompositorView(Lcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/TerraceActivity;->mTinCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    return-void
.end method

.method public setLaunchedExtensionView(Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;Lorg/chromium/ui/base/ActivityWindowAndroid;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsViewLaunched:Z

    iput-object p1, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    iput-object p2, p0, Lcom/sec/terrace/TerraceActivity;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    return-void
.end method
