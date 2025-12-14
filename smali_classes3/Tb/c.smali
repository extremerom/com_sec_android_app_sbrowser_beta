.class public abstract LTb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/f;

.field public static final b:Lhc/f;

.field public static final c:Lhc/f;

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "message"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LTb/c;->a:Lhc/f;

    const-string v0, "allowedTargets"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LTb/c;->b:Lhc/f;

    const-string v0, "value"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LTb/c;->c:Lhc/f;

    sget-object v0, LGb/p;->t:Lhc/c;

    sget-object v1, LSb/x;->c:Lhc/c;

    new-instance v2, Ldb/j;

    invoke-direct {v2, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/p;->w:Lhc/c;

    sget-object v1, LSb/x;->d:Lhc/c;

    new-instance v3, Ldb/j;

    invoke-direct {v3, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/p;->x:Lhc/c;

    sget-object v1, LSb/x;->f:Lhc/c;

    new-instance v4, Ldb/j;

    invoke-direct {v4, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LTb/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lhc/c;LYb/b;Lo3/i;)LUb/i;
    .locals 2

    const-string v0, "kotlinName"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LGb/p;->m:Lhc/c;

    invoke-virtual {p0, v0}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LSb/x;->e:Lhc/c;

    const-string v1, "DEPRECATED_ANNOTATION"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, LYb/b;->a(Lhc/c;)LPb/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LTb/g;

    invoke-direct {p0, v0, p2}, LTb/g;-><init>(LPb/d;Lo3/i;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, LTb/c;->d:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc/c;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, LYb/b;->a(Lhc/c;)LPb/d;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, LTb/c;->b(LPb/d;Lo3/i;Z)LUb/i;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static b(LPb/d;Lo3/i;Z)LUb/i;
    .locals 3

    const-string v0, "annotation"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LPb/d;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v0

    invoke-static {v0}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v0

    sget-object v1, LSb/x;->c:Lhc/c;

    const-string v2, "TARGET_ANNOTATION"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, LTb/j;

    invoke-direct {p2, p0, p1}, LTb/j;-><init>(LPb/d;Lo3/i;)V

    goto :goto_0

    :cond_0
    sget-object v1, LSb/x;->d:Lhc/c;

    const-string v2, "RETENTION_ANNOTATION"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, LTb/i;

    invoke-direct {p2, p0, p1}, LTb/i;-><init>(LPb/d;Lo3/i;)V

    goto :goto_0

    :cond_1
    sget-object v1, LSb/x;->f:Lhc/c;

    const-string v2, "DOCUMENTED_ANNOTATION"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, LTb/b;

    sget-object v0, LGb/p;->x:Lhc/c;

    invoke-direct {p2, p1, p0, v0}, LTb/b;-><init>(Lo3/i;LPb/d;Lhc/c;)V

    goto :goto_0

    :cond_2
    sget-object v1, LSb/x;->e:Lhc/c;

    const-string v2, "DEPRECATED_ANNOTATION"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, LWb/f;

    invoke-direct {v0, p0, p1, p2}, LWb/f;-><init>(LPb/d;Lo3/i;Z)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method
