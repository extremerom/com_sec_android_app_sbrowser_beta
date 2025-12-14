.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0003)*+B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J7\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJJ\u0010 \u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0086\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010\"\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\"\u0010#R\u0017\u0010%\u001a\u00020$8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;",
        "",
        "<init>",
        "()V",
        "",
        "iconType",
        "Landroid/graphics/Bitmap;",
        "bitmapValue",
        "",
        "isValidIcon",
        "(Ljava/lang/Integer;Landroid/graphics/Bitmap;)Z",
        "isExistInCache",
        "(Landroid/graphics/Bitmap;)Z",
        "Landroid/content/Context;",
        "context",
        "bitmap",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/widget/ImageView;",
        "imageView",
        "Ldb/r;",
        "setIcon",
        "(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/ImageView;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "item",
        "",
        "dominantColor",
        "setDominantIcon",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;JLandroid/widget/TextView;Landroid/widget/ImageView;)V",
        "",
        "url",
        "iconSize",
        "invoke",
        "(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V",
        "setDominantText",
        "(Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;Landroid/widget/TextView;)V",
        "",
        "iconTypes",
        "[I",
        "getIconTypes",
        "()[I",
        "CacheIconLoader",
        "NativeIconLoader",
        "Loader",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final iconTypes:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->iconTypes:[I

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isValidIcon(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;Ljava/lang/Integer;Landroid/graphics/Bitmap;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->isValidIcon(Ljava/lang/Integer;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDominantIcon(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;JLandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->setDominantIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;JLandroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final synthetic access$setIcon(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->setIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private final isExistInCache(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isValidIcon(Ljava/lang/Integer;Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/16 p1, 0x39

    if-lt p0, p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final setDominantIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;JLandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f080324

    invoke-virtual {p6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    const p3, 0x7f060bcd

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p6, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p2, p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->setDominantText(Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;Landroid/widget/TextView;)V

    return-void
.end method

.method private final setIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p4, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p0, 0x8

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getIconTypes()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->iconTypes:[I

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v1, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v2, p7

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getBackgroundColor()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getBackgroundColor()I

    move-result v0

    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->setDominantIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;JLandroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v3, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v4, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :cond_1
    move-object v13, v7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getDominantColorFromMemCache(Ljava/lang/String;)J

    move-result-wide v11

    const-string v0, "dominantColor : "

    const-string v7, "HistoryItemListAdapter"

    invoke-static {v11, v12, v0, v7}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct {p0, v13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->isExistInCache(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;

    move-object v7, v0

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;-><init>(IILjava/lang/String;JLandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;

    move-object v7, v0

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;-><init>(IILjava/lang/String;JLandroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v0, p1, v5, v6, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;->load(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V

    return-void

    :cond_3
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final setDominantText(Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "item"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "textView"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "getDefault(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toUpperCase(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
