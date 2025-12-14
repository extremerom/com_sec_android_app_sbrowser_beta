.class public final LQc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final a:LQc/h;


# direct methods
.method public constructor <init>(LQc/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/g;->a:LQc/h;

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ltb/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, LRc/c;->b:LQ6/i;

    iput-object v1, v0, Ltb/w;->a:Ljava/lang/Object;

    new-instance v1, LL2/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, LL2/k;-><init>(Ljava/lang/Object;Ljava/io/Serializable;LQc/i;I)V

    iget-object p0, p0, LQc/g;->a:LQc/h;

    invoke-interface {p0, v1, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
