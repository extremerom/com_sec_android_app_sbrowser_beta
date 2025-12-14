.class public final synthetic Lz3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/r;


# instance fields
.field public final synthetic a:Lz3/t;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lz3/t;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/o;->a:Lz3/t;

    iput p2, p0, Lz3/o;->b:I

    iput p3, p0, Lz3/o;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lz3/o;->a:Lz3/t;

    iget-object v1, v0, Lz3/t;->a:Lz3/g;

    iget v2, p0, Lz3/o;->b:I

    iget p0, p0, Lz3/o;->c:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v3, Lz3/o;

    invoke-direct {v3, v0, v2, p0}, Lz3/o;-><init>(Lz3/t;II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    int-to-float v1, v2

    int-to-float p0, p0

    const v2, 0x3f7d70a4    # 0.99f

    add-float/2addr p0, v2

    iget-object v0, v0, Lz3/t;->b:LL3/c;

    invoke-virtual {v0, v1, p0}, LL3/c;->i(FF)V

    :goto_0
    return-void
.end method
