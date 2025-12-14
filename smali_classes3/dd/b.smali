.class public final Ldd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/b;


# instance fields
.field public final a:Lad/b;

.field public final b:Ldd/a;


# direct methods
.method public constructor <init>(Lad/b;)V
    .locals 2

    const-string v0, "element"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd/b;->a:Lad/b;

    new-instance v0, Ldd/a;

    invoke-interface {p1}, Lad/b;->getDescriptor()Lbd/d;

    move-result-object p1

    const-string v1, "elementDesc"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Ldd/a;-><init>(Lbd/d;)V

    iput-object v0, p0, Ldd/b;->b:Ldd/a;

    return-void
.end method


# virtual methods
.method public deserialize(Lcd/a;)Ljava/lang/Object;
    .locals 6

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p0}, Lad/b;->getDescriptor()Lbd/d;

    move-result-object v2

    invoke-interface {p1, v2}, Lcd/a;->a(Lbd/d;)LU9/c;

    move-result-object p1

    :goto_0
    invoke-interface {p0}, Lad/b;->getDescriptor()Lbd/d;

    move-result-object v2

    invoke-virtual {p1, v2}, LU9/c;->e(Lbd/d;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {p0}, Lad/b;->getDescriptor()Lbd/d;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Ldd/b;->a:Lad/b;

    invoke-virtual {p1, v3, v2, v5, v4}, LU9/c;->g(Lbd/d;ILad/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "<this>"

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lad/b;->getDescriptor()Lbd/d;

    move-result-object p0

    invoke-virtual {p1, p0}, LU9/c;->i(Lbd/d;)V

    const-string p0, "<this>"

    invoke-static {v0, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDescriptor()Lbd/d;
    .locals 0

    iget-object p0, p0, Ldd/b;->b:Ldd/a;

    return-object p0
.end method
