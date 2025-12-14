.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->getMoreLangView(Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;->openLangPackSettings()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->dismissDropDown()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;->val$delegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->sendEventLog()V

    return-void
.end method
