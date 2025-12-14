.class Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateMoreAddOnsButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "SixPreferencesManager"

    new-instance v0, Landroid/content/Intent;

    const-string v1, "samsungapps://CategoryList/0000005589"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateMoreAddOnsButton - exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string v0, "updateMoreAddOnsButton - GalaxyStore ActivityNotFound."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendGetMoreAddOnsEventLog()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->e(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V

    return-void
.end method
