.class public Lcom/sec/android/app/sbrowser/utils/ShareHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;,
        Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
    }
.end annotation


# static fields
.field private static sNextRequestCode:I

.field private static sOutstandingIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->sOutstandingIntents:Landroid/util/SparseArray;

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->fireChooserIntentWithCallback(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->startActivityForShareImage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method private static createChooserIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 2

    const v0, 0x7f140f2b

    if-nez p3, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->getInstance()Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p0, p1, v0}, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->addWechatShareIfNeeded(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    new-instance p0, Landroid/content/ComponentName;

    sget p3, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_LAUNCHER_ACTIVITY:I

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.sec.android.app.sbrowser.beta"

    invoke-direct {p0, v1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    const-string p3, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {p1, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    return-object p1
.end method

.method private static createShareIntent(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Landroid/content/Intent;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getFileUris()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getFileUris()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    goto :goto_2

    :cond_2
    const-string v4, "android.intent.action.SEND"

    :goto_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x80000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getFileContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getFileUris()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getFileUris()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    const-string v0, "text/plain"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string v0, "theme"

    const/4 v1, 0x2

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "WEBPAGE"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getShareExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getShareExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_6
    return-object v5
.end method

.method private static fireChooserIntent(Landroid/content/Context;Landroid/content/Intent;ZILcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)Z
    .locals 1
    .param p4    # Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    const p2, 0x7f0b0074

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    if-eq p3, p2, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p3, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;->onTargetChosen()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "ShareHelper"

    const-string p1, "shareUrl - share related activity is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static fireChooserIntentWithCallback(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->generateNextRequestCode()I

    move-result v0

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->sOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "ShareHelper"

    const-string p1, "shareUrl - share related activity is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static generateNextRequestCode()I
    .locals 2

    sget v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->sNextRequestCode:I

    add-int/lit16 v1, v0, 0x7d0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x64

    sput v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->sNextRequestCode:I

    return v1
.end method

.method public static isRequestCodeForShare(I)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->sOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isShareToNote(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.app.notes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isSupportedActionSendActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShareHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1
.end method

.method public static onActivityResult(II)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->sOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    sget-object v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->sOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->a(Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;I)V

    :cond_0
    return-void
.end method

.method private static queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static shareImage(Landroid/content/Context;[BZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v5, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;

    invoke-direct {v5, p4, p2, p0, p5}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->saveImage(Landroid/content/Context;Ljava/lang/String;[BZLjava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;)V

    return-void
.end method

.method public static showShareDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    return-void
.end method

.method public static showShareDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setFileContentType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setFileUris(Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setCallback(Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    return-void
.end method

.method public static showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z
    .locals 4

    const-string v0, "ShareHelper"

    const-string v1, "showShareDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->createShareIntent(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getCallback()Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getChooserExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getFromTools()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getGridAreaDirectionForPopOver()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getCallback()Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    move-result-object p0

    invoke-static {v1, v0, v2, v3, p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->fireChooserIntent(Landroid/content/Context;Landroid/content/Intent;ZILcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)Z

    move-result p0

    return p0

    :cond_1
    const/high16 v2, 0x3000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    move-result p0

    return p0
.end method

.method public static startActivityForShare(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "startActivityForShare"

    const-string v1, "ShareHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "activityName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->isSupportedActionSendActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->isShareToNote(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ShareToNote"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "action_send_addition"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "web_card"

    const-string v2, "content_type"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.app.sbrowser.beta.INTENT_SAVE_SCREEN_TO_NOTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "web_clip"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "android.intent.extra.TEXT"

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0xb080000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_2

    const-string p1, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static startActivityForShareImage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "startActivityForShareImage start"

    const-string v1, "ShareHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->getUriForShareImageFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    check-cast p0, Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-static {p0, p3, p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V

    const-string p0, "startActivityForShareImage end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
