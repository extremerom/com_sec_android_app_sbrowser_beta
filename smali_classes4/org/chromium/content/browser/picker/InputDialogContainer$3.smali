.class Lorg/chromium/content/browser/picker/InputDialogContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/picker/InputDialogContainer;->showSuggestionDialog(IDDDD[Lorg/chromium/content/browser/picker/DateTimeSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/picker/InputDialogContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$3;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$3;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {v0}, Lorg/chromium/content/browser/picker/InputDialogContainer;->a(Lorg/chromium/content/browser/picker/InputDialogContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$3;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {p1}, Lorg/chromium/content/browser/picker/InputDialogContainer;->b(Lorg/chromium/content/browser/picker/InputDialogContainer;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$3;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {p1}, Lorg/chromium/content/browser/picker/InputDialogContainer;->d(Lorg/chromium/content/browser/picker/InputDialogContainer;)V

    iget-object p0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$3;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {p0}, Lorg/chromium/content/browser/picker/InputDialogContainer;->c(Lorg/chromium/content/browser/picker/InputDialogContainer;)Lorg/chromium/content/browser/picker/InputDialogContainer$InputActionDelegate;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content/browser/picker/InputDialogContainer$InputActionDelegate;->cancelDateTimeDialog()V

    :cond_0
    return-void
.end method
