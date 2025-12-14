.class public final synthetic Lv2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;
.implements Ltb/g;


# instance fields
.field public final synthetic a:Lv2/q1;


# direct methods
.method public constructor <init>(Lv2/q1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/e0;->a:Lv2/q1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv2/M0;

    iget-object p0, p0, Lv2/e0;->a:Lv2/q1;

    iget-object p0, p0, Lv2/q1;->a:LPc/i;

    invoke-interface {p0, p2, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LQc/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ltb/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv2/e0;->getFunctionDelegate()Ldb/b;

    move-result-object p0

    check-cast p1, Ltb/g;

    invoke-interface {p1}, Ltb/g;->getFunctionDelegate()Ldb/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Ldb/b;
    .locals 8

    new-instance v7, Ltb/j;

    const/4 v1, 0x2

    iget-object v2, p0, Lv2/e0;->a:Lv2/q1;

    const-class v3, Lv2/q1;

    const-string v4, "send"

    const-string v5, "send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ltb/i;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lv2/e0;->getFunctionDelegate()Ldb/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
