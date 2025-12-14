.class public final Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;


# instance fields
.field private final mBottomBarColor:I

.field private final mDefaultToolbarColor:I

.field private final mHasCustomToolbarColor:Z

.field private final mInitialBackgroundColor:I

.field private final mNavigationBarColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mNavigationBarDividerColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mStatusBarColor:I

.field private final mToolbarColor:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->getColorSchemeParams(Landroid/content/Intent;I)LH/b;

    move-result-object p3

    const v0, 0x7f0602d4

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mDefaultToolbarColor:I

    iget-object v0, p3, LH/b;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mHasCustomToolbarColor:Z

    invoke-static {p3, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->retrieveToolbarColor(LH/b;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mToolbarColor:I

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->retrieveBottomBarColor(LH/b;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mBottomBarColor:I

    iget-object v0, p3, LH/b;->c:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mNavigationBarColor:Ljava/lang/Integer;

    iget-object p3, p3, LH/b;->d:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mNavigationBarDividerColor:Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->retrieveStatusBarColor(Landroid/content/Intent;I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mStatusBarColor:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->retrieveInitialBackgroundColor(Landroid/content/Intent;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mInitialBackgroundColor:I

    return-void
.end method

.method private static getColorSchemeParams(Landroid/content/Intent;I)LH/b;
    .locals 0
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, LH/q;->a(Landroid/content/Intent;I)LH/b;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, "CustomTabColorProvider"

    const-string p1, "Failed to parse CustomTabColorSchemeParams"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, LH/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, LH/b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method private static retrieveBottomBarColor(LH/b;I)I
    .locals 0

    iget-object p0, p0, LH/b;->b:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result p0

    return p0
.end method

.method private static retrieveInitialBackgroundColor(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_INITIAL_BACKGROUND_COLOR"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static retrieveStatusBarColor(Landroid/content/Intent;I)I
    .locals 1

    const-string v0, "com.sec.android.app.sbrowser.beta.customtabs.NEW_STATUSBAR_COLOR"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private static retrieveToolbarColor(LH/b;I)I
    .locals 0

    iget-object p0, p0, LH/b;->a:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getBottomBarColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mBottomBarColor:I

    return p0
.end method

.method public getDefaultToolbarColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mDefaultToolbarColor:I

    return p0
.end method

.method public getInitialBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mInitialBackgroundColor:I

    return p0
.end method

.method public getNavigationBarColor()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mNavigationBarColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getNavigationBarDividerColor()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mNavigationBarDividerColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getStatusBarColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mStatusBarColor:I

    return p0
.end method

.method public getToolbarColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mToolbarColor:I

    return p0
.end method

.method public hasCustomToolbarColor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;->mHasCustomToolbarColor:Z

    return p0
.end method
