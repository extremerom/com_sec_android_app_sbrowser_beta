.class public Lcom/sec/terrace/content/browser/TinContextMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinContextMenuHelper$Natives;
    }
.end annotation


# instance fields
.field private mCurrentContextMenuParams:Lcom/sec/terrace/TerraceContextMenuParams;

.field private mNativeTinContextMenuHelper:J

.field private mOnMenuClosed:Ljava/lang/Runnable;

.field private mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method private constructor <init>(JLcom/sec/terrace/content/browser/TinWebContentsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mNativeTinContextMenuHelper:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mNativeTinContextMenuHelper:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mOnMenuClosed:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)Lcom/sec/terrace/TerraceContextMenuPopulator;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    return-object p0
.end method

.method public static create(JLcom/sec/terrace/content/browser/TinWebContentsImpl;)Lcom/sec/terrace/content/browser/TinContextMenuHelper;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;-><init>(JLcom/sec/terrace/content/browser/TinWebContentsImpl;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/content/browser/TinContextMenuHelper;Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mNativeTinContextMenuHelper:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/content/browser/TinContextMenuHelper;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mCurrentContextMenuParams:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->shouldShowMenu(Lcom/sec/terrace/TerraceContextMenuParams;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mCurrentContextMenuParams:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/terrace/TerraceContextMenuPopulator;->buildContextMenu(Landroid/view/ContextMenu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/content/browser/TinContextMenuHelper$5;

    invoke-direct {v1, p0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper$5;-><init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mCurrentContextMenuParams:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/TerraceContextMenuPopulator;->onItemSelected(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result p0

    return p0
.end method

.method private shouldShowMenu(Lcom/sec/terrace/TerraceContextMenuParams;Landroid/app/Activity;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Lcom/sec/terrace/TerraceContextMenuPopulator;->shouldShowContextMenu(Landroid/app/Activity;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public setPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    return-void
.end method

.method public showContextMenu(Lcom/sec/terrace/content/browser/TinContentView;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {p0, p2, v3}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->shouldShowMenu(Lcom/sec/terrace/TerraceContextMenuParams;Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getEventX()I

    move-result v4

    int-to-float v4, v4

    mul-float v8, v4, v3

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getEventY()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v3}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->getInputConnectionText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v5

    :goto_0
    const/4 v6, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v6

    :goto_2
    invoke-virtual {p2, v3}, Lcom/sec/terrace/TerraceContextMenuParams;->setIsEditableEmpty(Z)V

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getSourceType()I

    move-result v3

    if-ne v3, v6, :cond_6

    const-string v3, "0"

    goto :goto_3

    :cond_6
    const-string v3, "1"

    :goto_3
    iget-object v6, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "202"

    goto :goto_4

    :cond_7
    const-string v6, "201"

    :goto_4
    const-string v7, "9158"

    invoke-static {v6, v7, v3}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isSelectedText()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->dismissTextHandles()V

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearSelection()V

    :cond_a
    :goto_5
    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mCurrentContextMenuParams:Lcom/sec/terrace/TerraceContextMenuParams;

    new-instance v3, Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;

    invoke-direct {v3, p0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper$1;-><init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)V

    iput-object v3, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mOnMenuClosed:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    invoke-interface {v3}, Lcom/sec/terrace/TerraceContextMenuPopulator;->isContextMenuCustomUiEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    add-float v9, v1, v4

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mCurrentContextMenuParams:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-interface {v1, v5, v3, v4}, Lcom/sec/terrace/TerraceContextMenuPopulator;->buildContextMenu(Landroid/view/ContextMenu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V

    iget-object v5, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mCurrentContextMenuParams:Lcom/sec/terrace/TerraceContextMenuParams;

    iget-object v11, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mOnMenuClosed:Ljava/lang/Runnable;

    new-instance v12, Lcom/sec/terrace/content/browser/TinContextMenuHelper$2;

    invoke-direct {v12, p0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper$2;-><init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)V

    invoke-interface/range {v5 .. v12}, Lcom/sec/terrace/TerraceContextMenuPopulator;->showContextMenuCustomUi(Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;)Z

    move-result p0

    goto :goto_7

    :cond_c
    new-instance v1, Lcom/sec/terrace/content/browser/TinContextMenuHelper$3;

    invoke-direct {v1, p0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper$3;-><init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {p1, v8, v1}, Landroid/view/View;->showContextMenu(FF)Z

    move-result p1

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    move-result p1

    :goto_6
    if-eqz p1, :cond_e

    new-instance v1, Lcom/sec/terrace/content/browser/TinContextMenuHelper$4;

    invoke-direct {v1, p0, v0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper$4;-><init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->addContextMenuCloseListener(Lorg/chromium/ui/base/WindowAndroid$OnCloseContextMenuListener;)V

    :cond_e
    move p0, p1

    :goto_7
    if-eqz p0, :cond_f

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getSourceType()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_f

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->performLongPressHapticFeedbackIfNeeded()V

    :cond_f
    return p0

    :cond_10
    :goto_8
    return v1
.end method
