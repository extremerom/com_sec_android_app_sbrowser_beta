.class public final LR/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:LYc/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LR/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v0

    iput-object v0, p0, LR/v;->b:LYc/d;

    return-void
.end method
