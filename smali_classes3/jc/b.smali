.class public final Ljc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljc/c;


# static fields
.field public static final b:Ljc/b;

.field public static final c:Ljc/b;

.field public static final d:Ljc/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljc/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljc/b;-><init>(I)V

    sput-object v0, Ljc/b;->b:Ljc/b;

    new-instance v0, Ljc/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljc/b;-><init>(I)V

    sput-object v0, Ljc/b;->c:Ljc/b;

    new-instance v0, Ljc/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljc/b;-><init>(I)V

    sput-object v0, Ljc/b;->d:Ljc/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljc/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(LJb/i;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LG5/W3;->f(Lhc/f;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, LJb/W;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object p0

    const-string v1, "getContainingDeclaration(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, LJb/f;

    if-eqz v1, :cond_1

    check-cast p0, LJb/i;

    invoke-static {p0}, Ljc/b;->b(LJb/i;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p0, LJb/H;

    if-eqz v1, :cond_2

    check-cast p0, LJb/H;

    check-cast p0, LMb/D;

    iget-object p0, p0, LMb/D;->f:Lhc/c;

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhc/d;->e(Lhc/d;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LG5/W3;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(LJb/i;Ljc/j;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Ljc/b;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "renderer"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljc/b;->b(LJb/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "renderer"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LJb/W;

    if-eqz p0, :cond_0

    check-cast p1, LJb/W;

    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    const-string p1, "getName(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p1

    instance-of p2, p1, LJb/f;

    if-nez p2, :cond_1

    new-instance p1, Lfb/E;

    invoke-direct {p1, p0}, Lfb/E;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1}, LG5/W3;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    const-string p0, "renderer"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LJb/W;

    if-eqz p0, :cond_2

    check-cast p1, LJb/W;

    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    const-string p1, "getName(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object p0

    const-string p1, "getFqName(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhc/d;->e(Lhc/d;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LG5/W3;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
