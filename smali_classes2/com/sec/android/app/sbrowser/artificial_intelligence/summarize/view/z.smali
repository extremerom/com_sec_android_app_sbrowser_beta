.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->g(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public onMoreLanguageItemSelected()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/z;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V

    return-void
.end method
