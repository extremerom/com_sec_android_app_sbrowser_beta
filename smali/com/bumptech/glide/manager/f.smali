.class public final Lcom/bumptech/glide/manager/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/e;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/D;

.field public final synthetic b:Lcom/bumptech/glide/manager/g;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/g;Landroidx/lifecycle/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/f;->b:Lcom/bumptech/glide/manager/g;

    iput-object p2, p0, Lcom/bumptech/glide/manager/f;->a:Landroidx/lifecycle/D;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/f;->b:Lcom/bumptech/glide/manager/g;

    iget-object v0, v0, Lcom/bumptech/glide/manager/g;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/bumptech/glide/manager/f;->a:Landroidx/lifecycle/D;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method
