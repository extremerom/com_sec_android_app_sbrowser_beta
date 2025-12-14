.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:LB9/b;

.field public final synthetic b:Ltb/s;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;

.field public final synthetic d:Ltb/s;


# direct methods
.method public synthetic constructor <init>(LB9/b;Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->a:LB9/b;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->b:Ltb/s;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->c:Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->d:Ltb/s;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->c:Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->d:Ltb/s;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->a:LB9/b;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/o;->b:Ltb/s;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->n(LB9/b;Ltb/s;Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;Landroid/content/DialogInterface;)V

    return-void
.end method
