.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->setScrollTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

.field final synthetic val$scrollDistance:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;->val$scrollDistance:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;->lambda$run$0(I)V

    return-void
.end method

.method private synthetic lambda$run$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->s(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$2;->val$scrollDistance:I

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/f;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/f;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
