.class public interface abstract Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008g\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ>\u0010\u0012\u001a)\u0012%\u0012#\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u000e0\u00042\u0006\u0010\r\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0012\u0010\u0008J#\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0013\u0010\u0008J#\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00050\u00042\u0006\u0010\r\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0006H\'\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001e\u0010\u001c\u001a\u00020\u001b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00a7@\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\"\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u001f\u0010 J\"\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u001f\u0010#J\u0019\u0010%\u001a\u0004\u0018\u00010\u00062\u0006\u0010$\u001a\u00020\u0017H\'\u00a2\u0006\u0004\u0008%\u0010&J%\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008)\u0010*J\u001d\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008+\u0010\nJ\u0017\u0010,\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u0006H\'\u00a2\u0006\u0004\u0008,\u0010-J<\u00101\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00052\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u00100\u001a\u00020\u0017H\u0097@\u00a2\u0006\u0004\u00081\u00102J.\u00104\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u00100\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0004\u00084\u00105J0\u00107\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u0017H\u00a7@\u00a2\u0006\u0004\u00087\u00108J,\u00101\u001a\u00020\u001b2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0097@\u00a2\u0006\u0004\u00081\u0010;J\u001e\u00101\u001a\u00020\u001b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00a7@\u00a2\u0006\u0004\u00081\u0010\u001dJ \u0010<\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008<\u0010 J&\u0010=\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u00a7@\u00a2\u0006\u0004\u0008=\u0010>J \u0010?\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\'H\u00a7@\u00a2\u0006\u0004\u0008?\u0010@J\u001e\u0010A\u001a\u00020\u001b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00a7@\u00a2\u0006\u0004\u0008A\u0010\u001dJH\u0010D\u001a\u00020\u001b2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0097@\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010F\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008F\u0010GJ(\u0010K\u001a\u00020\u001b2\u0006\u0010H\u001a\u00020\u00022\u0006\u0010I\u001a\u00020\u00022\u0006\u0010J\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008K\u0010LJ\u0018\u0010M\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008M\u0010\u000cJ\u001a\u0010N\u001a\u0004\u0018\u00010!2\u0006\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008N\u0010\u000cJ\u0019\u0010O\u001a\u0004\u0018\u00010!2\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010R\u001a\u00020Q2\u0006\u0010I\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008R\u0010SJ\u0017\u0010T\u001a\u00020Q2\u0006\u0010I\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008T\u0010SJ\u0017\u0010U\u001a\u00020Q2\u0006\u0010I\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008U\u0010SJ\u0019\u0010W\u001a\u0004\u0018\u00010\u00062\u0006\u0010V\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008W\u0010XJ\u0017\u0010Y\u001a\u00020\u001b2\u0006\u0010V\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008Y\u0010ZJ!\u0010[\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008[\u0010\\J!\u0010^\u001a\u0004\u0018\u00010\u00062\u0006\u0010]\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0017\u00a2\u0006\u0004\u0008^\u0010\\J\u001d\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008_\u0010\n\u00a8\u0006`"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
        "",
        "",
        "deviceId",
        "LQc/h;",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "getObservableItems",
        "(Ljava/lang/String;)LQc/h;",
        "getItems",
        "(Ljava/lang/String;)Ljava/util/List;",
        "getListItems",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "discardDeviceId",
        "",
        "Landroidx/room/MapColumn;",
        "columnName",
        "distinct_deviceId",
        "getItemsGroupByDeviceIdNotEquals",
        "getItemUrlsByDeviceId",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;",
        "getItemDeviceNamesAndDeviceIdsNotEquals",
        "entity",
        "",
        "addItem",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J",
        "entities",
        "Ldb/r;",
        "insertItems",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "url",
        "getItem",
        "(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "",
        "itemId",
        "(ILjava/lang/String;Lib/c;)Ljava/lang/Object;",
        "id",
        "getItemById",
        "(J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        "type",
        "getItemsByTypeAndDeviceId",
        "(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;)Ljava/util/List;",
        "getItemsByDeviceId",
        "updateItem",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I",
        "syncableUrls",
        "nonSyncableUrls",
        "currentTime",
        "deleteItems",
        "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;",
        "urls",
        "deleteSyncableUrls",
        "(Ljava/lang/String;Ljava/util/List;JLib/c;)Ljava/lang/Object;",
        "dumpUrl",
        "updateDeleteState",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLib/c;)Ljava/lang/Object;",
        "toBeDeletedSyncableEntities",
        "toBeDeletedNonSyncableEntities",
        "(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "deleteByUrl",
        "deleteByUrls",
        "(Ljava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "deleteByTypeNot",
        "(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lib/c;)Ljava/lang/Object;",
        "updateItems",
        "toBeInsertedEntities",
        "toBeUpdatedEntities",
        "applyItems",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "getCountByDeviceId",
        "(Ljava/lang/String;)I",
        "accountName",
        "accountType",
        "sync5",
        "updateQuickAccessOnSignIn",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "deleteByDeviceIdNot",
        "getMaxPosition",
        "getMaxPositionByDeviceId",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "Landroid/database/Cursor;",
        "getCursorForToBeSyncedItemsByAccountType",
        "(Ljava/lang/String;)Landroid/database/Cursor;",
        "getCursorForAllSyncItemsByAccountType",
        "getCursorForQueryLocalKeys",
        "syncKey",
        "getItemBySyncKey",
        "(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "deleteBySyncKey",
        "(Ljava/lang/String;)V",
        "getItemByUrlAndDeviceId",
        "(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "refererUrl",
        "getItemByRefererUrlAndDeviceId",
        "getDuplicateDefaultItemsByDeviceId",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract applyItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteByDeviceIdNot(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteBySyncKey(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation
.end method

.method public abstract deleteByTypeNot(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteByUrl(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteByUrls(Ljava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteItems(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract deleteSyncableUrls(Ljava/lang/String;Ljava/util/List;JLib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCountByDeviceId(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation
.end method

.method public abstract getCursorForAllSyncItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCursorForQueryLocalKeys(Ljava/lang/String;)Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCursorForToBeSyncedItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDuplicateDefaultItemsByDeviceId(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getItem(ILjava/lang/String;Lib/c;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getItem(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getItemById(J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getItemByRefererUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getItemBySyncKey(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getItemByUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getItemDeviceNamesAndDeviceIdsNotEquals(Ljava/lang/String;)LQc/h;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getItemUrlsByDeviceId(Ljava/lang/String;)LQc/h;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getItems(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getItemsByDeviceId(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getItemsByTypeAndDeviceId(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;)Ljava/util/List;
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getItemsGroupByDeviceIdNotEquals(Ljava/lang/String;)LQc/h;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getListItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getMaxPosition(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getMaxPositionByDeviceId(Ljava/lang/String;)Ljava/lang/Integer;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getObservableItems(Ljava/lang/String;)LQc/h;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract insertItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract updateDeleteState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract updateItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract updateItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract updateQuickAccessOnSignIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
