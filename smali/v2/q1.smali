.class public final Lv2/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/B;
.implements LPc/B;


# instance fields
.field public final a:LPc/i;

.field public final synthetic b:LNc/B;


# direct methods
.method public constructor <init>(LNc/B;LPc/i;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv2/q1;->a:LPc/i;

    iput-object p1, p0, Lv2/q1;->b:LNc/B;

    return-void
.end method


# virtual methods
.method public final g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv2/q1;->a:LPc/i;

    invoke-interface {p0, p1, p2}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv2/q1;->a:LPc/i;

    invoke-interface {p0, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lsb/k;)V
    .locals 0

    iget-object p0, p0, Lv2/q1;->a:LPc/i;

    invoke-virtual {p0, p1}, LPc/i;->p(Lsb/k;)V

    return-void
.end method

.method public final v()Lib/h;
    .locals 0

    iget-object p0, p0, Lv2/q1;->b:LNc/B;

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    return-object p0
.end method
