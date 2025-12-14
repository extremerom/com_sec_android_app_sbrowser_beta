.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->D(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->u(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->E(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Ljava/lang/CharSequence;)V

    return-void
.end method
