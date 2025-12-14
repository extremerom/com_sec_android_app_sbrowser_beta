.class public final Lf0/k;
.super Lfb/a;
.source "SourceFile"


# instance fields
.field public final a:Lf0/c;


# direct methods
.method public constructor <init>(Lf0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/k;->a:Lf0/c;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lf0/k;->a:Lf0/c;

    invoke-virtual {p0, p1}, Lfb/f;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lf0/k;->a:Lf0/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lf0/c;->b:I

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6

    new-instance v0, Lf0/j;

    iget-object p0, p0, Lf0/k;->a:Lf0/c;

    const/16 v1, 0x8

    new-array v2, v1, [Lf0/m;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lf0/n;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lf0/n;-><init>(I)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf0/c;->a:Lf0/l;

    invoke-direct {v0, p0, v2}, Lf0/d;-><init>(Lf0/l;[Lf0/m;)V

    return-object v0
.end method
