.class public final Landroidx/lifecycle/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements LNc/B;


# instance fields
.field public final a:Lib/h;


# direct methods
.method public constructor <init>(Lib/h;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/h;->a:Lib/h;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/lifecycle/h;->a:Lib/h;

    invoke-static {p0, v0}, LNc/E;->i(Lib/h;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final v()Lib/h;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/h;->a:Lib/h;

    return-object p0
.end method
