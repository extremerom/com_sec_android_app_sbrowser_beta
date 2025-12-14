.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onClose(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->l(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4072"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
