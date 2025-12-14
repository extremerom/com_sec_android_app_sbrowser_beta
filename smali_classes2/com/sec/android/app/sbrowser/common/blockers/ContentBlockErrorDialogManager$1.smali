.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->showValidationErrorDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "609"

    const-string v0, "6126"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->launchExtensionsContentBlocker(Landroid/content/Context;)V

    return-void
.end method
