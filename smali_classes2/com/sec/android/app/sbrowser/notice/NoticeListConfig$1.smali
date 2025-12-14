.class Lcom/sec/android/app/sbrowser/notice/NoticeListConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;->onFeatureConfigUpdated(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig$1;->this$0:Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "onFeatureConfigUpdated: onFailed "

    const-string p1, "NoticeListConfig"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 8

    const-string v0, "onFeatureConfigUpdated : onFetched"

    const-string v1, "NoticeListConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListConfig$1;->this$0:Lcom/sec/android/app/sbrowser/notice/NoticeListConfig;

    const-string v0, "NoticeVersion"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_privacy_notice_history_version"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "onFeatureConfigUpdated: version info : new : "

    const-string v7, " & previous : "

    invoke-static {p0, v5, v6, v7, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-le p0, v5, :cond_1

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Notice_list.json"

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-nez v5, :cond_0

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string p0, "pref_privacy_notice_history_visited"

    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
