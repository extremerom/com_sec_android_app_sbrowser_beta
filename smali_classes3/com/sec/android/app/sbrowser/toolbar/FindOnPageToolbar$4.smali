.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->H(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/DragEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->u(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onFinishFindOnPage()V

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const-string p2, "FindOnPageToolbar"

    if-nez p1, :cond_3

    const-string p0, "No clip data"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p0, "No drag item"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->p(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
