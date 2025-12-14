.class public final LQ/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/n;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LQ/I;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(FFLQ/m;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, LQ/m;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG5/d3;->l(II)Lzb/d;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v2, v0

    check-cast v2, Lzb/c;

    iget-boolean v2, v2, Lzb/c;->c:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lzb/c;

    invoke-virtual {v2}, Lzb/c;->b()I

    move-result v2

    new-instance v3, LQ/r;

    invoke-virtual {p3, v2}, LQ/m;->a(I)F

    move-result v2

    invoke-direct {v3, p1, p2, v2}, LQ/r;-><init>(FFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, LQ/I;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public get(I)LQ/r;
    .locals 0

    iget-object p0, p0, LQ/I;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ/r;

    return-object p0
.end method
