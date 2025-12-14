.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "si__CustomTabActivity"

    const-string v0, "current custom tab is null or terrace is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
