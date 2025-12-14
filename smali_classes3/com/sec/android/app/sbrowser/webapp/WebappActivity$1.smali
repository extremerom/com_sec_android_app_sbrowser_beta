.class Lcom/sec/android/app/sbrowser/webapp/WebappActivity$1;
.super Landroidx/activity/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-direct {p0, p2}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->A(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;)Lcom/sec/android/app/sbrowser/webapp/Webapp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->A(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;)Lcom/sec/android/app/sbrowser/webapp/Webapp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->goBackIfPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$1;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
