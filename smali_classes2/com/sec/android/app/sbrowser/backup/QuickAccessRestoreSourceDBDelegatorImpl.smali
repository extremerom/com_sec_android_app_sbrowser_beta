.class public final Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00040\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0016R\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010#\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00040%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010(\u001a\u00020\u00048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008(\u0010$\u00a8\u0006*"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;",
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
        "<init>",
        "()V",
        "",
        "sourcePath",
        "kotlin.jvm.PlatformType",
        "getSourceDeviceId",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "isQAEdited",
        "Ldb/r;",
        "setSelectionArgs",
        "(Z)V",
        "Landroid/database/sqlite/SQLiteQueryBuilder;",
        "queryBuilder",
        "setDbCursor",
        "(Landroid/database/sqlite/SQLiteQueryBuilder;)Z",
        "restoreAbsolutePath",
        "openRestoreDatabase",
        "(Ljava/lang/String;)Z",
        "canRestoreDB",
        "()Z",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "getQuickAccessEntity",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "query",
        "(ZLandroid/database/sqlite/SQLiteQueryBuilder;)Z",
        "nextValueExist",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "Landroid/database/Cursor;",
        "backupDbCursor",
        "Landroid/database/Cursor;",
        "selection",
        "Ljava/lang/String;",
        "",
        "selectionArgs",
        "Ljava/util/List;",
        "sourceDeviceId",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private backupDbCursor:Landroid/database/Cursor;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private selection:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectionArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sourceDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->Companion:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selectionArgs:Ljava/util/List;

    return-void
.end method

.method private final getSourceDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;

    const-string v0, "quickaccess_preferences.xml"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->openPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "quickaccess_backup_restore_deviceId"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->getStringValueFromXml(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final setDbCursor(Landroid/database/sqlite/SQLiteQueryBuilder;)Z
    .locals 10

    const-string v0, "quickaccess_item"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selectionArgs:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "position, url ASC"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const-string v2, "count : "

    const-string v3, "QuickAccessRestoreSourceDBDelegatorImpl"

    invoke-static {p1, v2, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-gtz p0, :cond_1

    move v9, v1

    :cond_1
    return v9

    :cond_2
    const-string p0, "backupDbCursor"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "db"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private final setSelectionArgs(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "type = ?"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selectionArgs:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    const-string v0, " AND "

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    const-string v1, "deleted = 0"

    invoke-static {p1, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    const-string v0, "deviceId = ?"

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selection:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->selectionArgs:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->sourceDeviceId:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const-string p0, "sourceDeviceId"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public canRestoreDB()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getQuickAccessEntity()Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 30
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    const-string v3, "backupDbCursor"

    if-eqz v1, :cond_11

    if-eqz v1, :cond_10

    const-string v4, "url"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "getString(...)"

    invoke-static {v9, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_f

    if-eqz v4, :cond_e

    const-string v5, "title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_d

    if-eqz v1, :cond_c

    const-string v4, "titleState"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;->valueOf(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v1

    const-string v4, "valueOf(...)"

    invoke-static {v1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_b

    if-eqz v5, :cond_a

    const-string v6, "position"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_9

    if-eqz v5, :cond_8

    const-string v6, "touchIcon"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7

    if-eqz v5, :cond_6

    const-string v6, "dominant"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_5

    if-eqz v5, :cond_4

    const-string v6, "itemId"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_3

    if-eqz v5, :cond_2

    const-string v6, "type"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->valueOf(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v14

    invoke-static {v14, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const-string v2, "touchIconUrl"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object v5, v0

    const v28, 0x1ffc01

    const/16 v29, 0x0

    const-wide/16 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v5 .. v29}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    return-object v0

    :cond_0
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public nextValueExist()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "backupDbCursor"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public openRestoreDatabase(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "restoreAbsolutePath"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/databases/quickaccess.db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->getSourceDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->sourceDeviceId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "device id is empty : "

    const-string v3, "QuickAccessRestoreSourceDBDelegatorImpl"

    invoke-static {v2, v3, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    return p1

    :cond_1
    const-string p0, "sourceDeviceId"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public query(ZLandroid/database/sqlite/SQLiteQueryBuilder;)Z
    .locals 1
    .param p2    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "queryBuilder"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->setSelectionArgs(Z)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->setDbCursor(Landroid/database/sqlite/SQLiteQueryBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;->backupDbCursor:Landroid/database/Cursor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "backupDbCursor"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
