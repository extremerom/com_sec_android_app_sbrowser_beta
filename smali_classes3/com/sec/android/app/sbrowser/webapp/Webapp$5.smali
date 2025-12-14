.class Lcom/sec/android/app/sbrowser/webapp/Webapp$5;
.super Lcom/sec/android/app/sbrowser/tab/Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/webapp/Webapp;->createContextmenuPopulator()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$5;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    return-void
.end method


# virtual methods
.method public openInNewTab(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$5;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->c(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$5;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->c(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No related Activity Found : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "Webapp"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
