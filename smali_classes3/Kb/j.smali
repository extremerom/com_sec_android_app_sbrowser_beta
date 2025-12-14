.class public final LKb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKb/b;


# instance fields
.field public final a:LGb/i;

.field public final b:Lhc/c;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LGb/i;Lhc/c;Ljava/util/Map;)V
    .locals 1

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKb/j;->a:LGb/i;

    iput-object p2, p0, LKb/j;->b:Lhc/c;

    iput-object p3, p0, LKb/j;->c:Ljava/util/Map;

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LDb/E;

    const/16 p3, 0x8

    invoke-direct {p2, p3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LKb/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LKb/j;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Lhc/c;
    .locals 0

    iget-object p0, p0, LKb/j;->b:Lhc/c;

    return-object p0
.end method

.method public final e()LJb/S;
    .locals 0

    sget-object p0, LJb/S;->L:LJb/T;

    return-object p0
.end method

.method public final getType()Lyc/w;
    .locals 1

    iget-object p0, p0, LKb/j;->d:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/w;

    return-object p0
.end method
