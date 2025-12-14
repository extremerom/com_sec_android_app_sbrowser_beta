.class Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$ActionHomeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionHome()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6001"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
