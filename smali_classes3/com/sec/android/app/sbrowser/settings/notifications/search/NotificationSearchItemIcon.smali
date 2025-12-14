.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setNotificationSearchResultIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationRoundCornersImageView;Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isTouchiconAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getTouchicon()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p0, 0x8

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f06097f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method
