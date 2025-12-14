.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 l2\u00020\u0001:\u0001lB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001e\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0096@\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001e\u0010\u0010\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0096@\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0096@\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ<\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000b2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000b2\u0006\u0010\u0019\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\u0010\u0010\u001aJ,\u0010\u0010\u001a\u00020\r2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0096@\u00a2\u0006\u0004\u0008\u0010\u0010\u001dJH\u0010 \u001a\u00020\r2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0096@\u00a2\u0006\u0004\u0008 \u0010!J!\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008#\u0010$J#\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u000b0%2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u001e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0004\u0008*\u0010+J/\u0010.\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u000b0-0%2\u0006\u0010,\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008.\u0010\'J#\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000b0%2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008/\u0010\'J#\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u000b0%2\u0006\u0010,\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u00081\u0010\'J\"\u00103\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0004\u00083\u00104J\"\u00103\u001a\u0004\u0018\u00010\u00062\u0006\u00105\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0004\u00083\u00106J\u0019\u00108\u001a\u0004\u0018\u00010\u00062\u0006\u00107\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00088\u00109J%\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010;\u001a\u00020:2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u001d\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008>\u0010)J\u0017\u0010?\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u001a\u0010A\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0004\u0008A\u0010+J\u0019\u0010B\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010F\u001a\u00020E2\u0006\u0010D\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010H\u001a\u00020E2\u0006\u0010D\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008H\u0010GJ\u0017\u0010I\u001a\u00020E2\u0006\u0010D\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008I\u0010GJ\u0019\u0010K\u001a\u0004\u0018\u00010\u00062\u0006\u0010J\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008K\u0010LJ!\u0010M\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008M\u0010$J\u001d\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008N\u0010)J0\u0010P\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u00152\u0006\u0010O\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008P\u0010QJ \u0010R\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0004\u0008R\u00104J&\u0010T\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000bH\u0096@\u00a2\u0006\u0004\u0008T\u0010UJ \u0010V\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010;\u001a\u00020:H\u0096@\u00a2\u0006\u0004\u0008V\u0010WJ(\u0010Z\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u00152\u0006\u0010D\u001a\u00020\u00152\u0006\u0010Y\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0004\u0008Z\u0010[J\u0018\u0010\\\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00a2\u0006\u0004\u0008\\\u0010+J\u0017\u0010]\u001a\u00020\r2\u0006\u0010J\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008]\u0010^R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010_R\u001a\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u00060`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0014\u0010d\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u001a\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u00060`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010bR\u001a\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u00060g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u001a\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u00060g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010iR\u001a\u0010k\u001a\u0008\u0012\u0004\u0012\u00020\u00060g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010i\u00a8\u0006m"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
        "LJ2/U;",
        "__db",
        "<init>",
        "(LJ2/U;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "entity",
        "",
        "addItem",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J",
        "",
        "entities",
        "Ldb/r;",
        "insertItems",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "deleteItems",
        "",
        "updateItem",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I",
        "updateItems",
        "",
        "deviceId",
        "syncableUrls",
        "nonSyncableUrls",
        "currentTime",
        "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;",
        "toBeDeletedSyncableEntities",
        "toBeDeletedNonSyncableEntities",
        "(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "toBeInsertedEntities",
        "toBeUpdatedEntities",
        "applyItems",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "refererUrl",
        "getItemByRefererUrlAndDeviceId",
        "(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "LQc/h;",
        "getObservableItems",
        "(Ljava/lang/String;)LQc/h;",
        "getItems",
        "(Ljava/lang/String;)Ljava/util/List;",
        "getListItems",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "discardDeviceId",
        "",
        "getItemsGroupByDeviceIdNotEquals",
        "getItemUrlsByDeviceId",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;",
        "getItemDeviceNamesAndDeviceIdsNotEquals",
        "url",
        "getItem",
        "(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
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
        "getCountByDeviceId",
        "(Ljava/lang/String;)I",
        "getMaxPosition",
        "getMaxPositionByDeviceId",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "accountType",
        "Landroid/database/Cursor;",
        "getCursorForToBeSyncedItemsByAccountType",
        "(Ljava/lang/String;)Landroid/database/Cursor;",
        "getCursorForAllSyncItemsByAccountType",
        "getCursorForQueryLocalKeys",
        "syncKey",
        "getItemBySyncKey",
        "(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "getItemByUrlAndDeviceId",
        "getDuplicateDefaultItemsByDeviceId",
        "dumpUrl",
        "updateDeleteState",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLib/c;)Ljava/lang/Object;",
        "deleteByUrl",
        "urls",
        "deleteByUrls",
        "(Ljava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "deleteByTypeNot",
        "(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lib/c;)Ljava/lang/Object;",
        "accountName",
        "sync5",
        "updateQuickAccessOnSignIn",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "deleteByDeviceIdNot",
        "deleteBySyncKey",
        "(Ljava/lang/String;)V",
        "LJ2/U;",
        "LJ2/f;",
        "__insertAdapterOfQuickAccessItemEntity",
        "LJ2/f;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;",
        "__quickAccessTypeConverter",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;",
        "__insertAdapterOfQuickAccessItemEntity_1",
        "LJ2/e;",
        "__deleteAdapterOfQuickAccessItemEntity",
        "LJ2/e;",
        "__updateAdapterOfQuickAccessItemEntity",
        "__updateAdapterOfQuickAccessItemEntity_1",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final __db:LJ2/U;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __deleteAdapterOfQuickAccessItemEntity:LJ2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/e;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __insertAdapterOfQuickAccessItemEntity:LJ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __insertAdapterOfQuickAccessItemEntity_1:LJ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __updateAdapterOfQuickAccessItemEntity:LJ2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/e;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __updateAdapterOfQuickAccessItemEntity_1:LJ2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/e;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->$stable:I

    return-void
.end method

.method public constructor <init>(LJ2/U;)V
    .locals 1
    .param p1    # LJ2/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "__db"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__insertAdapterOfQuickAccessItemEntity:LJ2/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__insertAdapterOfQuickAccessItemEntity_1:LJ2/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$3;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$3;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__deleteAdapterOfQuickAccessItemEntity:LJ2/e;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__updateAdapterOfQuickAccessItemEntity:LJ2/e;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__updateAdapterOfQuickAccessItemEntity_1:LJ2/e;

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE deviceId = ? AND url = ? LIMIT 1"

    invoke-static {v0, p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItem$lambda$13(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE deviceId = ? AND url = ?"

    invoke-static {v0, p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemByUrlAndDeviceId$lambda$22(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemByRefererUrlAndDeviceId$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE deviceId = ? AND `deleted` = 0 ORDER BY position, url ASC"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemsByDeviceId$lambda$17(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE deviceId = ? AND itemId = ? LIMIT 1"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItem$lambda$14(Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get__quickAccessTypeConverter$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    return-object p0
.end method

.method private static final addItem$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;LS2/a;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__insertAdapterOfQuickAccessItemEntity:LJ2/f;

    invoke-virtual {p0, p2, p1}, LJ2/f;->insertAndReturnId(LS2/a;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE sync1 = ? LIMIT 1"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemBySyncKey$lambda$21(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE deviceId = ? AND `deleted` = 0 ORDER BY position, url ASC"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getObservableItems$lambda$7(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE deviceId = ? AND `deleted` = 0 ORDER BY position, url ASC"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getListItems$lambda$9(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final deleteByDeviceIdNot$lambda$29(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteBySyncKey$lambda$30(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteByTypeNot$lambda$27(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p4, 0x1

    :try_start_0
    invoke-interface {p0, p4, p1}, LS2/c;->x(ILjava/lang/String;)V

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->typeToInt(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)I

    move-result p1

    int-to-long p1, p1

    const/4 p3, 0x2

    invoke-interface {p0, p3, p1, p2}, LS2/c;->i(IJ)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteByUrl$lambda$25(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p3, 0x1

    :try_start_0
    invoke-interface {p0, p3, p1}, LS2/c;->x(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p2}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteByUrls$lambda$26(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p3, 0x1

    :try_start_0
    invoke-interface {p0, p3, p1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p0, p2, p3}, LS2/c;->x(ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteItems$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__deleteAdapterOfQuickAccessItemEntity:LJ2/e;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p2, p1}, LJ2/e;->handleMultiple(LS2/a;Ljava/lang/Iterable;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;LS2/a;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->updateItem$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;LS2/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE deviceId = ? AND `deleted` = 0 ORDER BY position, url ASC"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItems$lambda$8(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/Map;
    .locals 1

    const-string v0, "SELECT deviceId AS distinct_deviceId, * FROM quickaccess_item WHERE deviceId != ? AND deleted = 0 ORDER BY distinct_deviceId, position, url ASC"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemsGroupByDeviceIdNotEquals$lambda$10(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final getCountByDeviceId$lambda$18(Ljava/lang/String;Ljava/lang/String;LS2/a;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, LS2/c;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return p2

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final getDuplicateDefaultItemsByDeviceId$lambda$23(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 49

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "_connection"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-interface {v2, v3}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, LS2/c;->x(ILjava/lang/String;)V

    const-string v0, "id"

    invoke-static {v2, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v3, "title"

    invoke-static {v2, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v2, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v2, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v2, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v2, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v2, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v2, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v2, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v2, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v2, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v2, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v2, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "sync1"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync2"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync3"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync4"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "sync5"

    invoke-static {v2, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, LS2/c;->t0()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v2, v0}, LS2/c;->getLong(I)J

    move-result-wide v23

    invoke-interface {v2, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v2, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v21, v3

    move/from16 v45, v4

    invoke-interface {v2, v5}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v2, v6}, LS2/c;->isNull(I)Z

    move-result v4

    const/16 v22, 0x0

    if-eqz v4, :cond_0

    move-object/from16 v28, v22

    goto :goto_1

    :cond_0
    invoke-interface {v2, v6}, LS2/c;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v28, v4

    :goto_1
    invoke-interface {v2, v7}, LS2/c;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v46, v5

    move-object/from16 v29, v22

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v4

    move/from16 v46, v5

    :goto_2
    invoke-interface {v2, v8}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v47, v6

    invoke-interface {v2, v9}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v31

    invoke-interface {v2, v10}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v48, v7

    invoke-interface {v2, v11}, LS2/c;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v33

    invoke-interface {v2, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v2, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v2, v14}, LS2/c;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, p0

    move/from16 p0, v0

    invoke-interface {v2, v7}, LS2/c;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v1, p1

    invoke-interface {v2, v1}, LS2/c;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_2

    :goto_3
    move/from16 p1, v1

    move-object/from16 v38, v22

    move/from16 v1, p3

    goto :goto_4

    :cond_2
    invoke-interface {v2, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    :goto_4
    invoke-interface {v2, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 p3, v1

    move/from16 v1, v16

    invoke-interface {v2, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v16, v1

    move/from16 v1, v17

    invoke-interface {v2, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v17, v1

    move/from16 v1, v18

    invoke-interface {v2, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v18, v1

    move/from16 v1, v19

    invoke-interface {v2, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v19, v1

    move/from16 v1, v20

    invoke-interface {v2, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v44

    move/from16 v20, v1

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v22, v1

    move/from16 v27, v3

    move/from16 v30, v4

    move/from16 v32, v5

    move/from16 v36, v6

    move/from16 v37, v0

    invoke-direct/range {v22 .. v44}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 p0, v7

    move/from16 v3, v21

    move/from16 v4, v45

    move/from16 v5, v46

    move/from16 v6, v47

    move/from16 v7, v48

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_5
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItem$lambda$13(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 44

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const/4 v2, 0x2

    move-object/from16 v3, p2

    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p4, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v19

    const/16 v20, 0x0

    if-eqz v19, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v27, v20

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v27, v3

    :goto_0
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v28, v20

    goto :goto_1

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v30

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v32

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v5, p0

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    move/from16 v6, p2

    move-object/from16 v37, v20

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :goto_3
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v38

    move/from16 v6, p4

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v6, v16

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v6, v17

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v6, v18

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    invoke-interface {v1, v15}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    new-instance v20, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v21, v20

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v31, v4

    move/from16 v35, v0

    move/from16 v36, v5

    invoke-direct/range {v21 .. v43}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v20

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItem$lambda$14(Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 44

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const/4 v2, 0x2

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, LS2/c;->i(IJ)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p4, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v19

    const/16 v20, 0x0

    if-eqz v19, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v27, v20

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v27, v3

    :goto_0
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v28, v20

    goto :goto_1

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v30

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v32

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v5, p0

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    move/from16 v6, p2

    move-object/from16 v37, v20

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :goto_3
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v38

    move/from16 v6, p4

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v6, v16

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v6, v17

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v6, v18

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    invoke-interface {v1, v15}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    new-instance v20, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v21, v20

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v31, v4

    move/from16 v35, v0

    move/from16 v36, v5

    invoke-direct/range {v21 .. v43}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v20

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItemById$lambda$15(Ljava/lang/String;JLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 44

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-wide/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3, v4}, LS2/c;->i(IJ)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p4, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v19

    const/16 v20, 0x0

    if-eqz v19, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v27, v20

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v27, v3

    :goto_0
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v28, v20

    goto :goto_1

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v30

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v32

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v5, p0

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    move/from16 v6, p2

    move-object/from16 v37, v20

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :goto_3
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v38

    move/from16 v6, p4

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v6, v16

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v6, v17

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v6, v18

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    invoke-interface {v1, v15}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    new-instance v20, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v21, v20

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v31, v4

    move/from16 v35, v0

    move/from16 v36, v5

    invoke-direct/range {v21 .. v43}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v20

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItemByRefererUrlAndDeviceId$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;->getItemByRefererUrlAndDeviceId(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method private static final getItemBySyncKey$lambda$21(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 45

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v20

    const/16 v21, 0x0

    if-eqz v20, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v28, v21

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v28, v3

    :goto_0
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v29, v21

    goto :goto_1

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_1
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v31

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v33

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v5, p0

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    move/from16 v6, p3

    move-object/from16 v38, v21

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    :goto_3
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v6, v16

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v6, v17

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v6, v18

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v6, v19

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    invoke-interface {v1, v15}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v44

    new-instance v21, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v22, v21

    move/from16 v27, v2

    move/from16 v30, v3

    move/from16 v32, v4

    move/from16 v36, v0

    move/from16 v37, v5

    invoke-direct/range {v22 .. v44}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v21

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItemByUrlAndDeviceId$lambda$22(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 44

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const/4 v2, 0x2

    move-object/from16 v3, p2

    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p4, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v19

    const/16 v20, 0x0

    if-eqz v19, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v27, v20

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v27, v3

    :goto_0
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v28, v20

    goto :goto_1

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v30

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v32

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v5, p0

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    move/from16 v6, p2

    move-object/from16 v37, v20

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :goto_3
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v38

    move/from16 v6, p4

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v6, v16

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v6, v17

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v6, v18

    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    invoke-interface {v1, v15}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    new-instance v20, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v21, v20

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v31, v4

    move/from16 v35, v0

    move/from16 v36, v5

    invoke-direct/range {v21 .. v43}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v20

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItemDeviceNamesAndDeviceIdsNotEquals$lambda$12(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 5

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, LS2/c;->getLong(I)J

    move-result-wide v2

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final getItemUrlsByDeviceId$lambda$11(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final getItems$lambda$8(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 50

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v21, v2

    move/from16 v45, v3

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    const/16 v22, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v28, v22

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v46, v4

    move-object/from16 v29, v22

    goto :goto_2

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    move/from16 v46, v4

    :goto_2
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v47, v5

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v31

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v48, v6

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v33

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    move/from16 p0, v7

    move/from16 v49, v8

    invoke-interface {v1, v6}, LS2/c;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p1

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_2

    :goto_3
    move/from16 v0, p3

    move-object/from16 v38, v22

    goto :goto_4

    :cond_2
    invoke-interface {v1, v8}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 p3, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v44

    move/from16 v20, v0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v22, v0

    move/from16 v27, v2

    move/from16 v30, v3

    move/from16 v32, v4

    move/from16 v36, v5

    move/from16 v37, v7

    invoke-direct/range {v22 .. v44}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 p0, v6

    move/from16 p1, v8

    move/from16 v2, v21

    move/from16 v3, v45

    move/from16 v4, v46

    move/from16 v5, v47

    move/from16 v6, v48

    move/from16 v8, v49

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItemsByDeviceId$lambda$17(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 50

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v21, v2

    move/from16 v45, v3

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    const/16 v22, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v28, v22

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v46, v4

    move-object/from16 v29, v22

    goto :goto_2

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    move/from16 v46, v4

    :goto_2
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v47, v5

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v31

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v48, v6

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v33

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    move/from16 p0, v7

    move/from16 v49, v8

    invoke-interface {v1, v6}, LS2/c;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p1

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_2

    :goto_3
    move/from16 v0, p3

    move-object/from16 v38, v22

    goto :goto_4

    :cond_2
    invoke-interface {v1, v8}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 p3, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v44

    move/from16 v20, v0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v22, v0

    move/from16 v27, v2

    move/from16 v30, v3

    move/from16 v32, v4

    move/from16 v36, v5

    move/from16 v37, v7

    invoke-direct/range {v22 .. v44}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 p0, v6

    move/from16 p1, v8

    move/from16 v2, v21

    move/from16 v3, v45

    move/from16 v4, v46

    move/from16 v5, v47

    move/from16 v6, v48

    move/from16 v8, v49

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItemsByTypeAndDeviceId$lambda$16(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 49

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->typeToInt(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2, v3}, LS2/c;->i(IJ)V

    const/4 v2, 0x2

    move-object/from16 v3, p3

    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p4, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v22

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    move/from16 v20, v2

    move/from16 v44, v3

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    const/16 v21, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v27, v21

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v27, v3

    :goto_1
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v45, v4

    move-object/from16 v28, v21

    goto :goto_2

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    move/from16 v45, v4

    :goto_2
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v46, v5

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v30

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v47, v6

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v32

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    move/from16 p0, v7

    move/from16 v48, v8

    invoke-interface {v1, v6}, LS2/c;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_2

    :goto_3
    move/from16 v0, p3

    move-object/from16 v37, v21

    goto :goto_4

    :cond_2
    invoke-interface {v1, v8}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v38

    move/from16 p3, v0

    move/from16 v0, p4

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 p4, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v19, v0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v21, v0

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v31, v4

    move/from16 v35, v5

    move/from16 v36, v7

    invoke-direct/range {v21 .. v43}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 p0, v6

    move/from16 p2, v8

    move/from16 v2, v20

    move/from16 v3, v44

    move/from16 v4, v45

    move/from16 v5, v46

    move/from16 v6, v47

    move/from16 v8, v48

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getItemsGroupByDeviceIdNotEquals$lambda$10(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/Map;
    .locals 51

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "distinct_deviceId"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "id"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "position"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIcon"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "touchIconUrl"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "dominant"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "type"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "itemId"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "titleState"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceName"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "deviceId"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "dirty"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    const-string v0, "deleted"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 p0, v0

    const-string v0, "accountName"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "accountType"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 p3, v0

    const-string v0, "sync1"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "sync2"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "sync3"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "sync4"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "sync5"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v21

    if-eqz v21, :cond_e

    move/from16 v21, v15

    invoke-interface {v1, v2}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-static {v15, v0}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    move/from16 v22, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    move/from16 v22, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v2

    :goto_1
    invoke-interface {v1, v3}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v4}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v5}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v9}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v10}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v11}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v12}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v13}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v14}, LS2/c;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    move/from16 v2, v21

    invoke-interface {v1, v2}, LS2/c;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v0

    move/from16 v0, p0

    invoke-interface {v1, v0}, LS2/c;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_7

    move-object/from16 v23, v15

    move/from16 v15, p1

    invoke-interface {v1, v15}, LS2/c;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_6

    move/from16 p1, v15

    move/from16 v15, p3

    invoke-interface {v1, v15}, LS2/c;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_5

    move/from16 p3, v15

    move/from16 v15, v16

    invoke-interface {v1, v15}, LS2/c;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_4

    move/from16 v16, v15

    move/from16 v15, v17

    invoke-interface {v1, v15}, LS2/c;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move/from16 v17, v15

    move/from16 v15, v18

    invoke-interface {v1, v15}, LS2/c;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_2

    move/from16 v18, v15

    move/from16 v15, v19

    invoke-interface {v1, v15}, LS2/c;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1

    move/from16 v19, v15

    move/from16 v15, v20

    invoke-interface {v1, v15}, LS2/c;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_a

    move/from16 p0, v0

    move/from16 v20, v15

    move-object/from16 v0, v21

    :goto_2
    move v15, v2

    move/from16 v2, v22

    goto/16 :goto_0

    :cond_1
    move/from16 v19, v15

    :goto_3
    move/from16 v15, v20

    goto :goto_5

    :cond_2
    move/from16 v18, v15

    goto :goto_3

    :cond_3
    move/from16 v17, v15

    goto :goto_3

    :cond_4
    move/from16 v16, v15

    goto :goto_3

    :cond_5
    move/from16 p3, v15

    goto :goto_3

    :cond_6
    move/from16 p1, v15

    goto :goto_3

    :cond_7
    move-object/from16 v23, v15

    goto :goto_3

    :cond_8
    move-object/from16 v21, v0

    move-object/from16 v23, v15

    move/from16 v15, v20

    :goto_4
    move/from16 v0, p0

    goto :goto_5

    :cond_9
    move-object/from16 v23, v15

    move/from16 v15, v20

    move/from16 v2, v21

    move-object/from16 v21, v0

    goto :goto_4

    :cond_a
    :goto_5
    invoke-interface {v1, v3}, LS2/c;->getLong(I)J

    move-result-wide v25

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v1, v5}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 p0, v3

    move/from16 v20, v4

    invoke-interface {v1, v6}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v4

    const/16 v24, 0x0

    if-eqz v4, :cond_b

    move-object/from16 v30, v24

    goto :goto_6

    :cond_b
    invoke-interface {v1, v7}, LS2/c;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v30, v4

    :goto_6
    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v47, v5

    move-object/from16 v31, v24

    goto :goto_7

    :cond_c
    invoke-interface {v1, v8}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v4

    move/from16 v47, v5

    :goto_7
    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v48, v6

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move-object/from16 v6, p2

    move/from16 v49, v7

    iget-object v7, v6, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v33

    move v5, v8

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v50, v9

    invoke-interface {v1, v12}, LS2/c;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    iget-object v9, v6, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v9, v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v35

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface {v1, v14}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move v9, v5

    invoke-interface {v1, v0}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_d

    :goto_8
    move/from16 p1, v0

    move-object/from16 v40, v24

    move/from16 v0, p3

    goto :goto_9

    :cond_d
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_8

    :goto_9
    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 p3, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v44

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v45

    invoke-interface {v1, v15}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v19, v0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v24, v0

    move/from16 v29, v3

    move/from16 v32, v4

    move/from16 v34, v7

    move/from16 v38, v8

    move/from16 v39, v5

    invoke-direct/range {v24 .. v46}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p0

    move/from16 p0, p1

    move/from16 p1, v6

    move v8, v9

    move/from16 v4, v20

    move-object/from16 v0, v21

    move/from16 v5, v47

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v9, v50

    move/from16 v20, v15

    goto/16 :goto_2

    :cond_e
    move-object/from16 v21, v0

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v21

    :goto_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getListItems$lambda$9(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 50

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v21, v2

    move/from16 v45, v3

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    const/16 v22, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v28, v22

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v46, v4

    move-object/from16 v29, v22

    goto :goto_2

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    move/from16 v46, v4

    :goto_2
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v47, v5

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v31

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v48, v6

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v33

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    move/from16 p0, v7

    move/from16 v49, v8

    invoke-interface {v1, v6}, LS2/c;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p1

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_2

    :goto_3
    move/from16 v0, p3

    move-object/from16 v38, v22

    goto :goto_4

    :cond_2
    invoke-interface {v1, v8}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 p3, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v44

    move/from16 v20, v0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v22, v0

    move/from16 v27, v2

    move/from16 v30, v3

    move/from16 v32, v4

    move/from16 v36, v5

    move/from16 v37, v7

    invoke-direct/range {v22 .. v44}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 p0, v6

    move/from16 p1, v8

    move/from16 v2, v21

    move/from16 v3, v45

    move/from16 v4, v46

    move/from16 v5, v47

    move/from16 v6, v48

    move/from16 v8, v49

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getMaxPosition$lambda$19(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, LS2/c;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LS2/c;->getLong(I)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final getMaxPositionByDeviceId$lambda$20(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, LS2/c;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LS2/c;->getLong(I)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final getObservableItems$lambda$7(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 50

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "_connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    :try_start_0
    invoke-interface {v1, v2, v3}, LS2/c;->x(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "position"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "touchIcon"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "touchIconUrl"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dominant"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    const-string v10, "itemId"

    invoke-static {v1, v10}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v10

    const-string v11, "titleState"

    invoke-static {v1, v11}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceName"

    invoke-static {v1, v12}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceId"

    invoke-static {v1, v13}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dirty"

    invoke-static {v1, v14}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleted"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "accountName"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "accountType"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 p3, v15

    const-string v15, "sync1"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "sync2"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "sync3"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "sync4"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "sync5"

    invoke-static {v1, v15}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v21, v2

    move/from16 v45, v3

    invoke-interface {v1, v5}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v3

    const/16 v22, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v28, v22

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, LS2/c;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v28, v3

    :goto_1
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v46, v4

    move-object/from16 v29, v22

    goto :goto_2

    :cond_1
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    move/from16 v46, v4

    :goto_2
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v47, v5

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToType(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v31

    invoke-interface {v1, v10}, LS2/c;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v48, v6

    invoke-interface {v1, v11}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__quickAccessTypeConverter:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->intToTitleState(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v33

    invoke-interface {v1, v12}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface {v1, v13}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v1, v14}, LS2/c;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    move/from16 p0, v7

    move/from16 v49, v8

    invoke-interface {v1, v6}, LS2/c;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p1

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_2

    :goto_3
    move/from16 v0, p3

    move-object/from16 v38, v22

    goto :goto_4

    :cond_2
    invoke-interface {v1, v8}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v39

    move/from16 p3, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v40

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v1, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v44

    move/from16 v20, v0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v22, v0

    move/from16 v27, v2

    move/from16 v30, v3

    move/from16 v32, v4

    move/from16 v36, v5

    move/from16 v37, v7

    invoke-direct/range {v22 .. v44}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 p0, v6

    move/from16 p1, v8

    move/from16 v2, v21

    move/from16 v3, v45

    move/from16 v4, v46

    move/from16 v5, v47

    move/from16 v6, v48

    move/from16 v8, v49

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method public static synthetic h(Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT deviceId, deviceName, MAX(CAST(sync5 AS INTEGER)) AS latest_sync5 FROM quickaccess_item WHERE deviceId != ? AND deleted = 0 GROUP BY deviceId ORDER BY latest_sync5 DESC, deviceId ASC"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemDeviceNamesAndDeviceIdsNotEquals$lambda$12(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "\n    SELECT * FROM (\n        SELECT *, (SELECT 1 + COUNT(*) FROM quickaccess_item innerItem WHERE\n            innerItem.deviceId = (?) AND innerItem.itemId = outerItem.itemId\n            AND innerItem.deleted = 0 AND innerItem.sync5 > outerItem.sync5) as rank_temp\n        FROM quickaccess_item outerItem  WHERE itemId > 0 AND deleted = 0 AND deviceId = (?)\n    ) WHERE rank_temp > 1\n    "

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getDuplicateDefaultItemsByDeviceId$lambda$23(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final insertItems$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__insertAdapterOfQuickAccessItemEntity_1:LJ2/f;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p2, p1}, LJ2/f;->insert(LS2/a;Ljava/lang/Iterable;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;LS2/a;)I
    .locals 1

    const-string v0, "SELECT COUNT(*) from quickaccess_item WHERE deviceId = ? and deleted = 0"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getCountByDeviceId$lambda$18(Ljava/lang/String;Ljava/lang/String;LS2/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic k(JLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE id = ?"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemById$lambda$15(Ljava/lang/String;JLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT url FROM quickaccess_item WHERE deviceId = ? AND deleted = 0 ORDER BY position, url ASC"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemUrlsByDeviceId$lambda$11(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 7

    const-string v0, "UPDATE quickaccess_item SET `url` = ?, `deleted` = 1, `dirty` = 1, `sync5` = ? WHERE deviceId = ? and url = ?"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->updateDeleteState$lambda$24(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->updateItems$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM quickaccess_item WHERE deviceId != ?"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteByDeviceIdNot$lambda$29(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteByUrls$lambda$26(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(LS2/a;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM quickaccess_item WHERE deviceId = ? and type != ?"

    invoke-static {v0, p3, p2, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteByTypeNot$lambda$27(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "UPDATE quickaccess_item SET accountName = ?, accountType = ?, dirty = 1, sync5 = ? WHERE accountName is NULL OR accountName <> ?"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->updateQuickAccessOnSignIn$lambda$28(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM quickaccess_item WHERE sync1 = ?"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteBySyncKey$lambda$30(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM quickaccess_item WHERE deviceId = ? and url=?"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteByUrl$lambda$25(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/lang/String;LS2/a;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "SELECT MAX(position) from quickaccess_item WHERE deviceId = ? and deleted = 0"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getMaxPosition$lambda$19(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final updateDeleteState$lambda$24(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p6, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p6, 0x1

    :try_start_0
    invoke-interface {p0, p6, p1}, LS2/c;->x(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p2, p3}, LS2/c;->i(IJ)V

    const/4 p1, 0x3

    invoke-interface {p0, p1, p4}, LS2/c;->x(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {p0, p1, p5}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final updateItem$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;LS2/a;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__updateAdapterOfQuickAccessItemEntity:LJ2/e;

    invoke-virtual {p0, p2, p1}, LJ2/e;->handle(LS2/a;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final updateItems$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__updateAdapterOfQuickAccessItemEntity_1:LJ2/e;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p2, p1}, LJ2/e;->handleMultiple(LS2/a;Ljava/lang/Iterable;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final updateQuickAccessOnSignIn$lambda$28(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p4, 0x1

    :try_start_0
    invoke-interface {p0, p4, p1}, LS2/c;->x(ILjava/lang/String;)V

    const/4 p4, 0x2

    invoke-interface {p0, p4, p2}, LS2/c;->x(ILjava/lang/String;)V

    const/4 p2, 0x3

    invoke-interface {p0, p2, p3}, LS2/c;->x(ILjava/lang/String;)V

    const/4 p2, 0x4

    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method public static synthetic v(LS2/a;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM quickaccess_item WHERE type = ? AND deviceId = ? AND `deleted` = 0 ORDER BY position, url ASC"

    invoke-static {v0, p2, p1, p3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getItemsByTypeAndDeviceId$lambda$16(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteItems$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;LS2/a;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->addItem$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;LS2/a;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic y(Ljava/lang/String;LS2/a;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "SELECT MAX(position) AS position FROM quickaccess_item WHERE deviceId = ?"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->getMaxPositionByDeviceId$lambda$20(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->insertItems$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public applyItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 9
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$applyItems$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$applyItems$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lib/c;)V

    invoke-static {v0, p5, v8}, LA/b;->h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteByDeviceIdNot(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/o;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/o;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p1, v1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteBySyncKey(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "syncKey"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/o;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/o;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, v0}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    return-void
.end method

.method public deleteByTypeNot(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lib/c;)Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/n;

    invoke-direct {v1, p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/n;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p3, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteByUrl(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p3, v0, p1, p2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteByUrls(Ljava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
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

    const-string v0, "DELETE FROM quickaccess_item WHERE deviceId = ? and url in ("

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, LE5/t;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/q;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p3, v1, p1, p2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;
    .locals 10
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

    move-object v1, p0

    iget-object v8, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v9, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)V

    move-object/from16 v0, p6

    invoke-static {v8, v0, v9}, LA/b;->h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method

.method public deleteItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/k;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteItems(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;Ljava/util/List;Lib/c;)V

    invoke-static {v0, p3, v1}, LA/b;->h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteSyncableUrls(Ljava/lang/String;Ljava/util/List;JLib/c;)Ljava/lang/Object;
    .locals 0
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

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;->deleteSyncableUrls(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/lang/String;Ljava/util/List;JLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCountByDeviceId(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/o;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {p0, p1, p1, v0}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getCursorForAllSyncItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v0, "SELECT * FROM quickaccess_item WHERE accountType = ?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, LJ2/d0;->U(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, LJ2/U;->query$default(LJ2/U;LT2/g;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    throw p1
.end method

.method public getCursorForQueryLocalKeys(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v0, "SELECT sync1 FROM quickaccess_item WHERE accountType = ?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, LJ2/d0;->U(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, LJ2/U;->query$default(LJ2/U;LT2/g;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    throw p1
.end method

.method public getCursorForToBeSyncedItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v0, "SELECT * FROM quickaccess_item WHERE accountType = ? AND dirty = 1"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, LJ2/d0;->U(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, LJ2/U;->query$default(LJ2/U;LT2/g;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    throw p1
.end method

.method public getDuplicateDefaultItemsByDeviceId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/m;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/m;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getItem(ILjava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, LK9/b;

    invoke-direct {v1, p1, p0, p2}, LK9/b;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v0, p3, v1, p0, p0}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItem(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/l;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;I)V

    const/4 p0, 0x1

    invoke-static {v0, p3, v1, p0, p0}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemById(J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/r;

    invoke-direct {v1, p1, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/r;-><init>(JLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, p0, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    return-object p0
.end method

.method public getItemByRefererUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 2
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

    const-string v0, "refererUrl"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/l;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    return-object p0
.end method

.method public getItemBySyncKey(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "syncKey"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/m;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, p0, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    return-object p0
.end method

.method public getItemByUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/l;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;I)V

    const/4 p0, 0x1

    invoke-static {v0, p0, p0, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    return-object p0
.end method

.method public getItemDeviceNamesAndDeviceIdsNotEquals(Ljava/lang/String;)LQc/h;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "discardDeviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    const-string v0, "quickaccess_item"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/o;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/o;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, v1}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public getItemUrlsByDeviceId(Ljava/lang/String;)LQc/h;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    const-string v0, "quickaccess_item"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/o;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/o;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, v1}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public getItems(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/m;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/m;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, p0, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getItemsByDeviceId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/m;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/m;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getItemsByTypeAndDeviceId(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/n;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getItemsGroupByDeviceIdNotEquals(Ljava/lang/String;)LQc/h;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "discardDeviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    const-string v1, "quickaccess_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/m;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/m;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public getListItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/m;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/m;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v0, p2, v1, p0, p0}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMaxPosition(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/o;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/o;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, p1, v1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMaxPositionByDeviceId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/o;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/o;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {p0, p1, p1, v0}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getObservableItems(Ljava/lang/String;)LQc/h;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    const-string v1, "quickaccess_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/m;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/m;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public insertItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/k;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public updateDeleteState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLib/c;)Ljava/lang/Object;
    .locals 7
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;

    move-object v0, v6

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p6, v6, p1, p2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public updateItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1, v1}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public updateItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/k;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public updateQuickAccessOnSignIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p4, v0, p1, p2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
