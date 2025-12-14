.class public final LQc/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/y0;
.implements LQc/h;
.implements LRc/D;


# instance fields
.field public final synthetic a:LQc/A0;


# direct methods
.method public constructor <init>(LQc/A0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/h0;->a:LQc/A0;

    return-void
.end method


# virtual methods
.method public final b(Lib/h;ILPc/a;)LQc/h;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, LPc/a;->DROP_OLDEST:LPc/a;

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, LQc/n0;->r(LQc/i0;Lib/h;ILPc/a;)LQc/h;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LQc/h0;->a:LQc/A0;

    invoke-virtual {p0, p1, p2}, LQc/A0;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LQc/h0;->a:LQc/A0;

    invoke-virtual {p0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
