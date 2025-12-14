.class public final Lcom/bumptech/glide/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:LR7/a;


# direct methods
.method public constructor <init>(LR7/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/g;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/bumptech/glide/manager/g;->b:LR7/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/D;Landroidx/fragment/app/f0;Z)Lcom/bumptech/glide/l;
    .locals 3

    invoke-static {}, Ll4/l;->a()V

    invoke-static {}, Ll4/l;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/l;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    invoke-direct {v1, p3}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/D;)V

    new-instance v2, LO7/a;

    invoke-direct {v2, p0, p4}, LO7/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/bumptech/glide/manager/g;->b:LR7/a;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/bumptech/glide/l;

    invoke-direct {p4, p2, v1, v2, p1}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/d;Lcom/bumptech/glide/manager/k;Landroid/content/Context;)V

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/bumptech/glide/manager/f;

    invoke-direct {p1, p0, p3}, Lcom/bumptech/glide/manager/f;-><init>(Lcom/bumptech/glide/manager/g;Landroidx/lifecycle/D;)V

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->f(Lcom/bumptech/glide/manager/e;)V

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/bumptech/glide/l;->onStart()V

    :cond_0
    move-object v1, p4

    :cond_1
    return-object v1
.end method
