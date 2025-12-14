.class public final Lr4/a;
.super Lr4/c;
.source "SourceFile"


# instance fields
.field public j:F


# direct methods
.method public varargs constructor <init>([Lv4/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Lr4/d;->a:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lr4/d;->b:F

    iput v0, p0, Lr4/d;->c:F

    iput v1, p0, Lr4/d;->d:F

    iput v0, p0, Lr4/d;->e:F

    iput v1, p0, Lr4/d;->f:F

    iput v0, p0, Lr4/d;->g:F

    iput v1, p0, Lr4/d;->h:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lr4/d;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lr4/d;->a()V

    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lr4/a;->j:F

    return-void
.end method
