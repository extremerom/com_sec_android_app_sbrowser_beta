.class public abstract LKb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/f;

.field public static final b:Lhc/f;

.field public static final c:Lhc/f;

.field public static final d:Lhc/f;

.field public static final e:Lhc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "message"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LKb/e;->a:Lhc/f;

    const-string v0, "replaceWith"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LKb/e;->b:Lhc/f;

    const-string v0, "level"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LKb/e;->c:Lhc/f;

    const-string v0, "expression"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LKb/e;->d:Lhc/f;

    const-string v0, "imports"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LKb/e;->e:Lhc/f;

    return-void
.end method

.method public static final a(LGb/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)LKb/j;
    .locals 5

    const-string p4, "<this>"

    invoke-static {p0, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "message"

    invoke-static {p1, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "replaceWith"

    invoke-static {p2, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "level"

    invoke-static {p3, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, LKb/j;

    sget-object v0, LGb/p;->o:Lhc/c;

    new-instance v1, Lmc/x;

    invoke-direct {v1, p2}, Lmc/g;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ldb/j;

    sget-object v2, LKb/e;->d:Lhc/f;

    invoke-direct {p2, v2, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lmc/b;

    sget-object v2, Lfb/v;->a:Lfb/v;

    new-instance v3, LGb/g;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, LGb/g;-><init>(LGb/i;I)V

    invoke-direct {v1, v2, v3}, Lmc/b;-><init>(Ljava/util/List;Lsb/k;)V

    new-instance v2, Ldb/j;

    sget-object v3, LKb/e;->e:Lhc/f;

    invoke-direct {v2, v3, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p2, v2}, [Ldb/j;

    move-result-object p2

    invoke-static {p2}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p4, p0, v0, p2}, LKb/j;-><init>(LGb/i;Lhc/c;Ljava/util/Map;)V

    new-instance p2, LKb/j;

    sget-object v0, LGb/p;->m:Lhc/c;

    new-instance v1, Lmc/x;

    invoke-direct {v1, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ldb/j;

    sget-object v2, LKb/e;->a:Lhc/f;

    invoke-direct {p1, v2, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lmc/a;

    invoke-direct {v1, p4}, Lmc/g;-><init>(Ljava/lang/Object;)V

    new-instance p4, Ldb/j;

    sget-object v2, LKb/e;->b:Lhc/f;

    invoke-direct {p4, v2, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lmc/i;

    sget-object v2, LGb/p;->n:Lhc/c;

    const-string v3, "topLevelFqName"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lhc/b;

    invoke-virtual {v2}, Lhc/c;->b()Lhc/c;

    move-result-object v4

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->f()Lhc/f;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-static {p3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p3

    invoke-direct {v1, v3, p3}, Lmc/i;-><init>(Lhc/b;Lhc/f;)V

    new-instance p3, Ldb/j;

    sget-object v2, LKb/e;->c:Lhc/f;

    invoke-direct {p3, v2, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p1, p4, p3}, [Ldb/j;

    move-result-object p1

    invoke-static {p1}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, LKb/j;-><init>(LGb/i;Lhc/c;Ljava/util/Map;)V

    return-object p2
.end method
