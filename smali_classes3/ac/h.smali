.class public final Lac/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc/k;


# instance fields
.field public final a:Lpc/b;

.field public final b:Lpc/b;

.field public final c:LOb/b;


# direct methods
.method public constructor <init>(LOb/b;Lcc/E;Lgc/f;Lwc/j;)V
    .locals 4

    const-string v0, "kotlinClass"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageProto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p1, LOb/b;->a:Ljava/lang/Class;

    invoke-static {p4}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object p4

    new-instance v0, Lpc/b;

    invoke-static {p4}, Lpc/b;->e(Lhc/b;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Lpc/b;-><init>(Ljava/lang/String;)V

    iget-object p4, p1, LOb/b;->b:Lbc/c;

    iget-object v1, p4, Lbc/c;->c:Ljava/lang/Object;

    check-cast v1, Lbc/b;

    sget-object v2, Lbc/b;->MULTIFILE_CLASS_PART:Lbc/b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object p4, p4, Lbc/c;->h:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p4, v3

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p4}, Lpc/b;->c(Ljava/lang/String;)Lpc/b;

    move-result-object v3

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lac/h;->a:Lpc/b;

    iput-object v3, p0, Lac/h;->b:Lpc/b;

    iput-object p1, p0, Lac/h;->c:LOb/b;

    sget-object p0, Lfc/k;->m:Lic/o;

    const-string p1, "packageModuleName"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p3, p0}, Lgc/f;->getString(I)Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lhc/b;
    .locals 6

    new-instance v0, Lhc/b;

    iget-object p0, p0, Lac/h;->a:Lpc/b;

    iget-object v1, p0, Lpc/b;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x2f

    if-ne v2, v3, :cond_1

    sget-object v1, Lhc/c;->c:Lhc/c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    invoke-static {p0}, Lpc/b;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v3, Lhc/c;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    invoke-virtual {p0}, Lpc/b;->d()Ljava/lang/String;

    move-result-object p0

    const-string v2, "getInternalName(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p0, p0}, LKc/k;->M(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lac/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lac/h;->a:Lpc/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
