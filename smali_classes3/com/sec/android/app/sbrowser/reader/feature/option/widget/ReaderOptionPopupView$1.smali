.class Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->d(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;)Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;->onShrinkButtonClick()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->d(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;)Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;->onEnlargeButtonClick()V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->d(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;)Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;->onThemeButtonClick(I)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->d(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;)Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;->onThemeButtonClick(I)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->d(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;)Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;->onThemeButtonClick(I)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->hideReaderOptionPopup()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b09bc
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
