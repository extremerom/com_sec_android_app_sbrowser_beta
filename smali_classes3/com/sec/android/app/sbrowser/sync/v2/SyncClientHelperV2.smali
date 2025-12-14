.class Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$SyncServiceHandler;
    }
.end annotation


# static fields
.field private static final SyncServiceHandler_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$SyncServiceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncClientHelperV2"

.field private static sInstance:Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;


# instance fields
.field private mClientDataVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContentAuthority:Ljava/lang/String;

.field private mContentsId:Ljava/lang/String;

.field private mIsSyncable:Z

.field private mSupprtSyncUri:Ljava/lang/String;

.field private mSyncMeta:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$1;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$1;-><init>()V

    const-string v2, "isSyncable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$2;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$2;-><init>()V

    const-string v2, "isColdStartable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$3;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$3;-><init>()V

    const-string v2, "lastSyncTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$4;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$4;-><init>()V

    const-string v2, "prepare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$5;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$5;-><init>()V

    const-string v2, "getAttachmentInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$6;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$6;-><init>()V

    const-string v2, "upload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$7;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$7;-><init>()V

    const-string v2, "download"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$8;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$8;-><init>()V

    const-string v2, "deleteItem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$9;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$9;-><init>()V

    const-string v2, "complete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mIsSyncable:Z

    const-string v1, "init SyncClientHelper"

    const-string v2, "SyncClientHelperV2"

    invoke-static {v2, v1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mClientMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mClientDataVersionMap:Ljava/util/Map;

    const-string v1, "sync_meta"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSyncMeta:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->register(Landroid/content/Context;)V

    const-string p0, "init SyncClientHelper finished"

    invoke-static {v2, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mClientMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSyncMeta:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->sInstance:Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->sInstance:Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->sInstance:Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private register(Landroid/content/Context;)V
    .locals 13

    const-string v0, "sync_items"

    const-string v1, "sync_item"

    const-string v2, ", "

    const-string v3, "SyncClientHelperV2"

    const-string v4, "register - xml3 : "

    const-string v5, "register - xml2 : "

    const-string v6, "register - xml1 : "

    const-string v7, "content://"

    const-string v8, "register - meta read : "

    const-string v9, "register - meta read : app info = "

    :try_start_0
    const-string v10, "register - started."

    invoke-static {v3, v10}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-nez v11, :cond_0

    const-string p0, "register - meta read : metadata is null !!"

    invoke-static {v9, v3, p0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    const-string v10, "scloud_contents_id"

    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mContentsId:Ljava/lang/String;

    const-string v10, "scloud_support_authority"

    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSupprtSyncUri:Ljava/lang/String;

    const-string v10, "scloud_data_authority"

    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mContentAuthority:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mContentsId:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSupprtSyncUri:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mContentAuthority:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mContentsId:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSupprtSyncUri:Ljava/lang/String;

    if-nez v8, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSupprtSyncUri:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSupprtSyncUri:Ljava/lang/String;

    const-string v7, "scloud_support_sync"

    invoke-virtual {v11, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mIsSyncable:Z

    if-nez v7, :cond_2

    const-string p0, "register - meta read : not support!!"

    invoke-static {v3, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v10, "xml"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v1, v10, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_4
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register - xml4 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const-string v4, "name"

    invoke-interface {p1, v9, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data_version"

    invoke-interface {p1, v9, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_5

    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v6

    :try_start_6
    const-string v7, "invalid data_version value : "

    invoke-static {v6, v3, v7}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v6, 0x0

    :goto_1
    const-string v7, "client_impl_class"

    invoke-interface {p1, v9, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "register - xml5 : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", v :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mSupprtSyncUri:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "interface"

    invoke-interface {p1, v9, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v8, "ISCloudSyncClient"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_3

    :cond_6
    :try_start_7
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    invoke-virtual {p0, v4, v6, v5}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->setClientImple(Ljava/lang/String;ILcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v4

    :try_start_8
    const-string v5, "failed cast to ISCloudSyncClient "

    invoke-static {v4, v3, v5}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_9
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    :goto_2
    if-eqz p1, :cond_8

    :try_start_a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p0
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :goto_4
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "XmlResourceParser error :  "

    invoke-static {p0, v3, p1}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    :goto_5
    const-string p0, "register - scloud_contents_id and scloud_support_authority should be define in meta-data of application"

    invoke-static {v9, v3, p0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    return-void

    :goto_6
    const-string p1, "parsing error : "

    invoke-static {p0, v3, p1}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$SyncServiceHandler;

    invoke-interface {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2$SyncServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setClientImple(Ljava/lang/String;ILcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setClientImple name : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncClientHelperV2"

    invoke-static {v1, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/v2/SyncClientHelperV2;->mClientDataVersionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
