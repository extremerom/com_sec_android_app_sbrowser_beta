.class Lcom/sec/android/app/sbrowser/webapp/Webapp$3;
.super Lcom/sec/android/app/sbrowser/tab/Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/webapp/Webapp;->onNativeInitializationSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;Lcom/sec/terrace/Terrace;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$3;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    return-void
.end method


# virtual methods
.method public supportPullToRefresh()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$3;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp;->mWebAppActivity:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->supportPullToRefresh()Z

    move-result p0

    return p0
.end method
