.class public final Lcom/google/common/util/concurrent/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/common/util/concurrent/o;

.field public final b:Lcom/google/common/util/concurrent/y;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/o;

    iput-object p2, p0, Lcom/google/common/util/concurrent/e;->b:Lcom/google/common/util/concurrent/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/o;

    iget-object v0, v0, Lcom/google/common/util/concurrent/o;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/e;->b:Lcom/google/common/util/concurrent/y;

    invoke-static {v0}, Lcom/google/common/util/concurrent/o;->h(Lcom/google/common/util/concurrent/y;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/o;->f:LG5/i2;

    iget-object v2, p0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/o;

    invoke-virtual {v1, v2, p0, v0}, LG5/i2;->b(Lcom/google/common/util/concurrent/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/o;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/o;->e(Lcom/google/common/util/concurrent/o;Z)V

    :cond_1
    return-void
.end method
