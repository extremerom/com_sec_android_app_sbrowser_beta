.class Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/omnibox/UrlBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isMousePasteUrlBar()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->h(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->b(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->g(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isMouseClickRightButton()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
