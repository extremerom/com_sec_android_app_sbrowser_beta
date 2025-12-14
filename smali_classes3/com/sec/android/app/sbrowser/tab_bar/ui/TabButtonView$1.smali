.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->k(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->m(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->k(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->h(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->m(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->h(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->m(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
