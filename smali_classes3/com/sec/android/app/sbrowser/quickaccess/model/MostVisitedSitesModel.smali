.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MOST_VISITED_URI:Landroid/net/Uri;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesContract;->MOST_VISITED_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->MOST_VISITED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesContract;->MOST_VISITED_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->updateCachedItems()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->updateCachedItems()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->onLocalDataChanged()V

    return-void
.end method

.method private createDeleteOperationList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->MOST_VISITED_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "url = ?"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private createInsertOperationList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->MOST_VISITED_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "title"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getScore()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "score"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private createUpdateOperationList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->MOST_VISITED_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "url = ?"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getScore()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "score"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "title"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static bridge synthetic d()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->MOST_VISITED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private executeProviderOperation(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getItemByUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getListToDelete(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private onLocalDataChanged()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->executeProviderOperation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private toBitmap([B)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_1

    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    array-length v0, p1

    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateCachedItems()V
    .locals 15

    const-string v0, "MostVisitedSitesModel"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "title"

    const-string v4, "url"

    const-string v5, "touchiconUrl"

    const-string v6, "touchicon"

    const-string v7, "dominant"

    const-string v8, "score"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->MOST_VISITED_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    const-string v3, "url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "score"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    const-string v6, "touchiconUrl"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dominant"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-direct {v8}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;-><init>()V

    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setTouchIconUrl(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDominantColor(I)V

    invoke-virtual {v8, v5}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setScore(F)V

    const-string v4, "touchicon"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->getItemByUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTouchIconHash()I

    move-result v6

    if-eq v6, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getDefaultTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDefaultTouchIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getLightThemeTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setLightThemeTouchIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getDarkThemeTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDarkThemeTouchIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTouchIconHash()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setTouchIconHash(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v3

    goto :goto_6

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessMaskableIconEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDefaultTouchIcon(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setLightThemeTouchIcon(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v3, v6}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDarkThemeTouchIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->toBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDefaultTouchIcon(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v8, v5}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setTouchIconHash(I)V

    :cond_4
    :goto_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_0

    :cond_5
    :goto_5
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->updateValue(Ljava/util/List;)V

    return-void

    :goto_8
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public addToBlockList(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->deleteItem(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public applyBatch(Ljava/util/ArrayList;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->executeProviderOperation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->executeProviderOperation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    return-object p0
.end method

.method public getListToInsert(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public getListToUpdate(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getScore()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getScore()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public hasListChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->isEquals(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setMostVisitedItemsForTest(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->updateValue(Ljava/util/List;)V

    return-void
.end method

.method public toByteArray(Landroid/graphics/Bitmap;)[B
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 8

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->executeProviderOperation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->mMostVisitedList:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->hasListChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    move v4, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getDefaultTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDefaultTouchIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setTouchIconUrl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getDominantColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->setDominantColor(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->getListToDelete(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->createDeleteOperationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->getListToInsert(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->createInsertOperationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->getListToUpdate(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->createUpdateOperationList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->applyBatch(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method
