.class public Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;
    }
.end annotation


# instance fields
.field private mFolderNodeHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderPathMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public createFolderHierarchy(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 11

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14025f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-wide/16 v2, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;-><init>(JLjava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_b

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    :cond_1
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "FOLDER"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "SYNC4"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ID"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v1, "PARENT"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->isMobileOrPcBookmarkBarSync4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getBookmarkBarFolderString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    const-string v1, "TITLE"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v4, p1, v5, v6, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getBookmarkParentName(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_4

    move-wide v7, v2

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "PC_BOOKMARK_BAR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getPCOtherFolderId()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    :cond_6
    const-wide/16 v7, -0x5

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    invoke-direct {v0, v7, v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;-><init>(J)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    invoke-direct {v7, v5, v6, v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;-><init>(JLjava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->setName(Ljava/lang/String;)V

    :cond_a
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->setParent(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BookmarkFolderHierarchy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public getFolderPath(JI)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderNodeHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderPathMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderPathMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "/"

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderPathMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0, v4, v1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x64

    if-lt p3, v0, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, v2, v3, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->getFolderPath(JI)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, v4, v1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;->mFolderPathMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method
