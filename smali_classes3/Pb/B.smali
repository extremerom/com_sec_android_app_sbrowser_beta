.class public final LPb/B;
.super LPb/r;
.source "SourceFile"

# interfaces
.implements LYb/b;


# instance fields
.field public final a:Ljava/lang/reflect/TypeVariable;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 1

    const-string v0, "typeVariable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    return-void
.end method


# virtual methods
.method public final a(Lhc/c;)LPb/d;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    instance-of v0, p0, Ljava/lang/reflect/AnnotatedElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, LG5/q;->b([Ljava/lang/annotation/Annotation;Lhc/c;)LPb/d;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LPb/B;

    if-eqz v0, :cond_0

    check-cast p1, LPb/B;

    iget-object p1, p1, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    iget-object p0, p0, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, LPb/B;

    const-string v2, ": "

    invoke-static {v1, v0, v2}, LV0/c;->t(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    instance-of v0, p0, Ljava/lang/reflect/AnnotatedElement;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, LG5/q;->d([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lfb/v;->a:Lfb/v;

    :goto_1
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
