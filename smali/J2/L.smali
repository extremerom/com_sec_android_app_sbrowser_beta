.class public final synthetic LJ2/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ2/L;->a:I

    iput-object p2, p0, LJ2/L;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget v0, p0, LJ2/L;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/param/VexFwkParamBaseParcelable;

    invoke-static {p0}, Lcom/samsung/android/vexfwk/param/VexFwkParamBaseParcelable;->a(Lcom/samsung/android/vexfwk/param/VexFwkParamBaseParcelable;)Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;->k(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperColorsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperColorsFragment;->h(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperColorsFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->j(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;->i(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/CategoryViewModel;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->b(Ljava/lang/String;)Lv2/g1;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->n(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;)Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->n(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;)Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->e(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;->b(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase_Impl;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase_Impl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase_Impl;->b(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase_Impl;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment;->k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;

    move-result-object p0

    return-object p0

    :pswitch_d
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/SribObjectCaptureImpl;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/SribObjectCaptureImpl;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/SribObjectCaptureImpl;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/SribCaptureWrapperImpl;

    move-result-object p0

    return-object p0

    :pswitch_f
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/ArcSoftObjectCaptureImpl;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/ArcSoftObjectCaptureImpl;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/ArcSoftObjectCaptureImpl;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/impl/ArcObjectCaptureWrapperImpl;

    move-result-object p0

    return-object p0

    :pswitch_10
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, LU2/i;

    iget-object v0, p0, LU2/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LU2/i;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LU2/i;->a:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getNoBackupFilesDir(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, LU2/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, LU2/h;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LB3/c;

    const/16 v0, 0x8

    invoke-direct {v6, v0}, LB3/c;-><init>(I)V

    iget-object v7, p0, LU2/i;->c:LT2/b;

    iget-boolean v8, p0, LU2/i;->e:Z

    iget-object v4, p0, LU2/i;->a:Landroid/content/Context;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, LU2/h;-><init>(Landroid/content/Context;Ljava/lang/String;LB3/c;LT2/b;Z)V

    goto :goto_0

    :cond_0
    new-instance v1, LU2/h;

    new-instance v12, LB3/c;

    const/16 v0, 0x8

    invoke-direct {v12, v0}, LB3/c;-><init>(I)V

    iget-object v11, p0, LU2/i;->b:Ljava/lang/String;

    iget-boolean v14, p0, LU2/i;->e:Z

    iget-object v10, p0, LU2/i;->a:Landroid/content/Context;

    iget-object v13, p0, LU2/i;->c:LT2/b;

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, LU2/h;-><init>(Landroid/content/Context;Ljava/lang/String;LB3/c;LT2/b;Z)V

    :goto_0
    iget-boolean p0, p0, LU2/i;->g:Z

    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-object v1

    :pswitch_11
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, LA7/h;

    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, LA7/h;->a(Ljava/lang/String;)LS2/a;

    move-result-object p0

    return-object p0

    :pswitch_12
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    return-object p0

    :pswitch_13
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, LJ2/i0;

    invoke-virtual {p0}, LJ2/i0;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, LJ2/i0;->b:Ljava/lang/Object;

    check-cast p0, LJ2/U;

    invoke-virtual {p0, v0}, LJ2/U;->compileStatement(Ljava/lang/String;)LT2/h;

    move-result-object p0

    return-object p0

    :pswitch_14
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_15
    iget-object p0, p0, LJ2/L;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
