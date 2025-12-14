.class public final LR/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/z;


# static fields
.field public static final a:LR/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LR/w;->a:LR/w;

    return-void
.end method


# virtual methods
.method public final a(JILS/e0;)J
    .locals 0

    new-instance p0, Lr0/b;

    invoke-direct {p0, p1, p2}, Lr0/b;-><init>(J)V

    invoke-virtual {p4, p0}, LS/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/b;

    iget-wide p0, p0, Lr0/b;->a:J

    return-wide p0
.end method

.method public final b(JLS/j0;Lib/c;)Ljava/lang/Object;
    .locals 0

    new-instance p0, LH0/o;

    invoke-direct {p0, p1, p2}, LH0/o;-><init>(J)V

    invoke-virtual {p3, p0, p4}, LS/j0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()Lm0/m;
    .locals 0

    sget-object p0, Lm0/j;->a:Lm0/j;

    return-object p0
.end method
