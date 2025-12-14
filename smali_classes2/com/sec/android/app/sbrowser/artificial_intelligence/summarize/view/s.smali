.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->c:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageButton;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;Landroid/widget/ImageButton;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->j(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->c:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->i(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/s;->c:Landroid/view/View;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryCopier;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
