.class public final Lmc/i;
.super Lmc/g;
.source "SourceFile"


# instance fields
.field public final b:Lhc/b;

.field public final c:Lhc/f;


# direct methods
.method public constructor <init>(Lhc/b;Lhc/f;)V
    .locals 1

    new-instance v0, Ldb/j;

    invoke-direct {v0, p1, p2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lmc/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmc/i;->b:Lhc/b;

    iput-object p2, p0, Lmc/i;->c:Lhc/f;

    return-void
.end method


# virtual methods
.method public final a(LJb/C;)Lyc/w;
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lmc/i;->b:Lhc/b;

    invoke-static {p1, v0}, LJb/y;->d(LJb/C;Lhc/b;)LJb/f;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v1, Lkc/e;->a:I

    sget-object v1, LJb/g;->ENUM_CLASS:LJb/g;

    invoke-static {p1, v1}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, LJb/f;->n()Lyc/A;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, LAc/k;->ERROR_ENUM_TYPE:LAc/k;

    invoke-virtual {v0}, Lhc/b;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lmc/i;->c:Lhc/f;

    iget-object p0, p0, Lhc/f;->a:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmc/i;->b:Lhc/b;

    invoke-virtual {v1}, Lhc/b;->f()Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmc/i;->c:Lhc/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
