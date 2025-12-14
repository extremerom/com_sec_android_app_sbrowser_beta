.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$6;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$6;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->discardItemFromPoupForSALogging()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$6;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->j(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$6;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->j(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
