.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;
    }
.end annotation


# instance fields
.field public bgColor:I

.field public isFrontMostTab:Z

.field public isGroupTab:Z

.field public final isIncognito:Z

.field public liteThumbnail:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

.field public mGroup:Ljava/lang/String;

.field public mGroupColorId:I

.field public final mId:I

.field public mIsLocked:Z

.field public mOriginalUrl:Ljava/lang/String;

.field public mThemeColor:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isIncognito:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mIsLocked:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->url:Ljava/lang/String;

    iput p6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->bgColor:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mOriginalUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    iput p9, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroupColorId:I

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isGroupTab:Z

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isIncognito:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mIsLocked:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroupColorId:I

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->url:Ljava/lang/String;

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->bgColor:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mOriginalUrl:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isGroupTab:Z

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    return-void
.end method


# virtual methods
.method public isGroup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isGroupTab:Z

    return p0
.end method

.method public notifySearchFilterChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onSearchFilterChanged(Ljava/lang/String;)V

    return-void
.end method

.method public notifyTabBgColor(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->bgColor:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyTabBgColor : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onTabColorLoaded()V

    return-void
.end method

.method public notifyTabBitmapLoaded(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onTabBitmapLoaded()V

    return-void
.end method

.method public notifyTabColorLoaded(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mThemeColor:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onTabColorLoaded()V

    return-void
.end method

.method public notifyTabDataLoaded(Landroid/graphics/Bitmap;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyTabDataLoaded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    const-string v2, "Tab"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onTabDataLoaded(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    return-void
.end method

.method public notifyTabDataUnloaded()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onTabDataUnloaded(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    return-void
.end method

.method public notifyTabIsLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mIsLocked:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onTabIconLoaded()V

    return-void
.end method

.method public notifyTabTitleLoaded(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyTabTitleLoaded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    const-string v2, "Tab"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->onTabTitleLoaded()V

    return-void
.end method

.method public setCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;->EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;

    return-void
.end method
