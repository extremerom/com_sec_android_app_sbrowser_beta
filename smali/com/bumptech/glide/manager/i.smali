.class public Lcom/bumptech/glide/manager/i;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field public final a:Lb1/b;

.field public final b:LO9/a;

.field public final c:Ljava/util/HashSet;

.field public d:Lcom/bumptech/glide/l;

.field public e:Lcom/bumptech/glide/manager/i;

.field public f:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lb1/b;

    invoke-direct {v0}, Lb1/b;-><init>()V

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v1, LO9/a;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, LO9/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/bumptech/glide/manager/i;->b:LO9/a;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/manager/i;->c:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/bumptech/glide/manager/i;->a:Lb1/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bumptech/glide/manager/i;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/manager/j;->h(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/i;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    iget-object p1, p1, Lcom/bumptech/glide/manager/i;->c:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/i;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    const-string v0, "RMFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Unable to register fragment with root"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/i;->a:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bumptech/glide/manager/i;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bumptech/glide/manager/i;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/i;->e:Lcom/bumptech/glide/manager/i;

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/bumptech/glide/manager/i;->a:Lb1/b;

    iput-boolean v0, p0, Lb1/b;->a:Z

    iget-object p0, p0, Lb1/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ll4/l;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/e;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/e;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/bumptech/glide/manager/i;->a:Lb1/b;

    iput-boolean v0, p0, Lb1/b;->a:Z

    iget-object p0, p0, Lb1/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ll4/l;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/e;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/e;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/i;->f:Landroid/app/Fragment;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
