.class public final Lt1/g;
.super LG5/J;
.source "SourceFile"


# instance fields
.field public final a:Lt1/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt1/f;

    invoke-direct {v0, p1}, Lt1/f;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lt1/g;->a:Lt1/f;

    return-void
.end method


# virtual methods
.method public final b([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/h;->k:Landroidx/emoji2/text/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lt1/g;->a:Lt1/f;

    invoke-virtual {p0, p1}, Lt1/f;->b([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lt1/g;->a:Lt1/f;

    iget-boolean p0, p0, Lt1/f;->c:Z

    return p0
.end method

.method public final e(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/h;->k:Landroidx/emoji2/text/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lt1/g;->a:Lt1/f;

    invoke-virtual {p0, p1}, Lt1/f;->e(Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/h;->k:Landroidx/emoji2/text/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lt1/g;->a:Lt1/f;

    if-nez v0, :cond_1

    iput-boolean p1, p0, Lt1/f;->c:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lt1/f;->f(Z)V

    :goto_1
    return-void
.end method

.method public final g(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/h;->k:Landroidx/emoji2/text/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lt1/g;->a:Lt1/f;

    invoke-virtual {p0, p1}, Lt1/f;->g(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0
.end method
