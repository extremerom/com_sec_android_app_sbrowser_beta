.class public final LSb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkc/f;
    .locals 0

    sget-object p0, Lkc/f;->BOTH:Lkc/f;

    return-object p0
.end method

.method public b(LJb/b;LJb/b;LJb/f;)Lkc/g;
    .locals 0

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, LJb/P;

    if-eqz p0, :cond_5

    instance-of p0, p1, LJb/P;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, LJb/P;

    invoke-interface {p2}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    check-cast p1, LJb/P;

    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p3

    invoke-static {p0, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0

    :cond_1
    invoke-static {p2}, LG5/n3;->b(LJb/P;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, LG5/n3;->b(LJb/P;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lkc/g;->OVERRIDABLE:Lkc/g;

    return-object p0

    :cond_2
    invoke-static {p2}, LG5/n3;->b(LJb/P;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1}, LG5/n3;->b(LJb/P;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lkc/g;->INCOMPATIBLE:Lkc/g;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0
.end method
