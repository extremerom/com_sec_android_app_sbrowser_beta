.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->initializeCustomMenuItem(Landroid/view/MenuItem;I)Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$4;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$4;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$4;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$4;->val$menuItem:Landroid/view/MenuItem;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
