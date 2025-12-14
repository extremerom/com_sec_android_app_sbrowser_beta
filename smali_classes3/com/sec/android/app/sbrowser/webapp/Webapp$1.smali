.class Lcom/sec/android/app/sbrowser/webapp/Webapp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/webapp/Webapp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "getCurrentUrl"

    const-string v1, "Webapp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->b(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "current webapp is null or terrace is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->b(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->d(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->b(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->b(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
