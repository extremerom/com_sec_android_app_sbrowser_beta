.class public final Landroidx/fragment/app/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/w;
.implements LQ2/f;
.implements Landroidx/lifecycle/y0;


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Landroidx/lifecycle/x0;

.field public final c:Landroidx/fragment/app/v;

.field public d:Landroidx/lifecycle/v0;

.field public e:Landroidx/lifecycle/L;

.field public f:LQ2/e;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/x0;Landroidx/fragment/app/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/y0;->e:Landroidx/lifecycle/L;

    iput-object v0, p0, Landroidx/fragment/app/y0;->f:LQ2/e;

    iput-object p1, p0, Landroidx/fragment/app/y0;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/y0;->b:Landroidx/lifecycle/x0;

    iput-object p3, p0, Landroidx/fragment/app/y0;->c:Landroidx/fragment/app/v;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/B;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/y0;->e:Landroidx/lifecycle/L;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/y0;->e:Landroidx/lifecycle/L;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object v0, p0, Landroidx/fragment/app/y0;->e:Landroidx/lifecycle/L;

    new-instance v0, LQ2/e;

    invoke-direct {v0, p0}, LQ2/e;-><init>(LQ2/f;)V

    iput-object v0, p0, Landroidx/fragment/app/y0;->f:LQ2/e;

    invoke-virtual {v0}, LQ2/e;->a()V

    iget-object p0, p0, Landroidx/fragment/app/y0;->c:Landroidx/fragment/app/v;

    invoke-virtual {p0}, Landroidx/fragment/app/v;->run()V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Li2/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Li2/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Li2/d;-><init>(I)V

    iget-object v3, v2, Li2/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/lifecycle/t0;->a:Landroidx/lifecycle/t0;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/t0;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/l0;->b:Landroidx/lifecycle/t0;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/lifecycle/l0;->c:Landroidx/lifecycle/t0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0;

    move-result-object v1

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/v0;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroidx/fragment/app/y0;->d:Landroidx/lifecycle/v0;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/y0;->d:Landroidx/lifecycle/v0;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Landroidx/lifecycle/o0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Landroidx/lifecycle/o0;-><init>(Landroid/app/Application;LQ2/f;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/fragment/app/y0;->d:Landroidx/lifecycle/v0;

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/y0;->d:Landroidx/lifecycle/v0;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/D;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/y0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/y0;->e:Landroidx/lifecycle/L;

    return-object p0
.end method

.method public final getSavedStateRegistry()LQ2/d;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/y0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/y0;->f:LQ2/e;

    iget-object p0, p0, LQ2/e;->b:LQ2/d;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/x0;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/y0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/y0;->b:Landroidx/lifecycle/x0;

    return-object p0
.end method
