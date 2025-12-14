.class public final La0/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/W;


# static fields
.field public static final a:La0/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La0/t0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La0/t0;->a:La0/t0;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->e(Lib/f;Lib/g;)Lib/f;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->g(Lib/f;Lib/g;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lib/h;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->h(Lib/f;Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 2

    sget-object p0, LNc/N;->a:LWc/f;

    sget-object p0, LUc/q;->a:LNc/w0;

    new-instance v0, La0/s0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, La0/s0;-><init>(Lib/c;Lsb/k;)V

    invoke-static {p0, v0, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
