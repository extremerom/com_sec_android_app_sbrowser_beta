.class Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditModeFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->showShadowIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onEditModeFinished()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->showExtraBarIfNeeded()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->i(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V

    :cond_1
    return-void
.end method

.method public onEditModeStarted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mToolbarShadow:Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarShadow;->hideShadow()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onEditModeStarted()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->mMainViewToolbar:Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;->shouldEnableCustomHeader()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibilityOfLandscapeViewIfNeeded(Z)V

    :cond_2
    return-void
.end method
