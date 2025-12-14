.class public abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/I;


# instance fields
.field private final mLifecycleRegistry:Landroidx/lifecycle/L;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroidx/lifecycle/L;

    invoke-direct {p1, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object p0, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method


# virtual methods
.method public abstract closeDialogIfNecessary()V
.end method

.method public abstract destroy()V
.end method

.method public abstract enableQuickAccessHoverPopup(Z)V
.end method

.method public abstract enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V
.end method

.method public abstract exitEditMode(ZZ)V
.end method

.method public getLifecycle()Landroidx/lifecycle/D;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->mLifecycleRegistry:Landroidx/lifecycle/L;

    return-object p0
.end method

.method public abstract handleKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract isCheckableBottomBarVisible()Z
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isInitialScreen()Z
.end method

.method public abstract isNeedToHideToolbarShadow()Z
.end method

.method public abstract isScrollBottomReached()Z
.end method

.method public abstract isScrollTopReached()Z
.end method

.method public abstract isSolidColorLightThemed()Z
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public abstract onLaunchNewTabFromAssistIntent()V
.end method

.method public abstract onLaunchNewTabFromExternalApp()V
.end method

.method public abstract onToolbarHeightChanged()V
.end method

.method public abstract refresh()V
.end method

.method public abstract requestFocusDown(Z)Z
.end method

.method public abstract resetToolbarTranslation()V
.end method

.method public abstract setDelegate(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;)V
.end method

.method public abstract setUrlEditMode(Z)V
.end method
