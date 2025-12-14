.class public final Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000cH\u0007J\u001c\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetUtils$Companion;",
        "",
        "<init>",
        "()V",
        "SET_COLOR_FILTER",
        "",
        "fetchBookmarkItems",
        "",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
        "context",
        "Landroid/content/Context;",
        "widgetId",
        "",
        "model",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;",
        "createBookmarkItemView",
        "Landroid/widget/RemoteViews;",
        "widgetItem",
        "position",
        "getDominantText",
        "url",
        "title",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetUtils$Companion;-><init>()V

    return-void
.end method

.method private final getDominantText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "substring(...)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toUpperCase(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final createBookmarkItemView(Landroid/content/Context;Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;I)Landroid/widget/RemoteViews;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v6, p1

    const-string v0, "context"

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetItem"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getWidgetId()I

    move-result v0

    const/4 v8, 0x1

    invoke-static {v6, v0, v8}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e005c

    goto :goto_0

    :cond_0
    const v0, 0x7f0e005b

    :goto_0
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getId()J

    move-result-wide v0

    const-string v2, "BOOKMARK_ID"

    invoke-virtual {v10, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "IS_BOOKMARK_ITEM_FOLDER"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isFolder()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "BOOKMARK_ITEM_URL"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    const v1, 0x7f0b0e61

    const/4 v3, 0x0

    const v4, 0x7f0b0e78

    const-string v5, ""

    if-nez p3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isPrevious()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getParentId()J

    move-result-wide v11

    invoke-virtual {v10, v2, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const v2, 0x7f08053e

    invoke-virtual {v9, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v9, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v9, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f08053d

    invoke-virtual {v9, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v9, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v9, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v11, "setColorFilter"

    if-eqz v2, :cond_3

    invoke-virtual {v9, v4, v11, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v9, v4, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v9, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v9, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p0

    invoke-direct {v12, v0, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetUtils$Companion;->getDominantText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toUpperCase(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v0, "substring(...)"

    invoke-static {v5, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v9, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v9, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v9, v4, v11, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v9, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getDominantColor()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v0, v11, v13

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071747

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f071748

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const-string v12, "createBitmap(...)"

    invoke-static {v11, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getDominantColor()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v12, v2, v13}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    int-to-float v0, v0

    invoke-virtual {v12, v2, v0, v0, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual {v9, v4, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_6
    const v0, 0x7f0800d7

    invoke-virtual {v9, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isFolder()Z

    move-result v0

    const-string v2, ", "

    const v11, 0x7f0b0dfa

    if-eqz v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f141081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v3, 0x7f141080

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    const v12, 0x7f0807ef

    const v13, 0x7f0807f0

    const-string v14, "setBackgroundResource"

    const v15, 0x7f0b0191

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f060179

    invoke-virtual {v6, v0}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v9, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getWidgetId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getWidgetId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getBackground(I)Z

    move-result v2

    invoke-static {v6, v1, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f060177

    invoke-virtual {v6, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {v9, v15, v14, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v6, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {v9, v15, v14, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_5

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getWidgetId()I

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->modifyShadowText$default(Landroid/content/Context;Ljava/lang/String;IZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getWidgetId()I

    move-result v0

    invoke-static {v6, v0, v8}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f060176

    invoke-virtual {v6, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {v9, v15, v14, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_5

    :cond_b
    const v0, 0x7f060178

    invoke-virtual {v6, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v11, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {v9, v15, v14, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SBROWSER_BOOKMARK_WIDGET_ITEM_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v9, v15, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v9
.end method

.method public final fetchBookmarkItems(Landroid/content/Context;ILcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;)Ljava/util/List;
    .locals 28
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move/from16 v14, p2

    move-object/from16 v1, p3

    const-string v2, "sbrowser_bookmark_widget_shared_preference_no_"

    const-string v3, "context"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "model"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "getSharedPreferences(...)"

    invoke-static {v2, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "BOOKMARK_ID"

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getDefaultBookmarkIdForWidget()J

    move-result-wide v6

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v18, v15

    goto/16 :goto_4

    :cond_0
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5, v6, v13, v13}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getChildren(JZZ)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getBookmarkItem(J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v5, v3

    const-string v12, "getTitle(...)"

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    :try_start_1
    new-instance v10, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v18

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getUpdatedStrings(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v1

    const/4 v7, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v1, v10

    move-wide v2, v8

    move-wide/from16 v23, v4

    move-wide/from16 v4, v18

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v25, v10

    move-object/from16 v10, v22

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-wide/from16 v11, v23

    move-wide/from16 v18, v15

    move v15, v13

    move/from16 v13, p2

    :try_start_2
    invoke-direct/range {v1 .. v13}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;-><init>(JJLjava/lang/String;Ljava/lang/String;ZZ[BJI)V

    move-object/from16 v1, v25

    move-object/from16 v13, v26

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move-object/from16 v27, v12

    move-wide/from16 v18, v15

    move v15, v13

    move-object v13, v11

    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-string v1, "iterator(...)"

    invoke-static {v11, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    check-cast v16, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    new-instance v12, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v9

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, v27

    invoke-static {v4, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, p1

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getUpdatedStrings(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v1

    int-to-long v4, v1

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v1, v12

    move-wide v2, v7

    move-wide/from16 v24, v4

    move-wide v4, v9

    move-object/from16 v7, v17

    move/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v17, v11

    move-object v15, v12

    move-wide/from16 v11, v24

    move-object v0, v13

    move/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;-><init>(JJLjava/lang/String;Ljava/lang/String;ZZ[BJI)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setFolder(Z)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setFolder(Z)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTouchiconData()[B

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setTouchIcon([B)V

    :goto_3
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v0

    move v15, v1

    move-object/from16 v11, v17

    move-object/from16 v27, v20

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_3
    move-object v0, v13

    sget-object v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    move-object v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v14}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->showNoBookmarksIfNeeded(ZLandroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
