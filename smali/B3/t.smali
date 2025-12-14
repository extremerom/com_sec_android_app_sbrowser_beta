.class public final LB3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC3/a;
.implements LB3/d;


# instance fields
.field public final a:Lz3/t;

.field public final b:LC3/e;

.field public c:LG3/o;


# direct methods
.method public constructor <init>(Lz3/t;LH3/c;LG3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB3/t;->a:Lz3/t;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p3, LG3/n;->a:LF3/b;

    invoke-virtual {p1}, LF3/b;->f0()LC3/e;

    move-result-object p1

    iput-object p1, p0, LB3/t;->b:LC3/e;

    invoke-virtual {p2, p1}, LH3/c;->g(LC3/e;)V

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    return-void
.end method

.method public static c(II)I
    .locals 2

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, LB3/t;->a:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
