.class public final Landroidx/fragment/app/A0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Z
    .locals 6

    invoke-static {}, Landroidx/fragment/app/B0;->values()[Landroidx/fragment/app/B0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/fragment/app/B0;->a()I

    move-result v5

    if-eq v5, p0, :cond_1

    invoke-virtual {v4}, Landroidx/fragment/app/B0;->c()I

    move-result v5

    if-eq v5, p0, :cond_1

    invoke-virtual {v4}, Landroidx/fragment/app/B0;->d()I

    move-result v5

    if-eq v5, p0, :cond_1

    invoke-virtual {v4}, Landroidx/fragment/app/B0;->e()I

    move-result v4

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
