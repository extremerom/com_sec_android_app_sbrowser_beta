.class public Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mCheckStates:[Z

.field private mClearBrowsingDataListView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

.field private mOptions:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

.field private mOptionsNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mOptions:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mOptionsNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBrowsingDataByPosition(I)J
    .locals 2

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->getValue()J

    move-result-wide p0

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOCOMPLETE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->getValue()J

    move-result-wide v0

    add-long/2addr v0, p0

    return-wide v0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->PASSWORD_INFO_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->getValue()J

    move-result-wide p0

    return-wide p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->CACHE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->getValue()J

    move-result-wide p0

    return-wide p0

    :cond_3
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->COOKIE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->getValue()J

    move-result-wide p0

    return-wide p0

    :cond_4
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->HISTORY_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDataInfoByPosition(I)I
    .locals 3

    const p0, 0x7f140006

    const v0, 0x7f140654

    const v1, 0x7f120060

    const v2, 0x7f120061

    filled-new-array {v1, v2, p0, v0, v0}, [I

    move-result-object p0

    aget p0, p0, p1

    return p0
.end method

.method public getDialogOptions()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mOptions:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    return-object p0
.end method

.method public getHelpTextByPosition(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    const v0, 0x7f140157

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1405fb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f1408ac

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f1408ab

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f1402b2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const p1, 0x7f1403dc

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const p1, 0x7f1402ab

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getStringFromRes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mOptions:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    array-length p0, p0

    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

    return-object p0
.end method

.method public getNameByPosition(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mOptionsNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getStringFromRes(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mCheckStates:[Z

    aget-boolean v0, v0, p2

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->bindData(IZ)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getItemCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getItemCount()I

    move-result v1

    if-le v1, v0, :cond_1

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p2, p0, :cond_2

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mClearBrowsingDataListView:Landroid/view/View;

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mClearBrowsingDataListView:Landroid/view/View;

    :cond_0
    const p2, 0x7f0e0142

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0702ac

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;)V

    return-object p2
.end method

.method public setAutocompleteData(J)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOCOMPLETE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->setValue(J)V

    return-void
.end method

.method public setAutofillData(J)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->setValue(J)V

    return-void
.end method

.method public setBackgroundResourceForItems(Landroid/view/View;)V
    .locals 0

    const p0, 0x7f0806e3

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setCacheData(J)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->CACHE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->setValue(J)V

    return-void
.end method

.method public setCookieData(J)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->COOKIE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->setValue(J)V

    return-void
.end method

.method public setHistoryData(J)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->HISTORY_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->setValue(J)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

    return-void
.end method

.method public setPasswordData(J)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->PASSWORD_INFO_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->setValue(J)V

    return-void
.end method

.method public setmCheckStates([Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->mCheckStates:[Z

    return-void
.end method
