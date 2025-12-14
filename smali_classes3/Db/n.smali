.class public final LDb/n;
.super LG5/H;
.source "SourceFile"


# instance fields
.field public final b:LJb/P;

.field public final c:Lcc/I;

.field public final d:Lfc/e;

.field public final e:Lec/g;

.field public final f:LX4/i;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJb/P;Lcc/I;Lfc/e;Lec/g;LX4/i;)V
    .locals 2

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/n;->b:LJb/P;

    iput-object p2, p0, LDb/n;->c:Lcc/I;

    iput-object p3, p0, LDb/n;->d:Lfc/e;

    iput-object p4, p0, LDb/n;->e:Lec/g;

    iput-object p5, p0, LDb/n;->f:LX4/i;

    iget v0, p3, Lfc/e;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object p1, p3, Lfc/e;->e:Lfc/c;

    iget p1, p1, Lfc/c;->c:I

    invoke-interface {p4, p1}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p3, Lfc/e;->e:Lfc/c;

    iget p2, p2, Lfc/c;->d:I

    invoke-interface {p4, p2}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    const/4 p3, 0x1

    invoke-static {p2, p4, p5, p3}, Lgc/h;->b(Lcc/I;Lec/g;LX4/i;Z)Lgc/d;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p2, Lgc/d;->b:Ljava/lang/String;

    invoke-static {p5}, LSb/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p5

    const-string v0, "getContainingDeclaration(...)"

    invoke-static {p5, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/z;->getVisibility()LJb/p;

    move-result-object v0

    sget-object v1, LJb/q;->d:LJb/p;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "$"

    if-eqz v0, :cond_2

    instance-of v0, p5, Lwc/i;

    if-eqz v0, :cond_2

    check-cast p5, Lwc/i;

    sget-object p1, Lfc/k;->i:Lic/o;

    const-string v0, "classModuleName"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p5, Lwc/i;->e:Lcc/k;

    invoke-static {p5, p1}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "main"

    :goto_0
    sget-object p4, Lhc/g;->a:LKc/j;

    iget-object p4, p4, LKc/j;->b:Ljava/lang/Object;

    check-cast p4, Ljava/util/regex/Pattern;

    invoke-virtual {p4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p4, "_"

    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "replaceAll(...)"

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, LJb/z;->getVisibility()LJb/p;

    move-result-object p4

    sget-object v0, LJb/q;->a:LJb/p;

    invoke-static {p4, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    instance-of p4, p5, LJb/H;

    if-eqz p4, :cond_3

    check-cast p1, Lwc/r;

    iget-object p1, p1, Lwc/r;->F:Lac/h;

    if-eqz p1, :cond_3

    iget-object p4, p1, Lac/h;->b:Lpc/b;

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lac/h;->a:Lpc/b;

    invoke-virtual {p1}, Lpc/b;->d()Ljava/lang/String;

    move-result-object p1

    const-string p5, "getInternalName(...)"

    invoke-static {p1, p5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p5, 0x2f

    invoke-static {p5, p1, p1}, LKc/k;->M(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lgc/d;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, LDb/n;->g:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, LDb/z0;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No field signature for property: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LDb/n;->g:Ljava/lang/String;

    return-object p0
.end method
