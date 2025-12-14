.class public final LNc/v0;
.super LNc/C0;
.source "SourceFile"


# instance fields
.field public final d:Lib/c;


# direct methods
.method public constructor <init>(Lib/h;Lsb/n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LNc/a;-><init>(Lib/h;Z)V

    invoke-static {p0, p0, p2}, LG5/U3;->a(Lib/c;Lib/c;Lsb/n;)Lib/c;

    move-result-object p1

    iput-object p1, p0, LNc/v0;->d:Lib/c;

    return-void
.end method


# virtual methods
.method public final b0()V
    .locals 3

    iget-object v0, p0, LNc/v0;->d:Lib/c;

    :try_start_0
    invoke-static {v0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LUc/a;->i(Lib/c;Ljava/lang/Object;Lsb/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v1

    invoke-virtual {p0, v1}, LNc/a;->resumeWith(Ljava/lang/Object;)V

    throw v0
.end method
