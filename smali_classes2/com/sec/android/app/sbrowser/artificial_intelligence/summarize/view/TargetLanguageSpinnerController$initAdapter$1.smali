.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController$initAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController$initAdapter$1",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter$SpinnerDelegate;",
        "Ldb/r;",
        "dismissDropDown",
        "()V",
        "",
        "position",
        "setSelection",
        "(I)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController$initAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController$initAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->access$getTargetSpinner$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController$initAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->access$setSpinnerIsClickedByUser$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;Z)V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController$initAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->access$getTargetSpinner$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->setSelection(I)V

    return-void
.end method
