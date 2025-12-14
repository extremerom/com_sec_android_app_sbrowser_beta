.class Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "si__UrlBar"

    const-string v1, "Direct writing finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsDirectWritingStarted:Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->e(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Landroid/text/TextWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->c(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;->onUrlBarTextChanged(Ljava/lang/String;)V

    return-void
.end method
