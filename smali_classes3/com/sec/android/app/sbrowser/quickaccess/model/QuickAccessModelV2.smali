.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
.super Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u009b\u00012\u00020\u0001:\u0002\u009b\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00112\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J%\u0010\u0019\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0\u00160\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0\u0015\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u0019\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\r0\u0015\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ+\u0010\"\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\'\u0010\'\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u000e2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0014\u00a2\u0006\u0004\u0008\'\u0010(JK\u0010/\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020 2\u0008\u0010+\u001a\u0004\u0018\u00010\u00172\u0008\u0010-\u001a\u0004\u0018\u00010,2\u0006\u0010.\u001a\u00020%2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008/\u00100J\'\u00101\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u000e2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0014\u00a2\u0006\u0004\u00081\u0010(J3\u00104\u001a\u00020\t2\u0006\u00102\u001a\u00020,2\u0006\u0010)\u001a\u00020\u00172\u0008\u0010+\u001a\u0004\u0018\u00010\u00172\u0008\u00103\u001a\u0004\u0018\u00010 H\u0014\u00a2\u0006\u0004\u00084\u00105J\u001d\u00107\u001a\u00020\t2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0011H\u0016\u00a2\u0006\u0004\u00087\u00108J\u001e\u00109\u001a\u00020\t2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00180\rH\u0087@\u00a2\u0006\u0004\u00089\u0010:J\u0018\u0010<\u001a\u00020\t2\u0006\u0010;\u001a\u00020\u0017H\u0087@\u00a2\u0006\u0004\u0008<\u0010=J\u001b\u0010?\u001a\u00020\t2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00170\r\u00a2\u0006\u0004\u0008?\u00108J\u0017\u0010@\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u0019\u0010D\u001a\u00020\t2\u0008\u0010C\u001a\u0004\u0018\u00010BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ+\u0010H\u001a\u00020\t2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00112\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0011H\u0016\u00a2\u0006\u0004\u0008H\u0010IJ-\u0010K\u001a\u00020\t2\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00112\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008K\u0010LJ;\u0010M\u001a\u00020\t2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00112\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00112\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\u000f\u0010O\u001a\u00020,H\u0017\u00a2\u0006\u0004\u0008O\u0010PJ\u001b\u0010S\u001a\u00020\t2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020Q0\r\u00a2\u0006\u0004\u0008S\u00108J\u001b\u0010U\u001a\u00020\t2\u000c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020Q0\r\u00a2\u0006\u0004\u0008U\u00108J\u001b\u0010W\u001a\u00020\t2\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u00180\r\u00a2\u0006\u0004\u0008W\u00108J%\u0010\\\u001a\u00020\t2\u0006\u0010X\u001a\u00020\u00172\u0006\u0010Y\u001a\u00020\u00172\u0006\u0010[\u001a\u00020Z\u00a2\u0006\u0004\u0008\\\u0010]J\r\u0010^\u001a\u00020\t\u00a2\u0006\u0004\u0008^\u0010\u000bJ\u0015\u0010`\u001a\u00020_2\u0006\u0010Y\u001a\u00020\u0017\u00a2\u0006\u0004\u0008`\u0010aJ\u0015\u0010b\u001a\u00020_2\u0006\u0010Y\u001a\u00020\u0017\u00a2\u0006\u0004\u0008b\u0010aJ\u0015\u0010c\u001a\u00020_2\u0006\u0010Y\u001a\u00020\u0017\u00a2\u0006\u0004\u0008c\u0010aJ\u0015\u0010e\u001a\u00020Z2\u0006\u0010d\u001a\u00020\u0018\u00a2\u0006\u0004\u0008e\u0010fJ\u0017\u0010h\u001a\u0004\u0018\u00010\u00182\u0006\u0010g\u001a\u00020\u0017\u00a2\u0006\u0004\u0008h\u0010iJ\u0017\u0010k\u001a\u0004\u0018\u00010\u00182\u0006\u0010j\u001a\u00020Z\u00a2\u0006\u0004\u0008k\u0010lJ\u0015\u0010m\u001a\u00020,2\u0006\u0010d\u001a\u00020\u0018\u00a2\u0006\u0004\u0008m\u0010nJ\u0015\u0010o\u001a\u00020\t2\u0006\u0010g\u001a\u00020\u0017\u00a2\u0006\u0004\u0008o\u0010AJ\u001f\u0010p\u001a\u0004\u0018\u00010\u00182\u0006\u0010)\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u0017\u00a2\u0006\u0004\u0008p\u0010qJ\u000f\u0010s\u001a\u00020rH\u0002\u00a2\u0006\u0004\u0008s\u0010tJ-\u0010x\u001a\u0012\u0012\u0004\u0012\u00020\u000e0vj\u0008\u0012\u0004\u0012\u00020\u000e`w2\u000c\u0010u\u001a\u0008\u0012\u0004\u0012\u00020\u00180\rH\u0002\u00a2\u0006\u0004\u0008x\u0010yJ\u000f\u0010z\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008z\u0010\u000bJ.\u0010{\u001a\u00020\t2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0082@\u00a2\u0006\u0004\u0008{\u0010|JD\u0010\u007f\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0~2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000c\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u00180\rH\u0002\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J9\u0010\u0084\u0001\u001a\u00020%2\u0007\u0010\u0081\u0001\u001a\u00020\u00182\r\u0010\u0082\u0001\u001a\u0008\u0012\u0004\u0012\u00020,0\r2\r\u0010\u0083\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00170\rH\u0002\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001JF\u0010\u0086\u0001\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0~2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000c\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u00180\rH\u0002\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0080\u0001J)\u0010\u0088\u0001\u001a\u00020%2\u0006\u0010)\u001a\u00020\u00172\r\u0010\u0087\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00180\rH\u0002\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J$\u0010\u008c\u0001\u001a\u00020%2\u0007\u0010\u008a\u0001\u001a\u00020Q2\u0007\u0010\u008b\u0001\u001a\u00020\u0018H\u0002\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J\u0012\u0010\u008e\u0001\u001a\u00020%H\u0002\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u0015\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0003\u0010\u0090\u0001R\u0017\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0005\u0010\u0091\u0001R\u0018\u0010\u0093\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R-\u0010\u009a\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000e0\u0095\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001\u00a8\u0006\u009c\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;",
        "Landroid/content/Context;",
        "context",
        "LNc/x;",
        "coroutineDispatcher",
        "<init>",
        "(Landroid/content/Context;LNc/x;)V",
        "(Landroid/content/Context;)V",
        "Ldb/r;",
        "clearIconCache",
        "()V",
        "Landroidx/lifecycle/S;",
        "",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
        "getItemsLiveData",
        "()Landroidx/lifecycle/S;",
        "",
        "previousItems",
        "getItems",
        "(Ljava/util/List;)Ljava/util/List;",
        "LQc/h;",
        "",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "getItemsGroupByDeviceIdNotOwn",
        "()LQc/h;",
        "getItemsByDeviceIdOwn",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;",
        "getItemDeviceNamesAndDeviceIdsNotOwn",
        "previousItem",
        "item",
        "",
        "touchIcon",
        "setTouchIcon",
        "(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;[B)V",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;",
        "",
        "callback",
        "create",
        "(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V",
        "url",
        "bitmapByteArray",
        "iconUrl",
        "",
        "dominantColor",
        "isSyncable",
        "updateIcon",
        "(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Integer;ZLcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V",
        "updateTitle",
        "itemId",
        "icon",
        "updateUrl",
        "(ILjava/lang/String;Ljava/lang/String;[B)V",
        "deleteTargets",
        "deleteItems",
        "(Ljava/util/List;)V",
        "deleteEntityItems",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "deviceId",
        "deleteItemsByDeviceId",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "deviceIds",
        "deleteDevicesFromSync",
        "deleteByUrl",
        "(Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        "type",
        "deleteByTypeNot",
        "(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V",
        "editedItems",
        "oldItems",
        "updateItemsPosition",
        "(Ljava/util/List;Ljava/util/List;)V",
        "serverItems",
        "applyServerItems",
        "(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V",
        "applyItems",
        "(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V",
        "count",
        "()I",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
        "quickAccessItems",
        "addQuickAccessItemsFromSync",
        "targetItems",
        "replaceQuickAccessItems",
        "quickAccessItemEntities",
        "addItems",
        "accountName",
        "accountType",
        "",
        "currentTime",
        "updateQuickAccessOnSignIn",
        "(Ljava/lang/String;Ljava/lang/String;J)V",
        "deleteQuickAccessOnSignOut",
        "Landroid/database/Cursor;",
        "getCursorForToBeSyncedItemsByAccountType",
        "(Ljava/lang/String;)Landroid/database/Cursor;",
        "getCursorForAllSyncItemsByAccountType",
        "getCursorForQueryLocalKeys",
        "entity",
        "insertItem",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J",
        "syncKey",
        "getItemBySyncKey",
        "(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "id",
        "getItemById",
        "(J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "updateEntity",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I",
        "deleteBySyncKey",
        "getItemsByUrlAndDeviceId",
        "(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "LNc/j0;",
        "migrateLegacyDB",
        "()LNc/j0;",
        "entityList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "transformEntities",
        "(Ljava/util/List;)Ljava/util/ArrayList;",
        "requestLocalSync",
        "applyItemsInternally",
        "(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)Ljava/lang/Object;",
        "oldEntities",
        "Ldb/j;",
        "getToBeDeletedEntities",
        "(Ljava/util/List;Ljava/util/List;)Ldb/j;",
        "oldEntity",
        "editedItemIds",
        "editedUrls",
        "isNotEditedItem",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/util/List;Ljava/util/List;)Z",
        "getToBeUpdateOrInsertEntities",
        "entities",
        "notExistsSameUrl",
        "(Ljava/lang/String;Ljava/util/List;)Z",
        "toBeAddedItemDto",
        "localItemEntity",
        "isSameServerItem",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z",
        "isRunningOnNonUiThread",
        "()Z",
        "Landroid/content/Context;",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
        "quickAccessItemDao",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "urlToIconItemCache$delegate",
        "Ldb/f;",
        "getUrlToIconItemCache",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "urlToIconItemCache",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field private static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private coroutineDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final urlToIconItemCache$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "getExecutorService(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LNc/a0;

    invoke-direct {v1, v0}, LNc/a0;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;-><init>(Landroid/content/Context;LNc/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LNc/x;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    sget-object p2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase$Companion;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;->quickaccessDao()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getQuickAccessV2MigrationIsCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->migrateLegacyDB()LNc/j0;

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/u;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/u;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->urlToIconItemCache$delegate:Ldb/f;

    return-void
.end method

.method public static final synthetic access$applyItemsInternally(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->applyItemsInternally(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getItemsLiveData$transformEntities(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemsLiveData$transformEntities(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQuickAccessItemDao$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    return-object p0
.end method

.method public static final synthetic access$isSameServerItem(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isSameServerItem(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$requestLocalSync(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->requestLocalSync()V

    return-void
.end method

.method private final applyItemsInternally(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;

    iget v3, v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->label:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object v1, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->result:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v0, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    iget-object v2, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    iget-object v3, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v6, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v9, v6

    goto :goto_3

    :cond_3
    iget-object v0, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    iget-object v7, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v9, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_4
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getDuplicateDefaultItemsByDeviceId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v0, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$0:Ljava/lang/Object;

    move-object/from16 v9, p1

    iput-object v9, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$1:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$3:Ljava/lang/Object;

    iput v7, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->label:I

    invoke-virtual {v0, v3, v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteEntityItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    return-object v2

    :cond_5
    move-object v7, v9

    move-object v3, v10

    :goto_2
    iget-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$1:Ljava/lang/Object;

    iput-object v3, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$2:Ljava/lang/Object;

    iput-object v4, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$3:Ljava/lang/Object;

    iput v6, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->label:I

    invoke-interface {v9, v1, v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getListItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v9, v0

    move-object v0, v3

    move-object v3, v7

    :goto_3
    check-cast v1, Ljava/util/List;

    invoke-direct {v9, v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getToBeDeletedEntities(Ljava/util/List;Ljava/util/List;)Ldb/j;

    move-result-object v6

    iget-object v7, v6, Ldb/j;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v6, v6, Ldb/j;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-direct {v9, v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getToBeUpdateOrInsertEntities(Ljava/util/List;Ljava/util/List;)Ldb/j;

    move-result-object v1

    iget-object v3, v1, Ldb/j;->a:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    iget-object v1, v1, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const-string v14, "applyItemsInternally : toBeDeletedSyncableEntities : "

    const-string v15, ", toBeDeletedNonSyncableEntities : "

    const-string v5, ", toBeUpdatedEntities : "

    invoke-static {v3, v11, v14, v15, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", toBeInsertedEntities : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "QuickAccessModelV2"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v9, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    iput-object v9, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$0:Ljava/lang/Object;

    iput-object v0, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$1:Ljava/lang/Object;

    iput-object v4, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItemsInternally$1;->label:I

    move-object v4, v7

    move-object v5, v6

    move-object v6, v1

    move-object v7, v10

    invoke-interface/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->applyItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_7

    return-object v2

    :cond_7
    move-object v2, v9

    :goto_4
    if-eqz v0, :cond_8

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;->onResult(Ljava/lang/Object;)V

    :cond_8
    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->requestLocalSync()V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->urlToIconItemCache_delegate$lambda$0()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic getItemsLiveData$transformEntities(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->transformEntities(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final getToBeDeletedEntities(Ljava/util/List;Ljava/util/List;)Ldb/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)",
            "Ldb/j;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isNotEditedItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnDelete(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v4, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isNotEditedItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance p0, Ldb/j;

    invoke-direct {p0, p1, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getToBeUpdateOrInsertEntities(Ljava/util/List;Ljava/util/List;)Ldb/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)",
            "Ldb/j;"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lfb/C;->g(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lfb/C;->g(I)I

    move-result v1

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    :goto_4
    const-string v6, "QuickAccessModelV2"

    if-eqz v5, :cond_7

    const-string v7, "find it in oldUrlEntityMap -> update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getPosition()I

    move-result v6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result v7

    if-ne v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setPosition(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTitleState(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getUrl(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->notExistsSameUrl(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setUrl(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTouchIconUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnUpdate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    const-string v5, "can\'t find it in oldUrlEntityMap -> insert"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2Kt;->toEntity(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceId(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceName(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getSamsungAccountType(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertAccountFieldsOnCreate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnUpdate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    new-instance p0, Ldb/j;

    invoke-direct {p0, v0, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getUrlToIconItemCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->urlToIconItemCache$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final isNotEditedItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getItemId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private final isRunningOnNonUiThread()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->runningOnUiThread()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final isSameServerItem(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getItemId()I

    move-result p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getItemId()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private final migrateLegacyDB()LNc/j0;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$migrateLegacyDB$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$migrateLegacyDB$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method

.method private final notExistsSameUrl(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)Z"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final requestLocalSync()V
    .locals 1

    const-string p0, "QuickAccessModelV2"

    const-string v0, "requestLocalSync"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "qzac7cSzXP"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->requestLocalSync(Ljava/lang/String;)V

    return-void
.end method

.method private final transformEntities(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getUrlToIconItemCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->p(Ljava/util/AbstractMap;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>()V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setItemId(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setPosition(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTouchIconUrl(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDominant()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setDominantColor(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitleState(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)V

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setHasBeenSynced(Z)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIcon()[B

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getUrlToIconItemCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    :cond_0
    invoke-virtual {p0, v6, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->setTouchIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;[B)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getUrlToIconItemCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getUrlToIconItemCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-object v2
.end method

.method private static final urlToIconItemCache_delegate$lambda$0()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addItems(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "quickAccessItemEntities"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addItems$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final addQuickAccessItemsFromSync(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "quickAccessItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public applyItems(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editedItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldItems"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItems$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public applyServerItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serverItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyServerItems$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$applyServerItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public clearIconCache()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getUrlToIconItemCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public count()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueDeviceId(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getCountByDeviceId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public create(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$create$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$create$1;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteBySyncKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "syncKey"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteBySyncKey(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteByTypeNot(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteByTypeNot$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteByTypeNot$1;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public deleteByUrl(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteByUrl$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteByUrl$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteDevicesFromSync(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteDevicesFromSync$1;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteEntityItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteEntityItems "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessModelV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    sget-object v2, Ldb/r;->a:Ldb/r;

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnDelete(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "deleteEntityItems syncableEntities : "

    const-string v6, ", nonSyncableEntities : "

    invoke-static {p1, v4, v5, v6, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, v0, v3, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteItems(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    return-object v2
.end method

.method public deleteItems(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deleteTargets"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItems$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItems$1;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteItemsByDeviceId(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
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

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->label:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object p2, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->result:Ljava/lang/Object;

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    iput-object p0, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->L$0:Ljava/lang/Object;

    iput-object p1, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->L$1:Ljava/lang/Object;

    iput v3, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->label:I

    invoke-interface {p2, p1, v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getListItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p2, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    const/4 p0, 0x0

    iput-object p0, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->L$0:Ljava/lang/Object;

    iput-object p0, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->L$1:Ljava/lang/Object;

    iput v2, v7, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteItemsByDeviceId$1;->label:I

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final deleteQuickAccessOnSignOut()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteQuickAccessOnSignOut$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$deleteQuickAccessOnSignOut$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final getCursorForAllSyncItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getCursorForAllSyncItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCursorForQueryLocalKeys(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getCursorForQueryLocalKeys(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCursorForToBeSyncedItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getCursorForToBeSyncedItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getItemById(J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemById(J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getItemBySyncKey(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "syncKey"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemBySyncKey(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getItemDeviceNamesAndDeviceIdsNotOwn()LQc/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueDeviceId(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemDeviceNamesAndDeviceIdsNotEquals(Ljava/lang/String;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public getItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueDeviceId(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->transformEntities(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getItemsByDeviceIdOwn()LQc/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueDeviceId(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getObservableItems(Ljava/lang/String;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getItemsByUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->isRefererUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemByRefererUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemByUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getItemsGroupByDeviceIdNotOwn()LQc/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueDeviceId(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemsGroupByDeviceIdNotEquals(Ljava/lang/String;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getItemsLiveData()Landroidx/lifecycle/S;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemsByDeviceIdOwn()LQc/h;

    move-result-object v2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$getItemsLiveData$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$getItemsLiveData$1;-><init>(Ljava/lang/Object;)V

    sget v1, LQc/J;->a:I

    new-instance v1, LQc/I;

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v6, v3}, LQc/I;-><init>(Ljava/lang/Object;Lib/c;I)V

    new-instance v7, LRc/n;

    sget-object v3, Lib/i;->a:Lib/i;

    sget-object v5, LPc/a;->SUSPEND:LPc/a;

    const/4 v4, -0x2

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, LRc/n;-><init>(Lsb/o;LQc/h;Lib/h;ILPc/a;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v7, p0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v6, v0}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object p0

    return-object p0
.end method

.method public final insertItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->addItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final replaceQuickAccessItems(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "targetItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$replaceQuickAccessItems$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$replaceQuickAccessItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public setTouchIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;[B)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;->setTouchIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;[B)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getUrlToIconItemCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateEntity(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->isRunningOnNonUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->quickAccessItemDao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->updateItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateIcon(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Integer;ZLcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string p5, "url"

    invoke-static {p1, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "bitmapByteArray"

    invoke-static {p2, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {p5}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p5

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {p5, p1, p1, v8, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public updateItemsPosition(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editedItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldItems"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateItemsPosition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateItemsPosition$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/util/List;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final updateQuickAccessOnSignIn(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateQuickAccessOnSignIn$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateQuickAccessOnSignIn$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/lang/String;Ljava/lang/String;JLib/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v8, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public updateTitle(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateTitle$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateTitle$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public updateUrl(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateUrl$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateUrl$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;ILjava/lang/String;[BLjava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v8, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
