.class public final Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0008J-\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0008J\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0008J\u0017\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0008J1\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u000f\u0010!\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008%\u0010&J)\u0010(\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\n2\u0008\u0008\u0002\u0010\'\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008(\u0010)J9\u0010(\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\'\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008(\u0010*J;\u0010-\u001a\u00020,2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n2\u0008\u0008\u0002\u0010+\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008/\u0010\u001bJ\u0017\u00101\u001a\u00020\n2\u0006\u00100\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u00081\u0010\u001bJ\u0017\u00102\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u00082\u0010\u001bJ1\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00104\u001a\u0002032\u0006\u0010\u0013\u001a\u00020\n2\u0008\u0008\u0002\u00105\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u00087\u00108J;\u0010>\u001a\u0002032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u0002032\u0008\u0010<\u001a\u0004\u0018\u0001032\u0008\u0010=\u001a\u0004\u0018\u000103H\u0007\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u000209H\u0007\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010B\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u001f\u0010D\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010G\u001a\u00020\n2\u0006\u0010F\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008G\u0010\u001bR\u0014\u0010H\u001a\u0002038\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0014\u0010J\u001a\u0002038\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008J\u0010IR\u0014\u0010K\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0014\u0010M\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008M\u0010LR\u001a\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\n0N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u001a\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\n0N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010P\u00a8\u0006R"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "isWhiteWallPaper",
        "(Landroid/content/Context;)Z",
        "isWallpaperSupported",
        "",
        "alphaValue",
        "matchDarkMode",
        "colorMode",
        "isDarkFontRequiredwithWallPaper",
        "(Landroid/content/Context;IZI)Z",
        "isNightModeEnabled",
        "isWidgetTabletLayoutRequired",
        "isMainScreenFoldDevice",
        "widgetId",
        "colorRes",
        "transparency",
        "Ls0/b;",
        "getWidgetBackgroundColorWithAlpha-wmQWz5c",
        "(Landroid/content/Context;III)J",
        "getWidgetBackgroundColorWithAlpha",
        "getLowMemoryDeviceWidgetTransparency",
        "(I)I",
        "Landroid/os/Bundle;",
        "bundle",
        "calculateWidth",
        "(Landroid/os/Bundle;)I",
        "calculateHeight",
        "shouldShowNewWidget",
        "()Z",
        "appWidgetId",
        "Ldb/r;",
        "sendBroadcastForUpdate",
        "(Landroid/content/Context;I)V",
        "backgroundEnabled",
        "isDarkFontRequired",
        "(Landroid/content/Context;IZ)Z",
        "(Landroid/content/Context;IIZZ)Z",
        "isCalledFromProvider",
        "",
        "getCalculatedAlphaValue",
        "(Landroid/content/Context;IIZI)F",
        "getProgressFromTransparency",
        "progress",
        "getTransparencyFromProgress",
        "getNewTransparencyFromOldWidgetTransparency",
        "",
        "text",
        "isDarkFontNeeded",
        "Landroid/text/SpannableStringBuilder;",
        "modifyShadowText",
        "(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;",
        "",
        "id",
        "title",
        "guid",
        "sync4",
        "getUpdatedStrings",
        "(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "getDefaultBookmarkIdForWidget",
        "()J",
        "isExpressWidgetFromSmartPage",
        "(I)Z",
        "getWidgetBackground",
        "(Landroid/content/Context;I)I",
        "dp",
        "getCellsCount",
        "GET_COL_SPAN_KEY",
        "Ljava/lang/String;",
        "GET_ROW_SPAN_KEY",
        "EXPRESSION_COEFFICIENT_VALUE",
        "I",
        "EXPRESSION_CORRECTION_VALUE",
        "",
        "newBookmarkWidgetTransparencyArray",
        "[Ljava/lang/Integer;",
        "lowMemoryDeviceTransparencyArray",
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

.field private static final EXPRESSION_COEFFICIENT_VALUE:I

.field private static final EXPRESSION_CORRECTION_VALUE:I

.field private static final GET_COL_SPAN_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GET_ROW_SPAN_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lowMemoryDeviceTransparencyArray:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    const-string v0, "semAppWidgetColumnSpan"

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->GET_COL_SPAN_KEY:Ljava/lang/String;

    const-string v0, "semAppWidgetRowSpan"

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->GET_ROW_SPAN_KEY:Ljava/lang/String;

    const/16 v0, 0x46

    sput v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->EXPRESSION_COEFFICIENT_VALUE:I

    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->EXPRESSION_CORRECTION_VALUE:I

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->lowMemoryDeviceTransparencyArray:[Ljava/lang/Integer;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCalculatedAlphaValue(Landroid/content/Context;IIZI)F
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isExpressWidgetFromSmartPage(I)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getBackground(I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v3, 0x64

    const/16 v4, 0x32

    if-eqz p3, :cond_3

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_2

    :goto_0
    int-to-float p0, v3

    int-to-float p1, p1

    sub-float/2addr p0, p1

    div-float v2, p0, v1

    goto :goto_2

    :cond_2
    move v2, p2

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    if-eq p4, p3, :cond_5

    const/4 p3, 0x2

    if-ne p4, p3, :cond_4

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_2

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    int-to-float p0, v3

    int-to-float p1, p1

    sub-float/2addr p0, p1

    div-float/2addr p0, v1

    const p1, 0x3d4ccccd    # 0.05f

    sub-float v2, p0, p1

    goto :goto_2

    :cond_6
    const v2, 0x3e4ccccd    # 0.2f

    :cond_7
    :goto_2
    return v2
.end method

.method public static synthetic getCalculatedAlphaValue$default(Landroid/content/Context;IIZIILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getColorMode(I)I

    move-result p4

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getCalculatedAlphaValue(Landroid/content/Context;IIZI)F

    move-result p0

    return p0
.end method

.method private final getCellsCount(I)I
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->EXPRESSION_CORRECTION_VALUE:I

    add-int/2addr p1, p0

    sget p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->EXPRESSION_COEFFICIENT_VALUE:I

    div-int/2addr p1, p0

    return p1
.end method

.method public static final getDefaultBookmarkIdForWidget()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getNewTransparencyFromOldWidgetTransparency(I)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x3c

    if-lt p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getProgressFromTransparency(I)I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    int-to-float p0, p0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p0, v0

    invoke-static {p0}, LG5/p2;->e(F)I

    move-result p0

    rsub-int/lit8 v1, p0, 0xa

    :goto_0
    return v1
.end method

.method public static final getTransparencyFromProgress(I)I
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, LG5/p2;->e(F)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x64

    :goto_0
    return p0
.end method

.method public static final getUpdatedStrings(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f140284

    if-eqz p4, :cond_8

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "mobile"

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "menu"

    const-string v4, "toolbar"

    if-nez v2, :cond_1

    invoke-virtual {p4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "unfiled"

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p2, -0x43f47485

    if-eq p1, p2, :cond_6

    const p2, -0x3fb56f5e

    if-eq p1, p2, :cond_4

    const p2, 0x33155f

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140283

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140286

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140285

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_1
    return-object p0

    :cond_8
    :goto_2
    sget-object p4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v1

    cmp-long p4, p1, v1

    if-nez p4, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    const-wide/16 v0, -0x5

    cmp-long p1, p1, v0

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14090a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14025e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->isMobileOrPcBookmarkBarSync4(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14024d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_c
    :goto_3
    return-object p3
.end method

.method private final getWidgetBackground(Landroid/content/Context;I)I
    .locals 2

    const/4 p0, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired$default(Landroid/content/Context;IZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f0609a0

    goto :goto_0

    :cond_0
    const p0, 0x7f06099f

    :goto_0
    return p0
.end method

.method public static synthetic getWidgetBackgroundColorWithAlpha-wmQWz5c$default(Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;Landroid/content/Context;IIIILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getWidgetBackground(Landroid/content/Context;I)I

    move-result p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isExpressWidgetFromSmartPage(I)Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    array-length p5, p4

    add-int/lit8 p5, p5, -0x1

    aget-object p4, p4, p5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isLowMemoryOneUI7Device(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getTransparency(I)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getLowMemoryDeviceWidgetTransparency(I)I

    move-result p4

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getTransparency(I)I

    move-result p4

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getWidgetBackgroundColorWithAlpha-wmQWz5c(Landroid/content/Context;III)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final isDarkFontRequired(Landroid/content/Context;IIZZ)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz p4, :cond_2

    const/4 p0, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    :goto_0
    move p0, p2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_5

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    if-ne p1, v1, :cond_3

    sget-object p1, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWhiteWallPaper(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_3
    sget-object p4, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {p4, p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequiredwithWallPaper(Landroid/content/Context;IZI)Z

    move-result p0

    goto :goto_1

    :cond_4
    sget-object p4, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {p4, p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequiredwithWallPaper(Landroid/content/Context;IZI)Z

    move-result p0

    :cond_5
    :goto_1
    return p0
.end method

.method public static final isDarkFontRequired(Landroid/content/Context;IZ)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getColorMode(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getTransparency(I)I

    move-result v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getDarkMode(I)Z

    move-result p1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IIZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic isDarkFontRequired$default(Landroid/content/Context;IZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method private final isExpressWidgetFromSmartPage(I)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "oneUiWidgetSource"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "com.samsung.android.app.spage"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final modifyShadowText(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    if-nez p3, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getTransparency(I)I

    move-result p2

    const/16 p3, 0x64

    if-ne p2, p3, :cond_0

    const p2, 0x7f1507d7

    goto :goto_0

    :cond_0
    const p2, 0x7f1507cd

    :goto_0
    invoke-direct {v1, p0, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x21

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p2, p0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static synthetic modifyShadowText$default(Landroid/content/Context;Ljava/lang/String;IZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x4

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static {p0, p2, p5, p3, p4}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired$default(Landroid/content/Context;IZILjava/lang/Object;)Z

    move-result p3

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->modifyShadowText(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final sendBroadcastForUpdate(Landroid/content/Context;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sec.android.app.sbrowser.beta.bookmark.widget.update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final shouldShowNewWidget()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x11170

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final calculateHeight(Landroid/os/Bundle;)I
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->GET_ROW_SPAN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appWidgetMinHeight"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_0

    const-string p0, "WidgetSettingUtils"

    const-string p1, "[calculateHeight] height from semAppWidgetRowSpan"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getCellsCount(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final calculateWidth(Landroid/os/Bundle;)I
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->GET_COL_SPAN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appWidgetMinWidth"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_0

    const-string p0, "WidgetSettingUtils"

    const-string p1, "[calculateWidth] width from semAppWidgetColumnSpan"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getCellsCount(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getLowMemoryDeviceWidgetTransparency(I)I
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->newBookmarkWidgetTransparencyArray:[Ljava/lang/Integer;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->lowMemoryDeviceTransparencyArray:[Ljava/lang/Integer;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->lowMemoryDeviceTransparencyArray:[Ljava/lang/Integer;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->lowMemoryDeviceTransparencyArray:[Ljava/lang/Integer;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Invalid transparency level"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getWidgetBackgroundColorWithAlpha-wmQWz5c(Landroid/content/Context;III)J
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Ls0/e;->b(I)J

    move-result-wide p0

    const/16 p2, 0x64

    int-to-float p2, p2

    int-to-float p3, p4

    sub-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-static {p0, p1, p2}, Ls0/b;->a(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public final isDarkFontRequiredwithWallPaper(Landroid/content/Context;IZI)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWhiteWallPaper(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x32

    if-eqz p0, :cond_2

    if-eqz p3, :cond_2

    if-eqz v0, :cond_1

    if-le p2, v2, :cond_1

    :cond_0
    :goto_0
    move p1, v1

    :cond_1
    move v1, p1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_4

    if-eq p4, v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_1

    if-lt p2, v2, :cond_1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    if-ge p2, v2, :cond_1

    goto :goto_0

    :goto_1
    return v1
.end method

.method public final isMainScreenFoldDevice(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDisplayTypeMain(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNightModeEnabled(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWallpaperSupported(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "WallpaperManager is not supported:"

    const-string v0, "WidgetSettingUtils"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isWhiteWallPaper(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWallpaperSupported(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "need_dark_font"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method public final isWidgetTabletLayoutRequired(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f05000c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
