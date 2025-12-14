.class public Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsContentDarkMode:Z

.field private mIsHighContrast:Z

.field private mIsIncognito:Z

.field private mIsNightMode:Z

.field private mReaderTheme:I

.field private mTabGroupTheme:I

.field private mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;


# direct methods
.method public constructor <init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsHighContrast:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsNightMode:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsIncognito:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mReaderTheme:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTabGroupTheme:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsContentDarkMode:Z

    return-void
.end method

.method public constructor <init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsHighContrast:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsNightMode:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsIncognito:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mReaderTheme:I

    iput p6, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTabGroupTheme:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsContentDarkMode:Z

    return-void
.end method

.method public constructor <init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsHighContrast:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsNightMode:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsIncognito:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mReaderTheme:I

    iput p6, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTabGroupTheme:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsContentDarkMode:Z

    return-void
.end method


# virtual methods
.method public getReaderTheme()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mReaderTheme:I

    return p0
.end method

.method public getTabGroupTheme()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTabGroupTheme:I

    return p0
.end method

.method public getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    return-object p0
.end method

.method public getThemeColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getThemeColor()I

    move-result p0

    return p0
.end method

.method public hasReaderTheme()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasTheme()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentDarkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsContentDarkMode:Z

    return p0
.end method

.method public isDarkTheme()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isDarkTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighContrast()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsHighContrast:Z

    return p0
.end method

.method public isIncognito()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsIncognito:Z

    return p0
.end method

.method public isLightTheme()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNightMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mIsNightMode:Z

    return p0
.end method

.method public isReaderThemeBlack()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mReaderTheme:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReaderThemeSepia()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->mReaderTheme:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
