.class Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showUninstallGuideDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 0

    return-void
.end method

.method public onOkButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->a(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "SixDialogService"

    const-string p1, "onOkButtonClicked - activity is null. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->b(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;->openGalaxyStore(Ljava/lang/String;)V

    return-void
.end method
