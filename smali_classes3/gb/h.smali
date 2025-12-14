.class public final Lgb/h;
.super Lfb/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lgb/h;


# instance fields
.field public final a:Lgb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgb/h;

    sget-object v1, Lgb/f;->n:Lgb/f;

    sget-object v1, Lgb/f;->n:Lgb/f;

    invoke-direct {v0, v1}, Lgb/h;-><init>(Lgb/f;)V

    sput-object v0, Lgb/h;->b:Lgb/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lgb/f;

    invoke-direct {v0}, Lgb/f;-><init>()V

    invoke-direct {p0, v0}, Lgb/h;-><init>(Lgb/f;)V

    return-void
.end method

.method public constructor <init>(Lgb/f;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfb/h;-><init>()V

    iput-object p1, p0, Lgb/h;->a:Lgb/f;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {p0, p1}, Lgb/f;->a(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {v0}, Lgb/f;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {p0}, Lgb/f;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {p0, p1}, Lgb/f;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lgb/h;->a:Lgb/f;

    iget p0, p0, Lgb/f;->i:I

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {p0}, Lgb/f;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgb/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lgb/d;-><init>(Lgb/f;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {p0}, Lgb/f;->c()V

    invoke-virtual {p0, p1}, Lgb/f;->h(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lgb/f;->m(I)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {v0}, Lgb/f;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgb/h;->a:Lgb/f;

    invoke-virtual {v0}, Lgb/f;->c()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
