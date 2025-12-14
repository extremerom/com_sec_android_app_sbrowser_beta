.class Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->i(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;->onDialogNegativeClick(Landroidx/fragment/app/u;)V

    return-void
.end method
