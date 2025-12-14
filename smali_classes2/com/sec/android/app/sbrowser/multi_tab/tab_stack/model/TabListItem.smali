.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGroupColorId:I

.field private mIsChecked:Z

.field private mIsLocked:Z

.field private mOriginalUrl:Ljava/lang/String;

.field private mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

.field private final mTabId:I

.field private mThemeColor:I

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mType:I

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTabId:I

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroupColorId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mGroupColorId:I

    iget-boolean v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mIsLocked:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mIsLocked:Z

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mThemeColor:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mThemeColor:I

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mOriginalUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mOriginalUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mType:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTabId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTitle:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mGroupColorId:I

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mUrl:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mIsLocked:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mOriginalUrl:Ljava/lang/String;

    return-void
.end method

.method private isSharableTabUrl(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isUnifiedHomepageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isUnifiedHomepageUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->getGroupThemeColor()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->bgColor:I

    return p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getGroupColorId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mGroupColorId:I

    return p0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    return-object p0
.end method

.method public getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTabId:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mType:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mIsChecked:Z

    return p0
.end method

.method public isGroupItem()Z
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isIncognito:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mIsLocked:Z

    return p0
.end method

.method public isRoot()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isGroupMode()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public isSharable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSharableTabUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mOriginalUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSharableTabUrl(Ljava/lang/String;)Z

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

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mIsChecked:Z

    return-void
.end method

.method public setGroup(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroupColorId:I

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isIncognito:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mIsLocked:Z

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabIsLocked(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mType:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->mUrl:Ljava/lang/String;

    return-void
.end method
