.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->registerFieldChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->o(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->requestFocusHideKeyboardForSpinner(Landroid/widget/Spinner;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
