.class public final Lh6/b;
.super Lf1/d0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field public c:I

.field public final d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf1/d0;-><init>(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lh6/b;->d:[I

    iput-object p1, p0, Lh6/b;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onEnd(Lf1/l0;)V
    .locals 0

    iget-object p1, p1, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {p1}, Lf1/k0;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p0, p0, Lh6/b;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public final onPrepare(Lf1/l0;)V
    .locals 1

    iget-object p1, p1, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {p1}, Lf1/k0;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh6/b;->a:Landroid/view/View;

    iget-object v0, p0, Lh6/b;->d:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    aget p1, v0, p1

    iput p1, p0, Lh6/b;->b:I

    :cond_0
    return-void
.end method

.method public final onProgress(Lf1/w0;Ljava/util/List;)Lf1/w0;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/l0;

    iget-object v1, v0, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {v1}, Lf1/k0;->c()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget p2, p0, Lh6/b;->c:I

    iget-object v0, v0, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {v0}, Lf1/k0;->b()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lb6/a;->c(FII)I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lh6/b;->a:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-object p1
.end method

.method public final onStart(Lf1/l0;Lf1/c0;)Lf1/c0;
    .locals 2

    iget-object p1, p1, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {p1}, Lf1/k0;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh6/b;->a:Landroid/view/View;

    iget-object v0, p0, Lh6/b;->d:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lh6/b;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lh6/b;->c:I

    int-to-float p0, v1

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-object p2
.end method
