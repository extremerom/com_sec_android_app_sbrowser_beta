.class public Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHomeBgColor:I

.field private mPopupBgColor:I

.field private mPopupDividerColor:I

.field private mPopupItemTitleColor:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupBgColor:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupDividerColor:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupItemTitleColor:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mHomeBgColor:I

    return-void
.end method


# virtual methods
.method public getHomeBgColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mHomeBgColor:I

    return p0
.end method

.method public getPopupBgColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupBgColor:I

    return p0
.end method

.method public getPopupDividerColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupDividerColor:I

    return p0
.end method

.method public getPopupItemTitleColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupItemTitleColor:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuickAccessBackgroundInfo{mPopupBgColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupBgColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPopupDividerColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupDividerColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPopupItemTitleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mPopupItemTitleColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHomeBgColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->mHomeBgColor:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, LV0/c;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
