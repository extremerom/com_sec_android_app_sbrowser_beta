.class public final Landroidx/fragment/app/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Landroidx/fragment/app/J0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/fragment/app/J0;->INVISIBLE:Landroidx/fragment/app/J0;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/H0;->b(I)Landroidx/fragment/app/J0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(I)Landroidx/fragment/app/J0;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/fragment/app/J0;->GONE:Landroidx/fragment/app/J0;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown visibility "

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Landroidx/fragment/app/J0;->INVISIBLE:Landroidx/fragment/app/J0;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/fragment/app/J0;->VISIBLE:Landroidx/fragment/app/J0;

    :goto_0
    return-object p0
.end method
