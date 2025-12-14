.class public interface abstract Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    return-void
.end method


# virtual methods
.method public canGoForward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCloseButtonPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultToolbarColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtraStatusBarColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtraTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraTitleColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtraTitleSize()F
    .locals 0

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getMenuTitles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSecurityLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitleVisibilityState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getToolbarColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasExtraStatusBarColor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasExtraTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasExtraTitleColor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasExtraTitleSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasTheme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasToolbarColor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtraRemoveOpenInInternet()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtraRemoveSecurityIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldRemoveMenuItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowShareMenuItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showTitleAfterCompleteLoad()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
