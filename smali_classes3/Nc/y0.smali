.class public final LNc/y0;
.super Lib/a;
.source "SourceFile"

# interfaces
.implements LNc/j0;


# static fields
.field public static final a:LNc/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LNc/y0;

    sget-object v1, LNc/i0;->a:LNc/i0;

    invoke-direct {v0, v1}, Lib/a;-><init>(Lib/g;)V

    sput-object v0, LNc/y0;->a:LNc/y0;

    return-void
.end method


# virtual methods
.method public final B(ZZLJ2/p;)LNc/P;
    .locals 0

    sget-object p0, LNc/z0;->a:LNc/z0;

    return-object p0
.end method

.method public final E()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/util/concurrent/CancellationException;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This job is always active"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getParent()LNc/j0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Lkb/c;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This job is always active"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o(LNc/t0;)LNc/n;
    .locals 0

    sget-object p0, LNc/z0;->a:LNc/z0;

    return-object p0
.end method

.method public final q(Lsb/k;)LNc/P;
    .locals 0

    sget-object p0, LNc/z0;->a:LNc/z0;

    return-object p0
.end method

.method public final start()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonCancellable"

    return-object p0
.end method
