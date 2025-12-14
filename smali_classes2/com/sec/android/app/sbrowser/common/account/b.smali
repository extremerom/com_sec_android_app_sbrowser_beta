.class public final synthetic Lcom/sec/android/app/sbrowser/common/account/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements LT2/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/account/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(LT2/c;)LT2/e;
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/account/b;->b:Landroid/content/Context;

    const-string p0, "callback"

    iget-object v0, p1, LT2/c;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LT2/b;

    invoke-static {v3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, LT2/c;->d:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, LU2/i;

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, LU2/i;-><init>(Landroid/content/Context;Ljava/lang/String;LT2/b;ZZ)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/account/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/b;->b:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->d(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;->a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
