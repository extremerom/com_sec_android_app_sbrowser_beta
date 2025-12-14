.class public final LRc/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final a:LPc/y;


# direct methods
.method public constructor <init>(LPc/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRc/K;->a:LPc/y;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LRc/K;->a:LPc/y;

    check-cast p0, LPc/x;

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-interface {p0, p2, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
