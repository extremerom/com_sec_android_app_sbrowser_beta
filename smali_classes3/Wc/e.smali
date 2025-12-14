.class public final LWc/e;
.super LNc/Z;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final b:LWc/e;

.field public static final c:LNc/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LWc/e;

    invoke-direct {v0}, LNc/x;-><init>()V

    sput-object v0, LWc/e;->b:LWc/e;

    sget-object v0, LWc/m;->b:LWc/m;

    sget v1, LUc/z;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v4, v2}, LUc/a;->l(ILjava/lang/String;III)I

    move-result v1

    invoke-virtual {v0, v1}, LWc/m;->J(I)LNc/x;

    move-result-object v0

    sput-object v0, LWc/e;->c:LNc/x;

    return-void
.end method


# virtual methods
.method public final G(Lib/h;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, LWc/e;->c:LNc/x;

    invoke-virtual {p0, p1, p2}, LNc/x;->G(Lib/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J(I)LNc/x;
    .locals 0

    const/4 p0, 0x1

    sget-object p1, LWc/m;->b:LWc/m;

    invoke-virtual {p1, p0}, LWc/m;->J(I)LNc/x;

    move-result-object p0

    return-object p0
.end method

.method public final K()Ljava/util/concurrent/Executor;
    .locals 0

    return-object p0
.end method

.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lib/i;->a:Lib/i;

    invoke-virtual {p0, v0, p1}, LWc/e;->v(Lib/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method

.method public final v(Lib/h;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, LWc/e;->c:LNc/x;

    invoke-virtual {p0, p1, p2}, LNc/x;->v(Lib/h;Ljava/lang/Runnable;)V

    return-void
.end method
