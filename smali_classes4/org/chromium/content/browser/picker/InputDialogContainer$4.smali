.class Lorg/chromium/content/browser/picker/InputDialogContainer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/picker/InputDialogContainer;->showPickerDialog(IIIIIIIIIDDD)V
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

    iput-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$4;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$4;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {p1}, Lorg/chromium/content/browser/picker/InputDialogContainer;->d(Lorg/chromium/content/browser/picker/InputDialogContainer;)V

    iget-object p0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$4;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {p0}, Lorg/chromium/content/browser/picker/InputDialogContainer;->c(Lorg/chromium/content/browser/picker/InputDialogContainer;)Lorg/chromium/content/browser/picker/InputDialogContainer$InputActionDelegate;

    move-result-object p0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    invoke-interface {p0, p1, p2}, Lorg/chromium/content/browser/picker/InputDialogContainer$InputActionDelegate;->replaceDateTime(D)V

    return-void
.end method
