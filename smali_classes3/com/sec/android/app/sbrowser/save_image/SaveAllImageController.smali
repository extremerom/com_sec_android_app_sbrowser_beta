.class public Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOriginalUrl:Ljava/lang/String;

.field private final mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "SaveAllImageController"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mOriginalUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->createScannedImageList()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->lambda$createScannedImageList$0(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method private createScannedImageList()V
    .locals 6

    const-string v0, "SaveAllImageController"

    const-string v1, "createScannedImageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "createScannedImageList(): current tab is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getScannedImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/sec/android/app/sbrowser/barcode_detect/b;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v3, v5}, Lcom/sec/android/app/sbrowser/barcode_detect/b;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;I)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->addCallBack(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCheckedImageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getImageSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getInsecureCheckedImageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isHttpImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getImageSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$createScannedImageList$0(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageActivityDelegate;->updateUi()V

    return-void
.end method


# virtual methods
.method public getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getSelectableCount()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSelectedCount()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public hasInsecureItems()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->getInsecureCheckedImageList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "SaveAllImageController"

    if-eqz v0, :cond_0

    const-string p0, "hasInsecureItems(): there is no checked item"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hasInsecureItems(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isAllItemLoaded()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SaveAllImageController"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mOriginalUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->destroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public triggerDownload()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->getCheckedImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "SaveAllImageController"

    if-eqz v1, :cond_0

    const-string p0, "triggerDownload(): there is no checked item"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "triggerDownload()"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mScannedImageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-long v1, v1

    const-string v3, "226"

    const-string v4, "2263"

    invoke-static {v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->triggerDownload(Lcom/sec/terrace/Terrace;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
