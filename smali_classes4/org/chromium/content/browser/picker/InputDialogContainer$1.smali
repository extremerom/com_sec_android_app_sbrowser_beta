.class Lorg/chromium/content/browser/picker/InputDialogContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$adapter:Lorg/chromium/content/browser/picker/DateTimeSuggestionListAdapter;

.field final synthetic val$dialogType:I

.field final synthetic val$dialogValue:D

.field final synthetic val$max:D

.field final synthetic val$min:D

.field final synthetic val$step:D


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/picker/InputDialogContainer;Lorg/chromium/content/browser/picker/DateTimeSuggestionListAdapter;IDDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    iput-object p2, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$adapter:Lorg/chromium/content/browser/picker/DateTimeSuggestionListAdapter;

    iput p3, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$dialogType:I

    iput-wide p4, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$dialogValue:D

    iput-wide p6, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$min:D

    iput-wide p8, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$max:D

    iput-wide p10, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$step:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$adapter:Lorg/chromium/content/browser/picker/DateTimeSuggestionListAdapter;

    invoke-virtual {p1}, Lorg/chromium/content/browser/picker/DateTimeSuggestionListAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-virtual {p1}, Lorg/chromium/content/browser/picker/InputDialogContainer;->dismissDialog()V

    iget-object v0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    iget v1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$dialogType:I

    iget-wide v2, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$dialogValue:D

    iget-wide v4, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$min:D

    iget-wide v6, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$max:D

    iget-wide v8, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$step:D

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/content/browser/picker/InputDialogContainer;->showPickerDialog(IDDDD)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->val$adapter:Lorg/chromium/content/browser/picker/DateTimeSuggestionListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;

    invoke-virtual {p1}, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->value()D

    move-result-wide p1

    iget-object p3, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {p3}, Lorg/chromium/content/browser/picker/InputDialogContainer;->c(Lorg/chromium/content/browser/picker/InputDialogContainer;)Lorg/chromium/content/browser/picker/InputDialogContainer$InputActionDelegate;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lorg/chromium/content/browser/picker/InputDialogContainer$InputActionDelegate;->replaceDateTime(D)V

    iget-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-virtual {p1}, Lorg/chromium/content/browser/picker/InputDialogContainer;->dismissDialog()V

    iget-object p0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$1;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-static {p0}, Lorg/chromium/content/browser/picker/InputDialogContainer;->d(Lorg/chromium/content/browser/picker/InputDialogContainer;)V

    :goto_0
    return-void
.end method
