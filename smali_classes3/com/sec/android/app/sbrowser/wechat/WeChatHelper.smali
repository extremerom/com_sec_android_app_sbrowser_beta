.class public Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->sInstance:Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->sInstance:Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->sInstance:Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;

    return-void
.end method


# virtual methods
.method public addWechatShareIfNeeded(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public destroy()V
    .locals 1

    const-string p0, "WeChatHelper"

    const-string v0, "destroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isSupported()Z
    .locals 1

    const-string p0, "WeChatHelper"

    const-string v0, "Wechat share is Not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setMainActivity(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    return-void
.end method
