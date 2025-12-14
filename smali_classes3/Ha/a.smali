.class public final synthetic LHa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;
.implements Lcom/google/firebase/components/d;
.implements LP4/b;
.implements LO4/f;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils$UpdateCountryAndVariantCallback;
.implements LR5/c;
.implements LR5/a;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarkViewCallback;
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;
.implements Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;
.implements Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;
.implements Lcom/sec/terrace/TerraceJavaScriptCallback;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/sec/android/app/sbrowser/auth/AuthCallback;
.implements Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner$OnDropdownDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LHa/a;->a:I

    iput-object p2, p0, LHa/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LHa/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LHa/a;->a:I

    iput-object p1, p0, LHa/a;->c:Ljava/lang/Object;

    iput-object p3, p0, LHa/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p1, LO4/h;

    iget-object v1, p1, LO4/h;->d:LO4/a;

    iget v2, v1, LO4/a;->b:I

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, LH4/k;

    invoke-virtual {p1, v0, p0, v2}, LO4/h;->d(Landroid/database/sqlite/SQLiteDatabase;LH4/k;I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, LE4/c;->values()[LE4/c;

    move-result-object v2

    array-length v3, v2

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget-object v6, p0, LH4/k;->c:LE4/c;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, v1, LO4/a;->b:I

    sub-int/2addr v7, v6

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, LH4/k;->a()LH4/j;

    move-result-object v6

    iget-object v10, p0, LH4/k;->a:Ljava/lang/String;

    if-eqz v10, :cond_3

    iput-object v10, v6, LH4/j;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    iput-object v5, v6, LH4/j;->c:LE4/c;

    iget-object v5, p0, LH4/k;->b:[B

    iput-object v5, v6, LH4/j;->b:[B

    invoke-virtual {v6}, LH4/j;->a()LH4/k;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v7}, LO4/h;->d(Landroid/database/sqlite/SQLiteDatabase;LH4/k;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null priority"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null backendName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "event_id IN ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v9

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x1

    if-ge v1, v2, :cond_6

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO4/b;

    iget-wide v2, v2, LO4/b;->a:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    if-ge v1, v2, :cond_5

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "value"

    const-string v2, "event_id"

    const-string v3, "name"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "event_metadata"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v0, LO4/g;

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LO4/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO4/b;

    iget-wide v1, v0, LO4/b;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v1, v0, LO4/b;->c:LH4/i;

    invoke-virtual {v1}, LH4/i;->c()LH4/h;

    move-result-object v1

    iget-wide v2, v0, LO4/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO4/g;

    iget-object v6, v5, LO4/g;->a:Ljava/lang/String;

    iget-object v5, v5, LO4/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, LH4/h;->b()LH4/i;

    move-result-object v1

    new-instance v4, LO4/b;

    iget-object v0, v0, LO4/b;->b:LH4/k;

    invoke-direct {v4, v2, v3, v0, v1}, LO4/b;-><init>(JLH4/k;LH4/i;)V

    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    return-object v8

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public c(LA7/c;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LHa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/components/b;

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/firebase/components/b;->f:Lcom/google/firebase/components/d;

    invoke-interface {p0, p1}, Lcom/google/firebase/components/d;->c(LA7/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :pswitch_0
    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast v0, Lf1/g;

    iget v0, v0, Lf1/g;->a:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "tv"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "watch"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "auto"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "embedded"

    goto :goto_0

    :cond_4
    const-string p1, ""

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string p1, ""

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string p1, ""

    :goto_0
    new-instance v0, LJ7/a;

    iget-object p0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, LJ7/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->h(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 6

    iget v0, p0, LHa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, LN4/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, LK4/c;->INVALID_PAYLOD:LK4/c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v0, LN4/k;->i:LO4/c;

    check-cast v5, LO4/h;

    invoke-virtual {v5, v2, v3, v4, v1}, LO4/h;->e(JLK4/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, LN4/k;

    iget-object v0, v0, LN4/k;->c:LO4/d;

    check-cast v0, LO4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM events WHERE _id in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LO4/h;->h(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LHa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, LNc/x;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;->a(Landroid/app/Application;LNc/x;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p0, LNc/x;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;->a(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public getDstPos()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->a(Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public initShowBookmarksView()Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;
    .locals 1

    iget v0, p0, LHa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    iget-object p0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->a(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public m(LR5/h;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LHa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/g;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/messaging/g;->b:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-virtual {v1, p0}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-virtual {p1}, LR5/h;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Landroid/content/Intent;)LR5/p;

    move-result-object p0

    new-instance p1, LA2/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LA2/f;-><init>(I)V

    new-instance v0, LA9/b;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LA9/b;-><init>(I)V

    invoke-virtual {p0, p1, v0}, LR5/p;->g(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onAuthResult(Z)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->e(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V

    return-void
.end method

.method public onButtonClicked(I)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->c(Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;Landroid/content/Context;I)V

    return-void
.end method

.method public onComplete(LR5/h;)V
    .locals 0

    iget-object p1, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/messaging/f;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/f;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    iget v0, p0, LHa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->a(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Landroid/app/Activity;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->f(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public onDropDownDismiss()V
    .locals 1

    iget-object v0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow;

    iget-object p0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public onExtractionFinished(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/reader/Reader;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/reader/Reader;->a(Lcom/sec/android/app/sbrowser/reader/Reader;Ljava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V

    return-void
.end method

.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, LHa/a;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    iget-object p0, p0, LHa/a;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->a(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public onOptionClick(I)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;I)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    iget-object p0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onRenameFinished(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V

    return-void
.end method

.method public onStorageInfoCleared()V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->a(Lcom/sec/android/app/sbrowser/settings/website/Website;Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V

    return-void
.end method

.method public onTranslate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->Q(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LHa/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, LHa/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
