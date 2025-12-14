.class public Lcom/sec/android/app/sbrowser/download/DownloadHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# static fields
.field private static final DANGEROUS_FILE_EXTENSIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DANGEROUS_MIME_TYPE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTERED_FILE_EXTENSIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTERED_MIME_TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECRET_DOWNLOAD_ZIP_MIME_TYPE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDownloadHandler:Lcom/sec/android/app/sbrowser/download/DownloadHandler;


# instance fields
.field private mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mDialog:Lm/l;

.field private mDownloadCallback:Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;

.field private mIsRequestedNotificationPermission:Z

.field private mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "application/vnd.android.package-archive"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->DANGEROUS_MIME_TYPE:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v14, ".shar"

    const-string v15, ".tcsh"

    const-string v1, ".apk"

    const-string v2, ".jar"

    const-string v3, ".dex"

    const-string v4, ".swf"

    const-string v5, ".spl"

    const-string v6, ".crx"

    const-string v7, ".class"

    const-string v8, ".jnlp"

    const-string v9, ".oxt"

    const-string v10, ".bash"

    const-string v11, ".csh"

    const-string v12, ".ksh"

    const-string v13, ".sh"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->DANGEROUS_FILE_EXTENSIONS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "application/zip"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->SECRET_DOWNLOAD_ZIP_MIME_TYPE:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "application/x-mpegurl"

    const-string v2, "application/vnd.apple.mpegurl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->FILTERED_MIME_TYPES:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".m3u8"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->FILTERED_FILE_EXTENSIONS:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mIsRequestedNotificationPermission:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDownloadCallback:Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->lambda$requestNotificationPermission$0(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDownloadCallback:Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;

    return-object p0
.end method

.method private cancelNativeDownload(Landroid/app/Activity;)V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getCallbackID()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v1, ""

    const-string v2, ""

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JJZLandroid/app/Activity;)V

    return-void
.end method

.method private checkDangerousDownloadFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DownloadFile"

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->isValidExtension(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "."

    invoke-static {p1, p0, p2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1
.end method

.method private checkDownloadPermission(Landroid/app/Activity;)Z
    .locals 6

    instance-of v0, p1, Lcom/sec/terrace/TerraceActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    if-eqz v0, :cond_5

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isAtLeastRos()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Checking if WRITE_EXTERNAL_STORAGE permission is granted: "

    const-string v5, "DownloadHandler"

    invoke-static {v3, v4, v5}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_request_permission_storage"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "Checking if permission was priorly requested: "

    invoke-static {v3, v5, v2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showPermissionAlert(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    invoke-static {p1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    :cond_5
    :goto_1
    return v1
.end method

.method private static checkReadPermissionRequired()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static chooseActivity(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/high16 v3, 0x10000

    const-string v4, "android.intent.action.VIEW"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/plain"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "application/octet-stream"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v5, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    goto :goto_2

    :cond_3
    if-nez v1, :cond_1

    const/4 v5, 0x0

    :goto_2
    const/4 v10, 0x1

    if-eqz v5, :cond_9

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->FILTERED_MIME_TYPES:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "2248"

    const-string v1, "DownloadHandler"

    const/4 v12, 0x0

    if-nez v0, :cond_8

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->FILTERED_FILE_EXTENSIONS:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_5

    :cond_4
    const-string v0, "starting Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v10, :cond_5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f140461

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v10, v0

    move-object v13, v1

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140460

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    new-instance v14, Lm/k;

    const v0, 0x7f1501c5

    invoke-direct {v14, v6, v0}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f140462

    invoke-virtual {v14, v0}, Lm/k;->a(I)V

    new-instance v15, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;

    move-object v0, v15

    move-wide/from16 v1, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;-><init>(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v14, v10, v15}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$3;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V

    const v1, 0x7f14049b

    invoke-virtual {v14, v1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$2;

    invoke-direct {v1, v8, v9, v7}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$2;-><init>(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getGlobalFontSize()I

    move-result v1

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v12, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getSALoggingScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_5
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getSALoggingScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v0, "ActivityNotFoundException : Failed to start resolved activity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return v12

    :cond_9
    return v10
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->cancelNativeDownload(Landroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->checkDownloadPermission(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->sDownloadHandler:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->sDownloadHandler:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->sDownloadHandler:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    return-object v0
.end method

.method private static getSALoggingScreenId()Ljava/lang/String;
    .locals 1

    const-string v0, "878"

    return-object v0
.end method

.method private isValidExtension(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$requestNotificationPermission$0(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mIsRequestedNotificationPermission:Z

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_req_permission_notification_download"

    const/4 p3, 0x1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private shouldShowChooserForMimetype(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->DANGEROUS_MIME_TYPE:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->DANGEROUS_FILE_EXTENSIONS:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private showDangerousDownloadWarningPopup(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8825"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0427

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0458

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getMimetype()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->checkDangerousDownloadFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const v1, 0x7f0b0459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f0b0428

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f140464

    goto :goto_1

    :cond_2
    const v2, 0x7f140463

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lm/k;

    const v2, 0x7f1501c5

    invoke-direct {v1, p1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f14049c

    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$10;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$10;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    const v2, 0x7f14049b

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$8;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$8;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    iget-object p1, v0, Lm/k;->a:Lm/h;

    iput-object v1, p1, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->cancelNativeDownload(Landroid/app/Activity;)V

    return-void
.end method

.method private showSecretDownloadZipFileWarningPopup(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0ac8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f140e05

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lm/k;

    const v2, 0x7f1501c5

    invoke-direct {v1, p1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f140e06

    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$7;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    const v2, 0x7f14049b

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$5;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    iget-object p1, v0, Lm/k;->a:Lm/h;

    iput-object v1, p1, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->cancelNativeDownload(Landroid/app/Activity;)V

    return-void
.end method

.method private startDownload(Landroid/app/Activity;)V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getCallbackID()J

    move-result-wide v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilesize()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JJZLandroid/app/Activity;)V

    return-void
.end method

.method private startSaveAsActivity(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "DownloadHandler"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/DownloadDataHolder;->putData(Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Failed to generate data key for SaveAsActivity. Aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->cancelNativeDownload(Landroid/app/Activity;)V

    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_data_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "saveAsActivityParent"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RuntimeException while starting SaveAsActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->cancelNativeDownload(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string v1, "Activity context is null, finishing, or destroyed. Cannot start SaveAsActivity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->cancelNativeDownload(Landroid/app/Activity;)V

    return-void
.end method

.method private truncateFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0xc8

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-lez v3, :cond_1

    invoke-static {v0, v1, v2}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p0, 0xc7

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public checkConditionsAndStartDownload(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->checkDownloadPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->SECRET_DOWNLOAD_ZIP_MIME_TYPE:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getMimetype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isPathSecretDownloadPath(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showSecretDownloadZipFileWarningPopup(Landroid/app/Activity;)V

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->DANGEROUS_MIME_TYPE:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getMimetype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->DANGEROUS_FILE_EXTENSIONS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->startDownloadRequest(Landroid/app/Activity;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->checkAndResetDownloadRelativePath()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDownloadCallback:Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->startInterceptApkDownload(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showDangerousDownloadWarningPopup(Landroid/app/Activity;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public checkReadPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)Z
    .locals 15

    move-object/from16 v11, p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->checkReadPermissionRequired()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v11, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v11, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_request_permission_storage"

    invoke-interface {v4, v5, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v3, v2, :cond_2

    invoke-virtual {v11, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v11, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, p0

    goto :goto_0

    :cond_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    invoke-virtual {p0, v11, v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showPermissionAlert(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-static {v11, v13, v14}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    :goto_1
    return v12
.end method

.method public createRetryConfirmDialog(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 2

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f140bf2

    invoke-virtual {v0, p1}, Lm/k;->a(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$20;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$20;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)V

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$19;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$19;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    const p0, 0x7f140497

    invoke-virtual {p1, p0, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public destroyDialogIfExisted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->destroyPopupIfExist()V

    :cond_1
    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public isRequestedNotificationPermission()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mIsRequestedNotificationPermission:Z

    return p0
.end method

.method public requestNotificationPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isAtLeastTos()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_req_permission_notification_download"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "Checking if permission was priorly requested: "

    const-string v3, "DownloadHandler"

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mIsRequestedNotificationPermission:Z

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/a;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setCurrentPreDownloadInfo(Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    return-void
.end method

.method public shouldIgnoreDownload(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadGlobalConfigUtils;->getDisableChooser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result p2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "shouldIgnoreDownload mimetypeForDisableChooser : mimeType"

    const-string v2, "DownloadHandler"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {p2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldIgnoreDownload : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No activity for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->shouldHandleDocomoFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldShowChooser(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)Z
    .locals 5

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->shouldShowChooserForMimetype(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->isAttachment(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    invoke-static {p1, p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->chooseActivity(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "DownloadHandler"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public showPermissionAlert(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 9

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e01b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1404a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->getRuntimePermissionSpannableString(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b08aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v8, Lcom/sec/android/app/sbrowser/download/DownloadHandler$13;

    const v5, 0x7f0e01b7

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$13;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/content/Context;I[Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {p2, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$15;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)V

    const v2, 0x7f1402c1

    invoke-virtual {p2, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p2

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler$14;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler$14;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    const p1, 0x7f140052

    invoke-virtual {p2, p1, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    iget-object p2, p1, Lm/k;->a:Lm/h;

    const/4 v1, 0x0

    iput-boolean v1, p2, Lm/h;->m:Z

    invoke-virtual {p1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public startDownloadRequest(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\.\\.+"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->setFilename(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->truncateFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->setFilename(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->checkAndResetDownloadRelativePath()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->isFileExisting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getMimetype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/vnd.oma.dd+xml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->mPreDownloadInfo:Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getMimetype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-wifi-config"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isDownloadRenamePopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->startSaveAsActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->startDownload(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
