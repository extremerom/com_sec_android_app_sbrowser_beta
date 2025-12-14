.class public final Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0013\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;",
        "",
        "<init>",
        "()V",
        "fetchWallpapers",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
        "loadGalleryFolders",
        "context",
        "Landroid/content/Context;",
        "getProjection",
        "",
        "",
        "()[Ljava/lang/String;",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getProjection()[Ljava/lang/String;
    .locals 8

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const/4 v1, 0x3

    const-string v2, "bucket_display_name"

    const/4 v3, 0x2

    const-string v4, "bucket_id"

    const/4 v5, 0x1

    const-string v6, "_id"

    const/4 v7, 0x0

    if-le p0, v0, :cond_0

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/String;

    aput-object v6, p0, v7

    aput-object v4, p0, v5

    aput-object v2, p0, v3

    const-string v0, "is_favorite"

    aput-object v0, p0, v1

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljava/lang/String;

    aput-object v6, p0, v7

    aput-object v4, p0, v5

    aput-object v2, p0, v3

    :goto_0
    return-object p0
.end method

.method private final loadGalleryFolders(Landroid/content/Context;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;->getProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_f

    :try_start_0
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "bucket_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "is_favorite"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v11, "bucket_display_name"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    move/from16 v17, v4

    move/from16 p0, v5

    :goto_1
    move/from16 v16, v6

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v8, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_8

    :cond_1
    :goto_2
    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    move/from16 p0, v5

    const/4 v5, 0x4

    if-ge v15, v5, :cond_d

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    add-int/lit8 v15, v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v16, v6

    move/from16 v18, v15

    move-object v15, v12

    move/from16 v12, v18

    goto :goto_3

    :cond_2
    move/from16 v16, v6

    :goto_3
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "withAppendedId(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move/from16 v17, v4

    goto/16 :goto_7

    :cond_3
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v17, v4

    const/4 v4, 0x4

    if-ge v6, v4, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v4, -0x1

    move/from16 v6, v16

    if-eq v6, v4, :cond_5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v16, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x4

    if-ge v4, v6, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move/from16 v16, v6

    :cond_6
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x4

    if-ge v4, v6, :cond_7

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v4, "Camera"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    const v4, 0x7f1410ce

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :sswitch_1
    const-string v4, "Screenshots"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    const v4, 0x7f1410d4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :sswitch_2
    const-string v4, "Download"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    const v4, 0x7f1410d0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :sswitch_3
    const-string v4, "Clipped Images"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    const v4, 0x7f1410cf

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_6
    invoke-virtual {v9, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-interface {v9, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    :goto_7
    move/from16 v5, p0

    move/from16 v6, v16

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_d
    move/from16 v17, v4

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x0

    invoke-static {v1, v4}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_f
    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_10

    const-string v7, "Unknown"

    :cond_10
    check-cast v7, Ljava/lang/String;

    new-instance v8, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;

    invoke-direct {v8, v6, v7, v5}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    new-instance v4, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;

    const v5, 0x7f1410d2

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "album_recent"

    invoke-direct {v4, v7, v5, v2}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;

    const v7, 0x7f1410d1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "album_favorite"

    invoke-direct {v5, v6, v0, v3}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v1, v0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1adb3239 -> :sswitch_3
        0x58f52ca8 -> :sswitch_2
        0x61eccfad -> :sswitch_1
        0x77deaf45 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final fetchWallpapers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;->loadGalleryFolders(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
