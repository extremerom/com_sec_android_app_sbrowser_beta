.class Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDialog;->show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

.field final synthetic val$self:Lcom/sec/android/app/sbrowser/extensions/SixDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;->val$self:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mListener:Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;->val$self:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;->onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->a(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method
