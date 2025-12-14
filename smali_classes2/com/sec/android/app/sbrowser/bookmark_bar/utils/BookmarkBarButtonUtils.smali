.class public Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarButtonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getMaxWidthPxForTitleView(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x168

    if-ge v0, v1, :cond_0

    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    const v0, 0x7f0701d5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f0701d4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
