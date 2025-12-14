.class public final LQc/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i0;
.implements LQc/h;
.implements LRc/D;


# instance fields
.field public final synthetic a:LQc/e0;


# direct methods
.method public constructor <init>(LQc/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/g0;->a:LQc/e0;

    return-void
.end method


# virtual methods
.method public final b(Lib/h;ILPc/a;)LQc/h;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LQc/n0;->r(LQc/i0;Lib/h;ILPc/a;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LQc/g0;->a:LQc/e0;

    invoke-interface {p0, p1, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
