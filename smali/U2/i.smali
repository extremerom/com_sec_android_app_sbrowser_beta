.class public final LU2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LT2/b;

.field public final d:Z

.field public final e:Z

.field public final f:Ldb/o;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LT2/b;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/i;->a:Landroid/content/Context;

    iput-object p2, p0, LU2/i;->b:Ljava/lang/String;

    iput-object p3, p0, LU2/i;->c:LT2/b;

    iput-boolean p4, p0, LU2/i;->d:Z

    iput-boolean p5, p0, LU2/i;->e:Z

    new-instance p1, LJ2/L;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, LJ2/L;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, LU2/i;->f:Ldb/o;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, LU2/i;->f:Ldb/o;

    iget-object v0, v0, Ldb/o;->b:Ljava/lang/Object;

    sget-object v1, Ldb/q;->a:Ldb/q;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, LU2/i;->f:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU2/h;

    invoke-virtual {p0}, LU2/h;->close()V

    :cond_0
    return-void
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LU2/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getWritableDatabase()LT2/a;
    .locals 1

    iget-object p0, p0, LU2/i;->f:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU2/h;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LU2/h;->a(Z)LT2/a;

    move-result-object p0

    return-object p0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, LU2/i;->f:Ldb/o;

    iget-object v0, v0, Ldb/o;->b:Ljava/lang/Object;

    sget-object v1, Ldb/q;->a:Ldb/q;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LU2/i;->f:Ldb/o;

    invoke-virtual {v0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU2/h;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, LU2/i;->g:Z

    return-void
.end method
