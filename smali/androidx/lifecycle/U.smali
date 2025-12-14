.class public final Landroidx/lifecycle/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/j;

.field public final b:Lib/h;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/j;Lib/h;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/U;->a:Landroidx/lifecycle/j;

    sget-object p1, LNc/N;->a:LWc/f;

    sget-object p1, LUc/q;->a:LNc/w0;

    invoke-virtual {p1}, LNc/w0;->K()LNc/w0;

    move-result-object p1

    invoke-interface {p2, p1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/U;->b:Lib/h;

    return-void
.end method
