.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAdBlockerWeekMessage(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120043

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlockBackwardDisabledMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140b6d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlockBackwardTurnedOnMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f140b69

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlockBackwardWeekMessage(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120046

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlockPopupsDisabledMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f140b6c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlockPopupsTurnedOnMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f140b6a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBlockPopupsWeekMessage(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120047

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f140b67

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackMessageWhenAdBlockerIsDisabled()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f140b68

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSatDisabledMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f140b6e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSatTodayMessage(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120045

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSatTurnedOnMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f140b6b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSatWeekMessage(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120044

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
