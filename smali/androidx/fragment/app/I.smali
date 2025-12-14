.class public final Landroidx/fragment/app/I;
.super Landroidx/fragment/app/N;
.source "SourceFile"

# interfaces
.implements LV0/e;
.implements LV0/f;
.implements LU0/v;
.implements LU0/w;
.implements Landroidx/lifecycle/y0;
.implements Landroidx/activity/B;
.implements Landroidx/activity/result/i;
.implements LQ2/f;
.implements Landroidx/fragment/app/j0;
.implements Lf1/l;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/J;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/J;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-direct {p0, p1}, Landroidx/fragment/app/N;-><init>(Landroidx/fragment/app/J;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/J;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final addMenuProvider(Lf1/p;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->addMenuProvider(Lf1/p;)V

    return-void
.end method

.method public final addMenuProvider(Lf1/p;Landroidx/lifecycle/J;Landroidx/lifecycle/C;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final addOnConfigurationChangedListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->addOnConfigurationChangedListener(Le1/a;)V

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->addOnMultiWindowModeChangedListener(Le1/a;)V

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->addOnPictureInPictureModeChangedListener(Le1/a;)V

    return-void
.end method

.method public final addOnTrimMemoryListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->addOnTrimMemoryListener(Le1/a;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/h;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/activity/p;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/D;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/A;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p0

    return-object p0
.end method

.method public final getSavedStateRegistry()LQ2/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/activity/p;->getSavedStateRegistry()LQ2/d;

    move-result-object p0

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/x0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/activity/p;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object p0

    return-object p0
.end method

.method public final removeMenuProvider(Lf1/p;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->removeMenuProvider(Lf1/p;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->removeOnConfigurationChangedListener(Le1/a;)V

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->removeOnMultiWindowModeChangedListener(Le1/a;)V

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->removeOnPictureInPictureModeChangedListener(Le1/a;)V

    return-void
.end method

.method public final removeOnTrimMemoryListener(Le1/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/I;->e:Landroidx/fragment/app/J;

    invoke-virtual {p0, p1}, Landroidx/activity/p;->removeOnTrimMemoryListener(Le1/a;)V

    return-void
.end method
