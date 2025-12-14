.class Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    return-void
.end method


# virtual methods
.method public getFavicon(Lcom/sec/terrace/Terrace;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isUnifiedHomePage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome-native://newtab/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/HomePageFaviconLoader;->getHomePageFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle(Lcom/sec/terrace/Terrace;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isCrashed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1403e8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isUnifiedHomePage()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "chrome-native://newtab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "parental-control"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14089e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140b92

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getUrl(Lcom/sec/terrace/Terrace;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parental-control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "internet-native://parental-control/"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->mState:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;->isNativePage()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "internet-native://newtab/"

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method
