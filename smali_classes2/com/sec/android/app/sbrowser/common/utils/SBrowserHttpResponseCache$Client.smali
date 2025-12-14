.class public Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field private mOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->mOpened:Z

    if-nez p0, :cond_0

    const-string p0, "SBrowserHttpResponseCache"

    const-string v0, "Client was not opened!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->c()Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->b(Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;)V

    return-void
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;->mOpened:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->c()Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->a(Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;)V

    return-void
.end method
