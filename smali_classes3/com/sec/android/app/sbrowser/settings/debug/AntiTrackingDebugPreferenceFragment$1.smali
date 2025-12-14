.class Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;->setTestTrackerDomains(Ljava/lang/String;)V

    return-void
.end method
