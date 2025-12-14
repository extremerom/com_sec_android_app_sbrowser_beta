.class public final LNc/o0;
.super LNc/k;
.source "SourceFile"


# instance fields
.field public final i:LNc/t0;


# direct methods
.method public constructor <init>(Lib/c;LNc/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, LNc/k;-><init>(ILib/c;)V

    iput-object p2, p0, LNc/o0;->i:LNc/t0;

    return-void
.end method


# virtual methods
.method public final o(LNc/t0;)Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, LNc/o0;->i:LNc/t0;

    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LNc/q0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LNc/q0;

    invoke-virtual {v0}, LNc/q0;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p0, LNc/s;

    if-eqz v0, :cond_1

    check-cast p0, LNc/s;

    iget-object p0, p0, LNc/s;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_1
    invoke-virtual {p1}, LNc/t0;->f()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final y()Ljava/lang/String;
    .locals 0

    const-string p0, "AwaitContinuation"

    return-object p0
.end method
