.class Lcom/sec/android/app/sbrowser/SBrowserRestartActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserRestartActivity$1;->this$0:Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/SBrowserRestartActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserRestartActivity$1;->this$0:Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserRestartActivity$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;->a(Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;Landroid/content/Intent;)V

    return-void
.end method
