.class public final Lo9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public final c:Lo9/f;

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo9/e;->a:Ljava/util/ArrayList;

    new-instance v0, Lo9/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lo9/f;-><init>(FFF)V

    iput-object v0, p0, Lo9/e;->c:Lo9/f;

    return-void
.end method


# virtual methods
.method public final varargs a([Lo9/f;)V
    .locals 2

    iget-object v0, p0, Lo9/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lo9/e;->b:I

    invoke-static {v0, p1}, Lfb/t;->r(Ljava/util/List;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    new-instance p0, LM0/e;

    const/16 p1, 0xb

    invoke-direct {p0, p1}, LM0/e;-><init>(I)V

    invoke-static {v0, p0}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
