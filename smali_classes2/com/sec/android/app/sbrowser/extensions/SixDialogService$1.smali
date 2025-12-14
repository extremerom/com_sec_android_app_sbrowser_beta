.class Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showSixSIUpdateGuideDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

.field final synthetic val$extId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;->val$extId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 0

    return-void
.end method

.method public onOkButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;->val$extId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->setFirstLaunchToFalse(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->d(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->a(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->callAppStore(Landroid/app/Activity;)V

    return-void
.end method
