.class public abstract Landroidx/fragment/app/J;
.super Landroidx/activity/p;
.source "SourceFile"

# interfaces
.implements LU0/a;


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

.field final mFragments:Landroidx/fragment/app/M;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/p;-><init>()V

    new-instance v0, Landroidx/fragment/app/I;

    invoke-direct {v0, p0}, Landroidx/fragment/app/I;-><init>(Landroidx/fragment/app/J;)V

    new-instance v1, Landroidx/fragment/app/M;

    invoke-direct {v1, v0}, Landroidx/fragment/app/M;-><init>(Landroidx/fragment/app/I;)V

    iput-object v1, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object v0, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/J;->mStopped:Z

    invoke-virtual {p0}, Landroidx/activity/p;->getSavedStateRegistry()LQ2/d;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/F;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/F;-><init>(ILjava/lang/Object;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, LQ2/d;->c(Ljava/lang/String;LQ2/c;)V

    new-instance v0, Landroidx/fragment/app/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/G;-><init>(Landroidx/fragment/app/J;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/p;->addOnConfigurationChangedListener(Le1/a;)V

    new-instance v0, Landroidx/fragment/app/G;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/G;-><init>(Landroidx/fragment/app/J;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/p;->addOnNewIntentListener(Le1/a;)V

    new-instance v0, Landroidx/fragment/app/H;

    invoke-direct {v0, p0}, Landroidx/fragment/app/H;-><init>(Landroidx/fragment/app/J;)V

    invoke-virtual {p0, v0}, Landroidx/activity/p;->addOnContextAvailableListener(Lg/b;)V

    return-void
.end method

.method public static d(Landroidx/fragment/app/f0;Landroidx/lifecycle/C;)Z
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/o0;

    invoke-virtual {p0}, Landroidx/fragment/app/o0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/fragment/app/J;->d(Landroidx/fragment/app/f0;Landroidx/lifecycle/C;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/y0;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/y0;->b()V

    iget-object v2, v2, Landroidx/fragment/app/y0;->e:Landroidx/lifecycle/L;

    iget-object v2, v2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v4, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/y0;

    iget-object v0, v0, Landroidx/fragment/app/y0;->e:Landroidx/lifecycle/L;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    move v0, v3

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/L;

    iget-object v2, v2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v4, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/L;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    move v0, v3

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    iget-object p0, p0, Landroidx/fragment/app/f0;->f:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/P;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LU0/e;->shouldDumpInternalState([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/J;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/J;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/J;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lj2/f;

    invoke-interface {p0}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lj2/f;-><init>(Landroidx/lifecycle/J;Landroidx/lifecycle/x0;)V

    invoke-virtual {v1, v0, p3}, Lj2/f;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/f0;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/f0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    return-object p0
.end method

.method public getSupportLoaderManager()Lj2/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lj2/f;

    invoke-interface {p0}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lj2/f;-><init>(Landroidx/lifecycle/J;Landroidx/lifecycle/x0;)V

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    invoke-static {v0, v1}, Landroidx/fragment/app/J;->d(Landroidx/fragment/app/f0;Landroidx/lifecycle/C;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/M;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/p;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/o0;

    invoke-virtual {v0}, Landroidx/fragment/app/o0;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mDisposableHandle:LNc/P;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LNc/P;->a()V

    :cond_0
    invoke-super {p0}, Landroidx/activity/p;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/p;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/B;->ON_CREATE:Landroidx/lifecycle/B;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/f0;->I:Z

    iput-boolean p1, p0, Landroidx/fragment/app/f0;->J:Z

    iget-object v0, p0, Landroidx/fragment/app/f0;->P:Landroidx/fragment/app/i0;

    iput-boolean p1, v0, Landroidx/fragment/app/i0;->f:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/f0;->u(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/J;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/J;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object v0, v0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object v0, v0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->l()V

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/p;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/f0;->j(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/J;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object v0, v0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    const/4 v1, 0x5

    iget-object v0, v0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->u(I)V

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/B;->ON_PAUSE:Landroidx/lifecycle/B;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/J;->onResumeFragments()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    invoke-virtual {v0}, Landroidx/fragment/app/M;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/p;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/J;->mResumed:Z

    iget-object v1, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    invoke-virtual {v1}, Landroidx/fragment/app/M;->a()V

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/f0;->z(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v1, Landroidx/lifecycle/B;->ON_RESUME:Landroidx/lifecycle/B;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/f0;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/f0;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/f0;->P:Landroidx/fragment/app/i0;

    iput-boolean v0, v1, Landroidx/fragment/app/i0;->f:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/f0;->u(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/J;->mStopped:Z

    iget-boolean v1, p0, Landroidx/fragment/app/J;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroidx/fragment/app/J;->mCreated:Z

    iget-object v1, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object v1, v1, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object v1, v1, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    iput-boolean v0, v1, Landroidx/fragment/app/f0;->I:Z

    iput-boolean v0, v1, Landroidx/fragment/app/f0;->J:Z

    iget-object v3, v1, Landroidx/fragment/app/f0;->P:Landroidx/fragment/app/i0;

    iput-boolean v0, v3, Landroidx/fragment/app/i0;->f:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/fragment/app/f0;->u(I)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    invoke-virtual {v1}, Landroidx/fragment/app/M;->a()V

    iget-object v1, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object v1, v1, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object v1, v1, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/f0;->z(Z)Z

    iget-object v1, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v2, Landroidx/lifecycle/B;->ON_START:Landroidx/lifecycle/B;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object p0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    iput-boolean v0, p0, Landroidx/fragment/app/f0;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/f0;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/f0;->P:Landroidx/fragment/app/i0;

    iput-boolean v0, v1, Landroidx/fragment/app/i0;->f:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/f0;->u(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    invoke-virtual {p0}, Landroidx/fragment/app/M;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/J;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/J;->markFragmentsCreated()V

    iget-object v1, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object v1, v1, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    iget-object v1, v1, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    iput-boolean v0, v1, Landroidx/fragment/app/f0;->J:Z

    iget-object v2, v1, Landroidx/fragment/app/f0;->P:Landroidx/fragment/app/i0;

    iput-boolean v0, v2, Landroidx/fragment/app/i0;->f:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f0;->u(I)V

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragmentLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/B;->ON_STOP:Landroidx/lifecycle/B;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    return-void
.end method

.method public setEnterSharedElementCallback(LU0/z;)V
    .locals 0
    .param p1    # LU0/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(LU0/z;)V
    .locals 0
    .param p1    # LU0/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/J;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroidx/activity/p;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
