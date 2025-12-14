.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onCreateView(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;->val$listener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;->lambda$afterTextChanged$0(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->f(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$1;->val$listener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/i;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
