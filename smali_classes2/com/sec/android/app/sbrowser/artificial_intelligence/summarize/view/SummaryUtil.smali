.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0008\u0010\u0008\u001a\u00020\u0007H\u0007J\u0008\u0010\t\u001a\u00020\u0007H\u0007J\u0008\u0010\n\u001a\u00020\u0007H\u0007J\u0008\u0010\u000b\u001a\u00020\u0007H\u0007J\u0008\u0010\u000c\u001a\u00020\u0007H\u0007J\u0008\u0010\r\u001a\u00020\u0007H\u0007J\u0008\u0010\u000e\u001a\u00020\u0007H\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0008\u0010\u0012\u001a\u00020\u0007H\u0007J\u0008\u0010\u0013\u001a\u00020\u0007H\u0007J\u0008\u0010\u0014\u001a\u00020\u0007H\u0007J\u0008\u0010\u0015\u001a\u00020\u0007H\u0007J\u0008\u0010\u0016\u001a\u00020\u0007H\u0007J\u0008\u0010\u0017\u001a\u00020\u0007H\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;",
        "",
        "<init>",
        "()V",
        "shouldChangeColorsForReaderMode",
        "",
        "getReaderModeSummaryTitleColor",
        "",
        "getReaderModeTextColor",
        "getReaderModeBackgroundColor",
        "getReaderModeBackgroundResource",
        "getReaderModeHeaderOptionsIconColor",
        "getReaderModeHeaderOptionsIconsBg",
        "getReaderModeContentLayoutBgColor",
        "getReaderModeSummaryCloseIconColor",
        "getReaderModeNavigationBarSummarizeState",
        "Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;",
        "getReaderModeNavigationBarState",
        "getReaderModeProgressAnimationTextColor",
        "getReaderModeSearchSuggestionTitleTextColor",
        "getReaderModeSuggestionDividerColor",
        "getReaderModeSuggestionItemBgColor",
        "getReaderModeSuggestionItemTextColor",
        "getReaderModeBottomButtonsTextColor",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getReaderModeBackgroundColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f060038

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f060037

    goto :goto_0

    :cond_2
    const v0, 0x7f060039

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeBackgroundResource()I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const p0, 0x7f080071

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f080070

    goto :goto_0

    :cond_2
    const p0, 0x7f080072

    :goto_0
    return p0
.end method

.method public final getReaderModeBottomButtonsTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f06003b

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f06003a

    goto :goto_0

    :cond_2
    const v0, 0x7f06003c

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeContentLayoutBgColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f06003e

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f06003d

    goto :goto_0

    :cond_2
    const v0, 0x7f06003f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeHeaderOptionsIconColor()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f06005a

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v2, 0x7f06005b

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeHeaderOptionsIconsBg()I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f08006e

    goto :goto_1

    :cond_2
    :goto_0
    const p0, 0x7f08006f

    :goto_1
    return p0
.end method

.method public final getReaderModeNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_SEPIA:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_BLACK:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_MAIN_VIEW:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_0
    return-object p0
.end method

.method public final getReaderModeNavigationBarSummarizeState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_SEPIA_SUMMARIZE:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_READER_BLACK_SUMMARIZE:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_BAR_SUMMARIZE:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_0
    return-object p0
.end method

.method public final getReaderModeProgressAnimationTextColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBottomButtonsTextColor()I

    move-result p0

    return p0
.end method

.method public final getReaderModeSearchSuggestionTitleTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f060067

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f060066

    goto :goto_0

    :cond_2
    const v0, 0x7f060068

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeSuggestionDividerColor()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f060c1c

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v2, 0x7f060c1d

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeSuggestionItemBgColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f060061

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f060060

    goto :goto_0

    :cond_2
    const v0, 0x7f060062

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeSuggestionItemTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f060064

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f060063

    goto :goto_0

    :cond_2
    const v0, 0x7f060065

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeSummaryCloseIconColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f06006b

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f06006a

    goto :goto_0

    :cond_2
    const v0, 0x7f06006c

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeSummaryTitleColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f06006d

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f06006e

    goto :goto_0

    :cond_2
    const v0, 0x7f060070

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final getReaderModeTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f06006f

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderTheme()I

    move-result v0

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v0, 0x7f06006e

    goto :goto_0

    :cond_2
    const v0, 0x7f060070

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final shouldChangeColorsForReaderMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
