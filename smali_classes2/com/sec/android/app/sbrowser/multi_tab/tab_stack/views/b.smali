.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/b;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/b;->b:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/b;->c:I

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClicked(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/b;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/b;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/b;->b:I

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;IILjava/lang/String;I)V

    return-void
.end method
