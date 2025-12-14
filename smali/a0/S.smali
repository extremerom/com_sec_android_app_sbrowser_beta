.class public final La0/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/q0;


# instance fields
.field public final a:Lsb/n;

.field public final b:LUc/e;

.field public c:LNc/C0;


# direct methods
.method public constructor <init>(Lib/h;Lsb/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La0/S;->a:Lsb/n;

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    iput-object p1, p0, La0/S;->b:LUc/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, La0/S;->c:LNc/C0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Old job was still running!"

    invoke-static {v2, v1}, LNc/E;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v2

    invoke-virtual {v0, v2}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x3

    iget-object v2, p0, La0/S;->a:Lsb/n;

    iget-object v3, p0, La0/S;->b:LUc/e;

    invoke-static {v3, v1, v1, v2, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v0

    iput-object v0, p0, La0/S;->c:LNc/C0;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, La0/S;->c:LNc/C0;

    if-eqz v0, :cond_0

    new-instance v1, La0/U;

    invoke-direct {v1}, La0/U;-><init>()V

    invoke-virtual {v0, v1}, LNc/t0;->C(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La0/S;->c:LNc/C0;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, La0/S;->c:LNc/C0;

    if-eqz v0, :cond_0

    new-instance v1, La0/U;

    invoke-direct {v1}, La0/U;-><init>()V

    invoke-virtual {v0, v1}, LNc/t0;->C(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La0/S;->c:LNc/C0;

    return-void
.end method
