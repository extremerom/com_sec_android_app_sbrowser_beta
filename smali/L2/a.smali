.class public final LL2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/f;


# static fields
.field public static final b:LE5/v;


# instance fields
.field public final a:LL2/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE5/v;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, LL2/a;->b:LE5/v;

    return-void
.end method

.method public constructor <init>(LL2/w;)V
    .locals 1

    const-string v0, "connectionWrapper"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/a;->a:LL2/w;

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

    sget-object p0, LL2/a;->b:LE5/v;

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
