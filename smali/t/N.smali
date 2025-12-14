.class public final Lt/N;
.super LW0/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/ref/WeakReference;

.field public final synthetic h:Lt/P;


# direct methods
.method public constructor <init>(Lt/P;IILjava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/N;->h:Lt/P;

    iput p2, p0, Lt/N;->e:I

    iput p3, p0, Lt/N;->f:I

    iput-object p4, p0, Lt/N;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final j(I)V
    .locals 0

    return-void
.end method

.method public final k(Landroid/graphics/Typeface;)V
    .locals 6

    const/4 v0, -0x1

    iget v1, p0, Lt/N;->e:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lt/N;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    move-object v3, p1

    iget-object p1, p0, Lt/N;->h:Lt/P;

    iget-boolean v0, p1, Lt/P;->n:Z

    if-eqz v0, :cond_4

    iput-object v3, p1, Lt/P;->l:Landroid/graphics/Typeface;

    iget-object p0, p0, Lt/N;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p1, Lt/P;->j:I

    new-instance p1, LH/e;

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget p1, p1, Lt/P;->j:I

    sget-object v0, Lt/O;->a:LN/m;

    invoke-virtual {p0}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lt/O;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0, v0}, Lt/O;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
