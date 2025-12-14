.class public final synthetic LSb/s;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LSb/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LSb/s;

    const-string v5, "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;"

    const/4 v2, 0x1

    const/4 v1, 0x1

    const-class v3, LSb/q;

    const-string v4, "getDefaultReportLevelForAnnotation"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LSb/s;->a:LSb/s;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lhc/c;

    const-string p0, "p0"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LSb/q;->a:Lhc/c;

    sget-object p0, LSb/A;->N:LSb/z;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LSb/z;->b:Lt9/c;

    new-instance v0, Ldb/e;

    const/16 v1, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Ldb/e;-><init>(III)V

    const-string v1, "configuredReportLevels"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast p0, Lxc/j;

    invoke-virtual {p0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LSb/C;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LSb/q;->c:Lt9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast p0, Lxc/j;

    invoke-virtual {p0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LSb/r;

    if-nez p0, :cond_1

    sget-object p0, LSb/C;->IGNORE:LSb/C;

    goto :goto_0

    :cond_1
    iget-object p1, p0, LSb/r;->b:Ldb/e;

    if-eqz p1, :cond_2

    iget p1, p1, Ldb/e;->d:I

    iget v0, v0, Ldb/e;->d:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_2

    iget-object p0, p0, LSb/r;->c:LSb/C;

    goto :goto_0

    :cond_2
    iget-object p0, p0, LSb/r;->a:LSb/C;

    :goto_0
    return-object p0
.end method
