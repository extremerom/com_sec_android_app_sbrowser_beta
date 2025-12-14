.class public final Lhd/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lhd/m;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:LG5/o2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lhd/m;

    invoke-static {v0}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lhd/m;-><init>(Ljava/util/Set;LG5/o2;)V

    sput-object v1, Lhd/m;->c:Lhd/m;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;LG5/o2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd/m;->a:Ljava/util/Set;

    iput-object p2, p0, Lhd/m;->b:LG5/o2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lsb/a;)V
    .locals 0

    const-string p2, "hostname"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lhd/m;->a:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lhd/m;

    if-eqz v0, :cond_0

    check-cast p1, Lhd/m;

    iget-object v0, p1, Lhd/m;->a:Ljava/util/Set;

    iget-object v1, p0, Lhd/m;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lhd/m;->b:LG5/o2;

    iget-object p0, p0, Lhd/m;->b:LG5/o2;

    invoke-static {p1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 1

    iget-object v0, p0, Lhd/m;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x5ed

    mul-int/lit8 v0, v0, 0x29

    iget-object p0, p0, Lhd/m;->b:LG5/o2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
