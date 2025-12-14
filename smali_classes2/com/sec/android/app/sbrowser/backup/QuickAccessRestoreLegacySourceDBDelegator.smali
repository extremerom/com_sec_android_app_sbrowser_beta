.class public final Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;",
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
        "<init>",
        "()V",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "backupDbCursor",
        "Landroid/database/Cursor;",
        "selection",
        "",
        "selectionArgs",
        "",
        "openRestoreDatabase",
        "",
        "restoreAbsolutePath",
        "canRestoreDB",
        "query",
        "isQAEdited",
        "queryBuilder",
        "Landroid/database/sqlite/SQLiteQueryBuilder;",
        "getQuickAccessEntity",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "nextValueExist",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator$Companion;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->Companion:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->selectionArgs:Ljava/util/List;

    return-void
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

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

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

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_f

    if-eqz v4, :cond_e

    const-string v5, "title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

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

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_b

    if-eqz v5, :cond_a

    const-string v6, "position"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_9

    if-eqz v5, :cond_8

    const-string v6, "touchicon"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7

    if-eqz v5, :cond_6

    const-string v6, "dominant"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_5

    if-eqz v5, :cond_4

    const-string v6, "itemId"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_3

    if-eqz v5, :cond_2

    const-string v6, "TYPE"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->valueOf(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v14

    invoke-static {v14, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const-string v2, "touchiconUrl"

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

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
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "restoreAbsolutePath"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/databases/pintab.db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->db:Landroid/database/sqlite/SQLiteDatabase;

    return v1
.end method

.method public query(ZLandroid/database/sqlite/SQLiteQueryBuilder;)Z
    .locals 9
    .param p2    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "queryBuilder"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "type = ?"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->selection:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->selectionArgs:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "pintab"

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p1, 0x0

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->selection:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->selectionArgs:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v8, 0x0

    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "position, url ASC"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_1

    return v8

    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const-string v0, "count : "

    const-string v1, "QuickAccessRestoreLegacySourceDBDelegator"

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    const-string v0, "backupDbCursor"

    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-gtz p2, :cond_2

    return v8

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;->backupDbCursor:Landroid/database/Cursor;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p0, "db"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p1
.end method
