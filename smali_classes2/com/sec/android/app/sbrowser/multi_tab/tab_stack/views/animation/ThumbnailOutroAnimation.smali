.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;
    }
.end annotation


# instance fields
.field protected mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->lambda$startOutroAnimationExpanding$0(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->hideBottomBarOrNewTabBtn()V

    return-void
.end method

.method private hideBottomBarOrNewTabBtn()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0ce3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getRecents()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b09d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$startOutroAnimationExpanding$0(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    const v0, 0x7f0b0877

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    return-void
.end method

.method public startOutroAnimationExpanding(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;->getTabViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "ThumbnailOutroAnimation"

    const-string v2, "[startOutroAnimationExpanding]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0ce6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0ce5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->isHideStatusBarEnabled()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->addCutOutMarginIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;->getHeaderHeight()I

    move-result v5

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_3
    :goto_1
    new-instance p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, p3

    move-object v2, p0

    move-object v4, p2

    move-object v6, v0

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;Landroid/os/Looper;Landroid/view/View;ILandroid/view/View;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/b;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/b;-><init>(Landroid/view/View;)V

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;->setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V

    return-void
.end method
