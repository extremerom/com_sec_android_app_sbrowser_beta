.class public final LNc/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/f;
.implements Lib/g;


# static fields
.field public static final a:LNc/M0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNc/M0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LNc/M0;->a:LNc/M0;

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

.method public final getKey()Lib/g;
    .locals 0

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
