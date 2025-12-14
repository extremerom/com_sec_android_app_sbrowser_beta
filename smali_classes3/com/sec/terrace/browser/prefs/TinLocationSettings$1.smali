.class Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/prefs/TinLocationSettings;->promptToEnableLocationSetting(Lorg/chromium/base/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/prefs/TinLocationSettings;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callbackKey:I


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/prefs/TinLocationSettings;Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;->this$0:Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    iput-object p2, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;->val$callbackKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 7
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lb5/p;

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p1, Lb5/p;

    iget-object v0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;->val$callbackKey:I

    iget-object p0, p1, Lb5/h;->a:Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lcom/google/android/gms/common/api/Status;->d:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
