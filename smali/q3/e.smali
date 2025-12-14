.class public final Lq3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lq3/j;

.field public final b:Lcom/google/common/util/concurrent/y;


# direct methods
.method public constructor <init>(Lq3/j;Lcom/google/common/util/concurrent/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/e;->a:Lq3/j;

    iput-object p2, p0, Lq3/e;->b:Lcom/google/common/util/concurrent/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lq3/e;->a:Lq3/j;

    iget-object v0, v0, Lq3/h;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lq3/e;->b:Lcom/google/common/util/concurrent/y;

    invoke-static {v0}, Lq3/h;->f(Lcom/google/common/util/concurrent/y;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lq3/h;->f:LG5/v;

    iget-object v2, p0, Lq3/e;->a:Lq3/j;

    invoke-virtual {v1, v2, p0, v0}, LG5/v;->d(Lq3/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lq3/e;->a:Lq3/j;

    invoke-static {p0}, Lq3/h;->c(Lq3/h;)V

    :cond_1
    return-void
.end method
